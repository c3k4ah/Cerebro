// ignore_for_file: unrelated_type_equality_checks

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
  int _isSelected = 0;

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
                  color: blueAccent.withOpacity(.5),
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
            Container(
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.symmetric(horizontal: 7),
              width: Get.width,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(7)),
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
                  SizedBox(
                    height: 30,
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      color: Colors.blue,
                      minWidth: Get.width * .2,
                      onPressed: () {},
                      child: const Center(
                        child: Text("Add label",
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              decoration: BoxDecoration(
                  color: blueAccent.withOpacity(.5),
                  borderRadius: BorderRadius.circular(7)),
              margin: const EdgeInsets.symmetric(horizontal: 15),
              width: Get.width,
              height: Get.height * .55,
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
                                      _isSelected = index;
                                    });
                                  },
                                  iconSize: 35,
                                  icon: Icon(
                                    textformat[index],
                                    color: _isSelected == index
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
