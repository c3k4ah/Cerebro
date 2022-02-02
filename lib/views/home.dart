// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:note_book/views/widgets/colors.dart';
import 'package:note_book/views/widgets/favorites_btt.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                          onPressed: () {},
                          icon: Icon(Iconsax.search_favorite)),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Iconsax.direct_notification))
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: Get.width,
              height: 35,
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10)),
              child: CategoriesList(),
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
            Container(
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
            Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              height: Get.height * .14,
              decoration: BoxDecoration(
                  color: pink, borderRadius: BorderRadius.circular(15)),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "Comment déssiner un wireframe profesionnelle ?",
                    style: TextStyle(fontSize: 15, color: Colors.black),
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
                children: [
                  Text(
                    "Comment déssiner un wireframe profesionnelle ?",
                    style: TextStyle(fontSize: 15, color: Colors.black),
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'add',
        child: const Icon(
          Iconsax.add4,
          size: 50,
        ),
      ),
    );
  }
}
