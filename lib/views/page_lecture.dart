// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:note_book/views/widgets/colors.dart';

class ReadPage extends StatelessWidget {
  const ReadPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String lorem =
        "Contrairement à une opinion répandue, le Lorem Ipsum n'est pas simplement du texte aléatoire. Il trouve ses racines dans une oeuvre de la littérature latine classique datant de 45 av. J.-C., le rendant vieux de 2000 ans. Un professeur du Hampden-Sydney College, en Virginie, s'est intéressé à un des mots latins les plus obscurs, consectetur, extrait d'un passage du Lorem Ipsum, et en étudiant tous les usages de ce mot dans la littérature classique, découvrit la source incontestable du Lorem Ipsum. Il provient en fait des sections 1.10.32 et 1.10.33 du Des Suprêmes Biens et des Suprêmes Maux) de Cicéron. Cet ouvrage, très populaire pendant la Renaissance, est un traité sur la théorie de l'éthique. Les premières lignes du Lorem Ipsum,  proviennent de la section 1.10.32.L'extrait standard de Lorem Ipsum utilisé depuis le XVIè siècle est reproduit ci-dessous pour les curieux. Les sections 1.10.32 et 1.10.33 du de Cicéron sont aussi reproduites dans leur version originale, accompagnée de la traduction anglaise de H. Rackham (1914).";

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Iconsax.back_square,
              color: Colors.green,
              size: 27,
            )),
        title: Text(
          "Titre du livre",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.black,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Iconsax.edit,
                color: Colors.blue,
                size: 27,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Iconsax.trash,
                color: Colors.redAccent,
                size: 27,
              )),
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40))),
        child: Stack(
          children: [
            Expanded(
              child: Flex(direction: Axis.vertical, children: [
                Container(
                  padding: EdgeInsets.all(15),
                  width: Get.width,
                  height: Get.height * .8,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                          lorem + lorem + lorem,
                          overflow: TextOverflow.fade,
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                        SizedBox(
                          height: Get.height * .05,
                        )
                      ],
                    ),
                  ),
                ),
              ]),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 7),
                  margin: EdgeInsets.symmetric(vertical: 5),
                  width: Get.width * .8,
                  height: 50,
                  decoration: BoxDecoration(
                      color: grisSombre,
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (BuildContext context, int index) {
                              return const Center(
                                child: Text("Motivation, ",
                                    style: TextStyle(
                                      color: Colors.white,
                                    )),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
