import 'package:flutter/material.dart';
import 'package:podcast_ui/AuthorScreen.dart';
import 'package:podcast_ui/BrowseCategories.dart';
import 'package:podcast_ui/EpisodesCategory.dart';
import 'package:podcast_ui/Login.dart';
import 'package:podcast_ui/MainScreen.dart';
import 'package:podcast_ui/PodCastCategory.dart';
import 'package:podcast_ui/RegistrationPage.dart';
import 'package:podcast_ui/SplashScreen.dart';
import 'package:podcast_ui/authorsCategory.dart';
import 'package:podcast_ui/dummyBrowseCategories.dart';
import 'package:podcast_ui/menuScreen.dart';
import 'package:podcast_ui/podcastScreen.dart';
import 'package:podcast_ui/topicsBrowse.dart';

void main() => runApp (MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MySplashScreen(),
    );
  }
}