import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/pages_components.dart';
import 'widgets/columnclients_widgets.dart';

class ClientModuloPages extends StatefulWidget {
  const ClientModuloPages({super.key});

  @override
  State<ClientModuloPages> createState() => _ClientModuloScreensState();
}

class _ClientModuloScreensState extends State<ClientModuloPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade500,
      appBar: AppBar(
        title: const Text('Clientes'),
        actions: [
          TextButton.icon(
              onPressed: () => Get.back(),
              icon: const Icon(Icons.arrow_back_ios_new),
              label: Text(
                'Volver',
                style: TextStyle(fontSize: 20),
              ))
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          const SizedBox(
            height: 15,
          ),
          ButtomAddClient(),
          const Divider(
            height: 0.0,
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              margin: EdgeInsets.all(20),
              width: 440,
              height: 600,
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  //FloatingButtomClient(),
                  Divider(
                    height: 0.0,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 550,
                        width: 440,
                        decoration: BoxDecoration(
                            color: Colors.pink.shade300,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ClientColumnWidget(),
                            SizedBox(
                              width: 5.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
      drawer: const Drawer(),
    );
  }
}
