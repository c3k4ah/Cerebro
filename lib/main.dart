import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_book/views/categories.dart';
import 'package:note_book/views/home.dart';
import 'package:note_book/views/new_note.dart';
import 'package:note_book/views/note_page.dart';
import 'package:note_book/views/page_lecture.dart';
import 'package:note_book/views/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Cérebro',
      theme: ThemeData(fontFamily: "Cream"),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/categories': (context) => const Categorie(),
        '/note': (context) => const NotePage(),
        '/splash': (context) => const Splash(),
        '/create': (context) => const NewNote(),
        '/read': (context) => const ReadPage(),
      },
    );
  }
}
