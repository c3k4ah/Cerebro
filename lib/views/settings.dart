import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: unused_import
import 'package:iconsax/iconsax.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  int? groupValue = 0;
  bool _lights = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25))),
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Settings",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.normal),
                  ),
                  IconButton(
                      onPressed: () {
                        showCupertinoModalPopup<void>(
                          context: context,
                          builder: (BuildContext context) =>
                              CupertinoActionSheet(
                            title: const Text('Title'),
                            message: const Text('Message'),
                            actions: <CupertinoActionSheetAction>[
                              CupertinoActionSheetAction(
                                child: const Text('À propos de nous'),
                                onPressed: () {},
                              ),
                              CupertinoActionSheetAction(
                                child: const Text('Quitter'),
                                onPressed: () {},
                              )
                            ],
                          ),
                        );
                      },
                      icon: const Icon(
                        Iconsax.info_circle5,
                        color: Colors.blue,
                        size: 33,
                      )),
                ],
              ),
            ),
            Divider(
              color: Colors.black.withOpacity(.1),
              thickness: 2,
            ),
            Column(children: <Widget>[
              MergeSemantics(
                child: ListTile(
                  title: const Text(
                    'Verouiller Cérebro ?',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: CupertinoSwitch(
                    value: _lights,
                    onChanged: (bool value) {
                      setState(() {
                        _lights = value;
                      });
                    },
                  ),
                  onTap: () {
                    setState(() {
                      _lights = !_lights;
                    });
                  },
                ),
              ),
              MergeSemantics(
                child: ListTile(
                  title: const Text(
                    'Convertir les note ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: const Icon(
                    CupertinoIcons.cloud_download,
                    size: 35,
                  ),
                  onTap: () {},
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
