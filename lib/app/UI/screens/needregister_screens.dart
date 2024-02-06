import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NeedRegisterScreen extends StatelessWidget {
  const NeedRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 200,
          ),
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: const Center(
              child: Text(
                '¡Si desea registrarse en DebolsilloApp comuníquese con nosotros!',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'softech.solutions.contact@gmail.com',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Text('Cel/WhatsApp: (264)15-5748636',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
              )
            ]),
          ),
          Container(
            decoration: const BoxDecoration(color: Colors.amber),
          ),
          const SizedBox(
            height: 160,
          ),
          FloatingActionButton(
            onPressed: () => Get.back(),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 40,
                  color: Colors.indigo,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
