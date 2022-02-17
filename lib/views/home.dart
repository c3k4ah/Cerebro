// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:note_book/views/categories.dart';
import 'package:note_book/views/note_page.dart';
import 'package:note_book/views/widgets/colors.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  final _pageActu = [HomeScreen(), Categorie(), NotePage()];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _pageActu[_selectedIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Colors.black,
            unselectedWidgetColor: Colors.white,
            textTheme: Theme.of(context)
                .textTheme
                .copyWith(caption: TextStyle(color: Colors.grey))),
        child: Container(
          height: Get.height * .1,
          decoration: BoxDecoration(),
          child: BottomNavigationBar(
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.amber[800],
              onTap: _onItemTapped,
              type: BottomNavigationBarType.fixed,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(
                    Iconsax.home,
                    color: Colors.white,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Iconsax.archive_book4,
                    color: Colors.white,
                  ),
                  label: 'Categories',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Iconsax.setting_34,
                    color: Colors.white,
                  ),
                  label: 'Settings',
                ),
              ]),
        ),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int? groupValue = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25))),
      child: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Cérebro",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {}, icon: Icon(Iconsax.search_favorite)),
                    IconButton(
                        onPressed: () {
                          Get.toNamed('/create');
                        },
                        icon: Icon(Iconsax.add_square4))
                  ],
                )
              ],
            ),
          ),
          Container(
            width: Get.width,
            padding: const EdgeInsets.all(10),
            child: CupertinoSlidingSegmentedControl<int>(
              backgroundColor: CupertinoColors.black,
              thumbColor: CupertinoColors.activeOrange,
              padding: const EdgeInsets.all(8),
              groupValue: groupValue,
              children: {
                0: takeText("Note"),
                1: takeText("Hightlines"),
                2: takeText("Favorites"),
              },
              onValueChanged: (value) {
                setState(() {
                  groupValue = value;
                });
              },
            ),
          ),
          Container(
            width: Get.width,
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "List notes",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  child: Row(
                    children: const [
                      Text("All list"),
                      Icon(
                        Iconsax.sort,
                        size: 17,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Get.toNamed('/read');
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              height: Get.height * .27,
              decoration: BoxDecoration(
                  color: blueAccent,
                  border: Border.all(width: 1.5, color: Colors.orange),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 35,
                      height: 25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(14),
                              bottomLeft: Radius.circular(10)),
                          color: Colors.orange),
                      child: Center(
                        child: Text(
                          "New",
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12),
                    child: Text(
                      "Comment déssiner un wireframe profesionnelle ?",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Si vous êtes déjà familier avec le vocabulaire de l’UX design, vous savez certainement ce qu’est un wireframe et son utilité. Les outils de wireframe permettent de créer la maquette du design de votre site internet. Ce procédé est extrêmement utile pour bâtir le squelette de votre futur site et donner de précieuses indications au webdesigner qui devra s’en occuper..Pour élaborer ces maquettes et bien délimiter chaque zone de vos pages, il existe plusieurs outils wireframe avec différentes fonctionnalités pour vous aider. En voici 17 à utiliser sans modération pour créer vos maquettes et faciliter les échanges avec votre prestataire.",
                        maxLines: 4,
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                            overflow: TextOverflow.ellipsis),
                      ),
                    ),
                  ),
                  Container(
                    width: Get.width,
                    margin: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Design",
                              style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Wireframe",
                              style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          child: Text(
                            "2022/01/25",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontWeight: FontWeight.normal),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            height: Get.height * .14,
            decoration: BoxDecoration(
                color: pink, borderRadius: BorderRadius.circular(15)),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Text(
                    "Chemin vers le succes rapidement",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        overflow: TextOverflow.ellipsis),
                  ),
                ),
                SizedBox(
                  width: Get.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Text(
                            "Succes",
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "facile",
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        child: Text(
                          "2022/08/5",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.normal),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            height: Get.height * .14,
            decoration: BoxDecoration(
                color: green, borderRadius: BorderRadius.circular(15)),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Text(
                    "Comment déssiner un wireframe profesionnelle ?",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        overflow: TextOverflow.ellipsis),
                  ),
                ),
                SizedBox(
                  width: Get.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Text(
                            "Design",
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Wireframe",
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        child: Text(
                          "2022/01/25",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.normal),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            height: Get.height * .14,
            decoration: BoxDecoration(
                color: green, borderRadius: BorderRadius.circular(15)),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Text(
                    "Comment déssiner un wireframe profesionnelle ?",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        overflow: TextOverflow.ellipsis),
                  ),
                ),
                SizedBox(
                  width: Get.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Text(
                            "Design",
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Wireframe",
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        child: Text(
                          "2022/01/25",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.normal),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget takeText(String text) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(fontSize: 22, color: Colors.white),
    );
  }
}
