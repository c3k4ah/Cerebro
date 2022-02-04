import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:note_book/views/widgets/colors.dart';

class NewNote extends StatelessWidget {
  const NewNote({Key? key}) : super(key: key);

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
              child: const Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                    border: InputBorder.none,
                    hintText: '',
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              width: Get.width,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(7)),
              child: Row(),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              decoration: BoxDecoration(
                  color: blueAccent.withOpacity(.5),
                  borderRadius: BorderRadius.circular(7)),
              margin: const EdgeInsets.symmetric(horizontal: 15),
              width: Get.width,
              height: Get.height * .55,
              child: const Expanded(
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  maxLength: null,
                  maxLines: null,
                  decoration: InputDecoration.collapsed(
                    border: InputBorder.none,
                    hintText: '',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}