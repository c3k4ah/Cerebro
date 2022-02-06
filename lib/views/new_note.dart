// ignore_for_file: unrelated_type_equality_checks, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:note_book/views/widgets/colors.dart';

class NewNote extends StatefulWidget {
  const NewNote({Key? key}) : super(key: key);
//A RETENIR !! Flexible(), Expanded() n'ont que 3 parents possible
//qui sont :Row() dans le cas horizontal,Column() dans le cas vertical ,Flex() peut prendre les deux

  @override
  State<NewNote> createState() => _NewNoteState();
}

class _NewNoteState extends State<NewNote> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      iconSize: 30,
                      onPressed: () {},
                      icon: const Icon(
                        Iconsax.trush_square,
                        color: Colors.red,
                      )),
                  const Text(
                    "Create",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.normal),
                  ),
                  IconButton(
                      iconSize: 30,
                      onPressed: () {},
                      icon: const Icon(
                        Iconsax.tick_square,
                        color: Colors.blue,
                      )),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              decoration: BoxDecoration(
                  color: const Color(0xFFD3D3D3),
                  borderRadius: BorderRadius.circular(7)),
              margin: const EdgeInsets.symmetric(horizontal: 15),
              width: Get.width,
              height: 40,
              child: const TextField(
                decoration: InputDecoration.collapsed(
                  border: InputBorder.none,
                  hintText: '',
                ),
              ),
            ),
            SizedBox(
              width: Get.width,
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.all(15),
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    width: Get.width * .7,
                    height: 40,
                    decoration: BoxDecoration(
                        color: grisSombre,
                        borderRadius: BorderRadius.circular(7)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 4,
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
                  IconButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return BackdropFilter(
                              filter:
                                  ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),
                              child: SimpleDialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                backgroundColor: grisSombre,
                                title: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Edit note',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Iconsax.close_circle,
                                          color: Colors.redAccent,
                                        )),
                                  ],
                                ),
                                children: [
                                  SingleChildScrollView(
                                    child: Column(
                                      children: const [
                                        ListTile(
                                          leading: Icon(
                                            Iconsax.arrow_right_3,
                                            color: Colors.white,
                                          ),
                                          title: Text(
                                            "Modivation",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          trailing: Icon(
                                            Iconsax.trash,
                                            color: Colors.red,
                                          ),
                                        ),
                                        ListTile(
                                          leading: Icon(
                                            Iconsax.arrow_right_3,
                                            color: Colors.white,
                                          ),
                                          title: Text(
                                            "Force",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          trailing: Icon(
                                            Iconsax.trash,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 10),
                                        decoration: BoxDecoration(
                                            color: const Color(0xFFD3D3D3),
                                            borderRadius:
                                                BorderRadius.circular(7)),
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 15),
                                        width: Get.width * .5,
                                        height: 30,
                                        child: const TextField(
                                          decoration: InputDecoration.collapsed(
                                            border: InputBorder.none,
                                            hintText: '',
                                          ),
                                        ),
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Iconsax.tick_square4,
                                            color: Colors.blue,
                                          ))
                                    ],
                                  ),
                                ],
                              ),
                            );
                          });
                    },
                    iconSize: 50,
                    icon: const Icon(
                      Iconsax.add_circle5,
                      color: Color(0xFF000000),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              decoration: BoxDecoration(
                  color: const Color(0xFFD3D3D3),
                  borderRadius: BorderRadius.circular(7)),
              margin: const EdgeInsets.symmetric(horizontal: 15),
              width: Get.width,
              height: Get.height * .58,
              child: const TextField(
                keyboardType: TextInputType.multiline,
                maxLength: null,
                maxLines: null,
                decoration: InputDecoration.collapsed(
                  border: InputBorder.none,
                  hintText: '',
                ),
              ),
            ),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                margin: const EdgeInsets.all(15),
                width: Get.width,
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: textformat.length,
                            itemBuilder: (BuildContext context, int index) {
                              return IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _selectedIndex = index;
                                    });
                                  },
                                  iconSize: 35,
                                  icon: Icon(
                                    textformat[index],
                                    color: _selectedIndex == index
                                        ? Colors.blue
                                        : Colors.white,
                                  ));
                            }),
                      ),
                    ]))
          ],
        ),
      ),
    );
  }
}

List<IconData> textformat = [
  Iconsax.text_bold5,
  Iconsax.text_italic5,
  Iconsax.text_underline5,
  Iconsax.textalign_justifycenter5,
  Iconsax.bucket_square4,
  Iconsax.link_square5,
];
