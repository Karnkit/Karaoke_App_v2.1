import 'package:flutter/material.dart';
import '../pages/forListening/test_songlist.dart';
import 'dart:convert';

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
    "songs": []
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
    "songs": []
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
    "songs": []
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
    "songs": []
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
    "songs": []
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
    "songs": []
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
    "songs": []
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
        "https://firebasestorage.googleapis.com/v0/b/karaoke-7439f.appspot.com/o/Ed%20Sheeran%20-%20Shape%20of%20You%20%5BOfficial%20Video%5D.mp3?alt=media&token=f5b4140c-28b5-4d4f-92af-e6fed94aafe3",
    "songs": []
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
    "songs": []
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
    "songs": []
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
    "songs": []
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
    "songs": []
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
    "songs": []
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
    "songs": []
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
    "songs": []
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
    "songs": []
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
    "songs": []
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
    "songs": []
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
    "songs": []
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
    "songs": []
  }
];
