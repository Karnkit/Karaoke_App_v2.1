import 'dart:ui';

import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lyric/lyrics_reader.dart';

import 'karaoke_seekbar.dart';

import 'const.dart';

import 'package:flutter/foundation.dart';
import 'package:record/record.dart';

import 'flask_connect.dart';

import 'package:rxdart/rxdart.dart' as rxdart;

flask_connect flask = new flask_connect();

// void main() {
//   runApp(MaterialApp(home: Singing(
//     song_url: "https://firebasestorage.googleapis.com/v0/b/karaoke-7439f.appspot.com/o/Ed%20Sheeran%20-%20Shape%20of%20You%20%5BOfficial%20Video%5D.mp3?alt=media&token=f5b4140c-28b5-4d4f-92af-e6fed94aafe3",
//     song_covered: "https://korism.com/_upload/news/2021/10/145379/163471130613.jpg"
//     )));
// }

class Singing extends StatefulWidget {
  final String song_url;
  final String song_covered;
  const Singing({
    Key? key,
    required this.song_url,
    required this.song_covered,
    }) : super(key: key);

  @override
  _SingingState createState() => _SingingState();
}

class _SingingState extends State<Singing> with SingleTickerProviderStateMixin {
  AudioPlayer? audioPlayer = AudioPlayer();
  int playProgress = 0;
  double max_value = 211658;
  bool isTap = false;

  String? audioPath;

  int _recordDuration = 0;
  Timer? _timer;
  final _audioRecorder = Record();
  StreamSubscription<RecordState>? _recordSub;
  RecordState _recordState = RecordState.stop;
  StreamSubscription<Amplitude>? _amplitudeSub;
  Amplitude? _amplitude;
  

  @override
  void initState() {
    _recordSub = _audioRecorder.onStateChanged().listen((recordState) {
      setState(() => _recordState = recordState);
    });

    _amplitudeSub = _audioRecorder
        .onAmplitudeChanged(const Duration(milliseconds: 300))
        .listen((amp) => setState(() => _amplitude = amp));

    super.initState();
  }

