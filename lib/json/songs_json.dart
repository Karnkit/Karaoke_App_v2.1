import 'package:flutter/material.dart';

List song_type_1 = [
  "Music",
  "Rock",
  "Soul",
  "Classic",
  "Pop",
  "R&B",
];
List song_type_2 = [
  "Podcasts",
  "Made For You",
  "Charts",
  "New Releases",
  "Discover",
  "Concerts",
];
List songs = [
  {
    "img":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-real-one.appspot.com/o/pics%2FDANCE%20MONKEY.jpg?alt=media&token=7ab0661c-4ee2-46c6-ad51-262e7d1a77da",
    "title": "DANCE MONKEY",
    "description": "Feel good with this positively timeless playlist!",
    "song_count": "100 songs",
    "date": "about 19 hr",
    "color": Color(0xFFf69129),
    "song_url":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-7439f.appspot.com/o/Ed%20Sheeran%20-%20Shape%20of%20You%20%5BOfficial%20Video%5D.mp3?alt=media&token=f5b4140c-28b5-4d4f-92af-e6fed94aafe3",
    "songs": [],
    "intruments":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-real-one.appspot.com/o/intruments%2F1%20DANCE%20MONKEY%20-%20ORIGINAL%20%5Bmusic%5D.wav?alt=media&token=25eeeb4d-8ad3-4139-80e9-54ee625e09cb",
  },
  {
    "img":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-real-one.appspot.com/o/pics%2FFADED.jpg?alt=media&token=434ea611-5661-4196-873c-eab38047fb36",
    "title": "FADED",
    "description": "Relax and indulge with beautiful piano pieces",
    "song_count": "324 songs",
    "date": "about 14 hr",
    "color": Color(0xFF64849c),
    "song_url":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-7439f.appspot.com/o/Ed%20Sheeran%20-%20Shape%20of%20You%20%5BOfficial%20Video%5D.mp3?alt=media&token=f5b4140c-28b5-4d4f-92af-e6fed94aafe3",
    "songs": [],
    "intruments":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-real-one.appspot.com/o/intruments%2F2%20FADED%20-%20ORIGINAL%20%5Bmusic%5D.wav?alt=media&token=f18a9ccf-39d6-480c-b73d-87cbb5c5afdd",
  },
  {
    "img":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-real-one.appspot.com/o/pics%2FSOMETHING%20JUST%20LIKE%20THIS.jpg?alt=media&token=f2f63d05-7d75-47f5-a8f6-2ebe5465ccda",
    "title": "SOMETHING JUST LIKE THIS",
    "description": "Keep calm and focus with ambient and post-rock music.",
    "song_count": "195 songs",
    "date": "about 10 hr",
    "color": Color(0xFF58546c),
    "song_url":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-7439f.appspot.com/o/Ed%20Sheeran%20-%20Shape%20of%20You%20%5BOfficial%20Video%5D.mp3?alt=media&token=f5b4140c-28b5-4d4f-92af-e6fed94aafe3",
    "songs": [],
    "intruments":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-real-one.appspot.com/o/intruments%2F3%20SOMETHING%20JUST%20LIKE%20THIS%20-%20ORIGINAL%20%5Bmusic%5D.wav?alt=media&token=9eea175f-9e21-49e4-b862-ed94eeac4f80",
  },
  {
    "img":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-real-one.appspot.com/o/pics%2FALL%20WE%20KNOW.jpg?alt=media&token=7ecc6087-fe18-4434-aa1d-0a479fe7cc89",
    "title": "ALL WE KNOW",
    "description": "Beats to relax, study and focus.",
    "song_count": "599 songs",
    "date": "about 21 hr",
    "color": Color(0xFFbad6ec),
    "song_url":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-7439f.appspot.com/o/Ed%20Sheeran%20-%20Shape%20of%20You%20%5BOfficial%20Video%5D.mp3?alt=media&token=f5b4140c-28b5-4d4f-92af-e6fed94aafe3",
    "songs": [],
    "intruments":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-real-one.appspot.com/o/intruments%2F5%20ALL%20WE%20KNOW%20-%20ORIGINAL%20%5Bmusic%5D.wav?alt=media&token=a59ab816-dba7-478b-aed7-9b043f7566a7",
  },
  {
    "img":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-real-one.appspot.com/o/pics%2FCHEAP%20THRILLS.jpg?alt=media&token=556a7d71-af45-4839-82a8-d8449b2c0faf",
    "title": "CHEAP THRILLS",
    "description": "The perfect study beats, twenty four seven.",
    "song_count": "317 songs",
    "date": "about 11 hr",
    "color": Color(0xFF93689a),
    "song_url":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-7439f.appspot.com/o/Ed%20Sheeran%20-%20Shape%20of%20You%20%5BOfficial%20Video%5D.mp3?alt=media&token=f5b4140c-28b5-4d4f-92af-e6fed94aafe3",
    "songs": [],
    "intruments":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-real-one.appspot.com/o/intruments%2F6%20CHEAP%20THRILLS%20-%20ORIGINAL%20%5Bmusic%5D.wav?alt=media&token=2a409eec-f5ea-4356-b0e7-a96d9d87a206",
  },
  {
    "img":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-real-one.appspot.com/o/pics%2FTOO%20GOOD%20AT%20GOOD%20BYE.jpg?alt=media&token=b852470c-0a21-4f0b-9fe4-3abc27e35668",
    "title": "TOO GOOD AT GOOD BYE",
    "description": "Kick back to the best new and recent chill tunes.",
    "song_count": "130 songs",
    "date": "about 7 hr",
    "color": Color(0xFFa4c4d3),
    "song_url":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-7439f.appspot.com/o/Ed%20Sheeran%20-%20Shape%20of%20You%20%5BOfficial%20Video%5D.mp3?alt=media&token=f5b4140c-28b5-4d4f-92af-e6fed94aafe3",
    "songs": [],
    "intruments":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-real-one.appspot.com/o/intruments%2F7%20TOO%20GOOD%20AT%20GOOD%20BYE%20-%20ORIGINAL%20%5Bmusic%5D.wav?alt=media&token=e257fe04-d062-4bd9-850c-0c2823272cb6",
  },
  {
    "img":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-real-one.appspot.com/o/pics%2FGIRLS%20LIKE%20YOU.png?alt=media&token=2b8f4e24-e46e-4ead-9a19-5a11e54b46bf",
    "title": "GIRLS LIKE YOU",
    "description": "Beautifully dark, dramatic tracks.",
    "song_count": "50 songs",
    "date": "about 17 hr",
    "color": Color.fromARGB(255, 0, 0, 0),
    "song_url":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-7439f.appspot.com/o/Ed%20Sheeran%20-%20Shape%20of%20You%20%5BOfficial%20Video%5D.mp3?alt=media&token=f5b4140c-28b5-4d4f-92af-e6fed94aafe3",
    "songs": [],
    "intruments":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-real-one.appspot.com/o/intruments%2F9%20GIRLS%20LIKE%20YOU%20-%20ORIGINAL%20%5Bmusic%5D.wav?alt=media&token=4b72a2e0-f4c7-42cd-95cc-cbecb0e4fc28",
  },
  {
    "img":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-real-one.appspot.com/o/pics%2F7%20RINGS.jpg?alt=media&token=85397f15-cc32-4edc-bafd-87d05cbb4bb1",
    "title": "7 RINGS",
    "description": "Positive piano music",
    "song_count": "69 songs",
    "date": "2 hr 14 min",
    "color": Color(0xFFa4c1ad),
    "song_url":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-real-one.appspot.com/o/10%207%20RINGS%20-%20ORIGINAL.mp3?alt=media&token=dc866718-fd18-47b2-a625-59feb622bf5a",
    "songs": [],
    "intruments":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-real-one.appspot.com/o/intruments%2F10%207%20RINGS%20-%20ORIGINAL%20%5Bmusic%5D.wav?alt=media&token=d0ee8fda-2333-40ff-94f8-e14f3c9e4e54",
  },
  {
    "img":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-real-one.appspot.com/o/pics%2FSHALLOW.jpg?alt=media&token=3e4224f8-e005-4bd8-a32b-b6af48cfab40",
    "title": "SHALLOW",
    "description": "Beautiful songs to break your heart...",
    "song_count": "60 songs",
    "date": "3 hr 25 min",
    "color": Color(0xFFd9e3ec),
    "song_url":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-7439f.appspot.com/o/Ed%20Sheeran%20-%20Shape%20of%20You%20%5BOfficial%20Video%5D.mp3?alt=media&token=f5b4140c-28b5-4d4f-92af-e6fed94aafe3",
    "songs": [],
    "intruments":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-real-one.appspot.com/o/intruments%2F11%20SHALLOW%20-%20ORIGINAL%20%5Bmusic%5D.wav?alt=media&token=e707f77f-d4a3-40d1-b2e0-261029fada20",
  },
  {
    "img":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-real-one.appspot.com/o/pics%2F2002.jpg?alt=media&token=72fcfce9-c028-4508-9a97-11d96d774005",
    "title": "2002",
    "description": "Get happy with today's dose of feel-good songs",
    "song_count": "75 songs",
    "date": "3 hr 56 min",
    "color": Color(0xFF4e6171),
    "song_url":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-7439f.appspot.com/o/Ed%20Sheeran%20-%20Shape%20of%20You%20%5BOfficial%20Video%5D.mp3?alt=media&token=f5b4140c-28b5-4d4f-92af-e6fed94aafe3",
    "songs": [],
    "intruments":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-real-one.appspot.com/o/intruments%2F12%202002%20-%20ORIGINAL%20%5Bmusic%5D.wav?alt=media&token=d28972d3-8e83-4b04-9e6e-895b7b74d0a4",
  },
  {
    "img":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-real-one.appspot.com/o/pics%2FLOVE%20ME%20LIKE%20YOU%20DO.jpg?alt=media&token=2bb7df96-5802-48e2-be8e-fd4808392393",
    "title": "LOVE ME LIKE YOU DO",
    "description": "Feel good with this positively timeless playlist!",
    "song_count": "100 songs",
    "date": "about 19 hr",
    "color": Color(0xFFf69129),
    "song_url":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-7439f.appspot.com/o/Ed%20Sheeran%20-%20Shape%20of%20You%20%5BOfficial%20Video%5D.mp3?alt=media&token=f5b4140c-28b5-4d4f-92af-e6fed94aafe3",
    "songs": [],
    "intruments":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-real-one.appspot.com/o/intruments%2F13%20LOVE%20ME%20LIKE%20YOU%20DO%20-%20ORIGINAL%20%5Bmusic%5D.wav?alt=media&token=488db719-dabe-478b-90b2-b6d6114d8924",
  },
  {
    "img":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-real-one.appspot.com/o/pics%2FSHE%20WILL%20BE%20LOVED.jpg?alt=media&token=bf43912a-e9f7-45bd-9b41-0c0a1b461643",
    "title": "SHE WILL BE LOVED",
    "description": "Relax and indulge with beautiful piano pieces",
    "song_count": "324 songs",
    "date": "about 14 hr",
    "color": Color(0xFF64849c),
    "song_url":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-7439f.appspot.com/o/Ed%20Sheeran%20-%20Shape%20of%20You%20%5BOfficial%20Video%5D.mp3?alt=media&token=f5b4140c-28b5-4d4f-92af-e6fed94aafe3",
    "songs": [],
    "intruments":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-real-one.appspot.com/o/intruments%2F15%20SHE%20WILL%20BE%20LOVED%20-%20ORIGINAL%20%5Bmusic%5D.wav?alt=media&token=ad466325-d377-4056-9fea-908cdaca1fc2",
  },
  {
    "img":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-real-one.appspot.com/o/pics%2FDON'T%20LET%20ME%20DOWN.jpg?alt=media&token=2f0f5350-6a70-4ac4-af3d-77d063be4fd2",
    "title": "DON'T LET ME DOWN",
    "description": "Keep calm and focus with ambient and post-rock music.",
    "song_count": "195 songs",
    "date": "about 10 hr",
    "color": Color(0xFF58546c),
    "song_url":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-7439f.appspot.com/o/Ed%20Sheeran%20-%20Shape%20of%20You%20%5BOfficial%20Video%5D.mp3?alt=media&token=f5b4140c-28b5-4d4f-92af-e6fed94aafe3",
    "songs": [],
    "intruments":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-real-one.appspot.com/o/intruments%2F16%20DONT%20LET%20ME%20DOWN%20-%20ORIGINAL%20%5Bmusic%5D.wav?alt=media&token=ad307b23-044d-4a55-906f-63bb355a24d6",
  },
  {
    "img":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-real-one.appspot.com/o/pics%2FWE%20DON'T%20TALK%20ANYMORE.jpg?alt=media&token=fa221539-1d50-4cf6-9015-c489c16ec2a7",
    "title": "WE DON'T TALK ANYMORE",
    "description": "Beats to relax, study and focus.",
    "song_count": "599 songs",
    "date": "about 21 hr",
    "color": Color(0xFFbad6ec),
    "song_url":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-7439f.appspot.com/o/Ed%20Sheeran%20-%20Shape%20of%20You%20%5BOfficial%20Video%5D.mp3?alt=media&token=f5b4140c-28b5-4d4f-92af-e6fed94aafe3",
    "songs": [],
    "intruments":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-real-one.appspot.com/o/intruments%2F18%20WE%20DONT%20TALK%20ANYMORE%20-%20ORIGINAL%20%5Bmusic%5D.wav?alt=media&token=c60481f7-98ea-4778-a2a7-13288f79e731",
  },
  {
    "img":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-real-one.appspot.com/o/pics%2FLET%20HER%20GO.jpg?alt=media&token=71553e88-6cc8-444f-ac04-ca0f1dfea1bb",
    "title": "LET HER GO",
    "description": "The perfect study beats, twenty four seven.",
    "song_count": "317 songs",
    "date": "about 11 hr",
    "color": Color(0xFF93689a),
    "song_url":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-7439f.appspot.com/o/Ed%20Sheeran%20-%20Shape%20of%20You%20%5BOfficial%20Video%5D.mp3?alt=media&token=f5b4140c-28b5-4d4f-92af-e6fed94aafe3",
    "songs": [],
    "intruments":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-real-one.appspot.com/o/intruments%2F19%20LET%20HER%20GO%20-%20ORIGINAL%20%5Bmusic%5D.wav?alt=media&token=f035933e-632f-4f55-92ec-2ac6fcb48a76",
  },
  {
    "img":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-real-one.appspot.com/o/pics%2FSEE%20YOU%20AGAIN.jpg?alt=media&token=fe45620c-7849-47e1-ad80-e62ee77e345c",
    "title": "SEE YOU AGAIN",
    "description": "Kick back to the best new and recent chill tunes.",
    "song_count": "130 songs",
    "date": "about 7 hr",
    "color": Color(0xFFa4c4d3),
    "song_url":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-7439f.appspot.com/o/Ed%20Sheeran%20-%20Shape%20of%20You%20%5BOfficial%20Video%5D.mp3?alt=media&token=f5b4140c-28b5-4d4f-92af-e6fed94aafe3",
    "songs": [],
    "intruments":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-real-one.appspot.com/o/intruments%2F20%20SEE%20YOU%20AGAIN%20-%20ORIGINAL%20%5Bmusic%5D.wav?alt=media&token=0d62c133-8e9a-41fc-abaa-35af0a6dd7c6",
  },
  {
    "img":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-real-one.appspot.com/o/pics%2FNEW%20RULES.jpg?alt=media&token=b0503fa7-4971-4c78-b2fd-2350d57d67b7",
    "title": "NEW RULES",
    "description": "Beautifully dark, dramatic tracks.",
    "song_count": "50 songs",
    "date": "about 17 hr",
    "color": Color.fromARGB(255, 0, 0, 0),
    "song_url":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-7439f.appspot.com/o/Ed%20Sheeran%20-%20Shape%20of%20You%20%5BOfficial%20Video%5D.mp3?alt=media&token=f5b4140c-28b5-4d4f-92af-e6fed94aafe3",
    "songs": [],
    "intruments":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-real-one.appspot.com/o/intruments%2F21%20NEW%20RULES%20-%20ORIGINAL%20%5Bmusic%5D.wav?alt=media&token=66864887-46f4-468f-a735-9402fd130745",
  },
  {
    "img":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-real-one.appspot.com/o/pics%2FSWEET%20BUT%20PSYCHO.jpg?alt=media&token=876933f8-ac60-420c-a4ee-05a765c94ef4",
    "title": "SWEET BUT PSYCHO",
    "description": "Positive piano music",
    "song_count": "69 songs",
    "date": "2 hr 14 min",
    "color": Color(0xFFa4c1ad),
    "song_url":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-7439f.appspot.com/o/Ed%20Sheeran%20-%20Shape%20of%20You%20%5BOfficial%20Video%5D.mp3?alt=media&token=f5b4140c-28b5-4d4f-92af-e6fed94aafe3",
    "songs": [],
    "intruments":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-real-one.appspot.com/o/intruments%2F22%20SWEET%20BUT%20PSYCHO%20-%20ORIGINAL%20%5Bmusic%5D.wav?alt=media&token=0bedb3c3-3010-4cfb-995b-863c58aaaa4f",
  },
  {
    "img":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-real-one.appspot.com/o/pics%2FWHEN%20I%20WAS%20YOUR%20MAN.jpg?alt=media&token=d143cd21-18e7-48e9-9765-3a8f6079da8f",
    "title": "WHEN I WAS YOUR MAN",
    "description": "Beautiful songs to break your heart...",
    "song_count": "60 songs",
    "date": "3 hr 25 min",
    "color": Color(0xFFd9e3ec),
    "song_url":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-7439f.appspot.com/o/Ed%20Sheeran%20-%20Shape%20of%20You%20%5BOfficial%20Video%5D.mp3?alt=media&token=f5b4140c-28b5-4d4f-92af-e6fed94aafe3",
    "songs": [],
    "intruments":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-real-one.appspot.com/o/intruments%2F25%20WHEN%20I%20WAS%20YOUR%20MAN%20-%20ORIGINAL%20%5Bmusic%5D.wav?alt=media&token=e1c95b9d-d119-4d34-9b2e-77dce98cc58a",
  },
  {
    "img":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-real-one.appspot.com/o/pics%2FTHINKING%20OUT%20LOUD.jpg?alt=media&token=ffd4e014-ac53-4e05-b00e-4eb492e9b20c",
    "title": "THINKING OUT LOUD",
    "description": "Get happy with today's dose of feel-good songs",
    "song_count": "75 songs",
    "date": "3 hr 56 min",
    "color": Color(0xFF4e6171),
    "song_url":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-7439f.appspot.com/o/Ed%20Sheeran%20-%20Shape%20of%20You%20%5BOfficial%20Video%5D.mp3?alt=media&token=f5b4140c-28b5-4d4f-92af-e6fed94aafe3",
    "songs": [],
    "intruments":
        "https://firebasestorage.googleapis.com/v0/b/karaoke-real-one.appspot.com/o/intruments%2F26%20THINKING%20OUT%20LOUD%20-%20ORIGINAL%20%5Bmusic%5D.wav?alt=media&token=b7fe073d-1895-479c-96fd-4d8915b5709c",
  }
];