  Future<void> _start() async {
    try {
      if (await _audioRecorder.hasPermission()) {
        // We don't do anything with this but printing
        final isSupported = await _audioRecorder.isEncoderSupported(
          AudioEncoder.aacLc,
        );
        if (kDebugMode) {
          print('${AudioEncoder.aacLc.name} supported: $isSupported');
        }

        // final devs = await _audioRecorder.listInputDevices();
        // final isRecording = await _audioRecorder.isRecording();

        await _audioRecorder.start();
        _recordDuration = 0;

        _startTimer();
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  Future<String> _stop() async {
    _timer?.cancel();
    _recordDuration = 0;

    final path = await _audioRecorder.stop();

    return path.toString();
  }

  Future<void> _pause() async {
    _timer?.cancel();
    await _audioRecorder.pause();
  }

  Future<void> _resume() async {
    _startTimer();
    await _audioRecorder.resume();
  }
    String _formatNumber(int number) {
    String numberStr = number.toString();
    if (number < 10) {
      numberStr = '0' + numberStr;
    }

    return numberStr;
  }

  void _startTimer() {
    _timer?.cancel();

    _timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
      setState(() => _recordDuration++);
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _recordSub?.cancel();
    _amplitudeSub?.cancel();
    _audioRecorder.dispose();
    super.dispose();
  }

  bool useEnhancedLrc = false;
  var lyricModel = LyricsModelBuilder.create()
      .bindLyricToMain(normalLyric)
      // .bindLyricToExt(transLyric)
      .getModel();

  var lyricUI = UINetease(defaultSize: 30,lineGap: 30,highlight: false);

  Stream<SeekBarData> get _seekBarDataSteam =>
  rxdart.Rx.combineLatest2<Duration, Duration, SeekBarData>(
    audioPlayer!.onPositionChanged,
    audioPlayer!.onDurationChanged,
    (Duration position, Duration? duration,){
      return SeekBarData(
        position, 
        duration ?? Duration.zero
      );
    }
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: buildBody(),
    );
  }

  bool isPlaying = false;
  bool firstTimePlay = true;

  Widget buildBody(){
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.network(
          widget.song_covered,
          fit: BoxFit.cover,
        ),
        ShaderMask(
          shaderCallback: (rect){
            return LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.5),
                Colors.white.withOpacity(0.0),
              ],
              stops: const [
                0.0,
                0.4,
                0.6
              ]
            ).createShader(rect);
          },
          blendMode: BlendMode.dstOut,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.8),
                  Colors.black,
                ]
              )
            ),
          ),
        ),
        Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              color: Colors.black.withOpacity(0.3),
            ),
          ),
        ),
        buildReaderWidget(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StreamBuilder<SeekBarData>(
                stream: _seekBarDataSteam,
                builder: 
                (context, snapshot){
                  final positionData = snapshot.data;
                  return SeekBar(
                    position: positionData?.position ?? Duration.zero, 
                    duration: positionData?.duration ?? Duration.zero,
                    onChangedEnd: audioPlayer!.seek,
                  );
                }),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                CircleAvatar(
                    radius: 29,
                    backgroundColor: Colors.white.withOpacity(0.0),
                    child: IconButton(
                      icon: Icon(
                        Icons.pause,
                        color: Colors.white,
                        size: 30,),
                      onPressed: () async {
                        if(isPlaying == false || firstTimePlay == true) return;
                        audioPlayer?.pause();
                        setState(() {
                          isPlaying = false;
                          _pause();
                        });
                      },
                    ),
                ),
                Container(
                  width: 10,
                ),
                CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white.withOpacity(0.0),
                    child: 
                      CircleAvatar(
                        backgroundColor: Colors.white.withOpacity(0.0),
                        radius: 29,
                        child: IconButton(
                          icon: Icon(
                          Icons.mic,
                          color: Color.fromARGB(255, 255, 255, 255),
                          size: 30,),
                          onPressed: () async {
                            if (isPlaying == false && firstTimePlay == true) {
                                audioPlayer = AudioPlayer()..play(UrlSource(widget.song_url));
                                setState(() {
                                  playing = true;
                                  isPlaying = true;
                                  firstTimePlay = false;
                                  _start();
                                });
                                audioPlayer?.onDurationChanged.listen((Duration event) {
                                  setState(() {
                                    max_value = event.inMilliseconds.toDouble();
                                  });
                                });
                                audioPlayer?.onPositionChanged.listen((Duration event) {
                                  if (isTap) return;
                                  setState(() {
                                    playProgress = event.inMilliseconds;
                                  });
                                });
                                audioPlayer?.onPlayerStateChanged.listen((PlayerState state) {
                                  setState(() {
                                    playing = state == PlayerState.playing;
                                  });
                                });
                                audioPlayer?.onPlayerComplete.listen((event) {
                                  setState(() {
                                    flask.upload(_stop());
                                  });
                                });
                              } else {
                                audioPlayer?.resume();
                                setState((){
                                  isPlaying = true;
                                  _resume();
                                });
                              }
                          }),
                        ),
                    ),
                    Container(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 29,
                      backgroundColor: Colors.white.withOpacity(0.0),
                      child: IconButton(
                        icon: Icon(
                          Icons.stop,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: () async {
                          if(isPlaying == false || firstTimePlay == true) return;
                          audioPlayer?.stop();
                          audioPlayer = AudioPlayer();
                          setState(() {
                            isPlaying = false;
                            firstTimePlay = true;
                            _stop();
                          });
                        }),
                    ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

  var lyricPadding = 40.0;

  Stack buildReaderWidget() {
    return Stack(
      children: [
        //...buildReaderBackground(),
        LyricsReader(
          padding: EdgeInsets.symmetric(horizontal: lyricPadding),
          model: lyricModel,
          position: playProgress,
          lyricUi: lyricUI,
          playing: playing,
          size: Size(double.infinity, MediaQuery.of(context).size.height *3/4),
          emptyBuilder: () => Center(
            child: Text(
              "No lyrics",
              style: lyricUI.getOtherMainTextStyle(),
            ),
          ),
        )
      ],
    );
  }

  var playing = false;

}