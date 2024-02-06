import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/search_clients_controllers.dart';

// ignore: must_be_immutable
class ClientColumnWidget extends GetView<ClientsController> {
  ClientColumnWidget({super.key});
  String selectedElement = "";

  @override
  Widget build(BuildContext context) {
    // Función para mostrar el showAlert con la información del cliente
    void _showClientInfoAlert(Map<String, dynamic> clientInfo) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.black,
            title: const Text(
              'Información del Cliente',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            content: Obx(
              () => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 400,
                  height: 350,
                  decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Nombre: ${clientInfo["name"]} ${clientInfo["apellido"]}',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      const SizedBox(height: 10.0),
                      Text(
                        'Domicilio: ${clientInfo["domicilio"]}',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      const SizedBox(height: 10.0),
                      Text(
                        'Estado Crediticio: ${clientInfo["estadocrediticio"]}',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Wrap(
                        alignment: WrapAlignment.start,
                        spacing: 5.0,
                        runSpacing: 3.0,
                        children: [
                          TextButton.icon(
                            label: const Text(
                              'Editar',
                              style: TextStyle(color: Colors.black),
                            ),
                            icon: const Icon(
                              Icons.edit,
                              color: Colors.black,
                            ),
                            onPressed: () {},
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.white)),
                          ),
                          TextButton.icon(
                            label: const Text(
                              'Compartir',
                              style: TextStyle(color: Colors.black),
                            ),
                            icon: const Icon(
                              Icons.share,
                              color: Colors.black,
                            ),
                            onPressed: () {},
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.white)),
                          ),
                          TextButton.icon(
                            label: const Text(
                              'Borrar',
                              style: TextStyle(color: Colors.black),
                            ),
                            icon: const Icon(
                              Icons.delete_forever,
                              color: Colors.black,
                            ),
                            onPressed: () {},
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.white)),
                          ),
                          TextButton.icon(
                            label: const Text(
                              'Denunciar',
                              style: TextStyle(color: Colors.black),
                            ),
                            icon: const Icon(
                              Icons.warning,
                              color: Colors.black,
                            ),
                            onPressed: () {},
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.white)),
                          ),
                          TextButton.icon(
                            label: const Text(
                              'Mensaje',
                              style: TextStyle(color: Colors.black),
                            ),
                            icon: const Icon(
                              Icons.email,
                              color: Colors.black,
                            ),
                            onPressed: () {},
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.white)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  'Cerrar',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          );
        },
      );
    }

    return Container(
      margin: const EdgeInsets.all(5.0),
      height: 500,
      width: 400,
      decoration: BoxDecoration(
          color: Colors.black38, borderRadius: BorderRadius.circular(20.0)),
      child: Stack(alignment: Alignment.topRight, children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  cursorColor: Colors.white,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  onChanged: (value) => controller.filterClients(value),
                  decoration: const InputDecoration(
                      fillColor: Colors.white,
                      focusColor: Colors.white,
                      hoverColor: Colors.white,
                      hintStyle: TextStyle(color: Colors.white),
                      labelStyle: TextStyle(color: Colors.white),
                      labelText: 'Buscar',
                      suffixIcon: Icon(
                        Icons.search_outlined,
                        color: Colors.white,
                      )),
                )),
            const Divider(
              height: 1,
            ),
            Container(
                height: 400,
                width: 350,
                decoration: const BoxDecoration(
                    //color: Colors.black12,
                    ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    width: 1000,
                    child: ListView.builder(
                      itemCount: controller.foundClients.value.length,
                      itemBuilder: (context, index) => ListTile(
                        onTap: () {
                          // Obtén la información del cliente seleccionado
                          Map<String, dynamic> selectedClient =
                              controller.foundClients.value[index];

                          // Muestra el showAlert con la información del cliente
                          _showClientInfoAlert(selectedClient);
                        },
                        focusColor: Colors.black,
                        title: Column(
                          children: [
                            Row(children: [
                              Text(
                                controller.foundClients.value[index]["name"],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                controller.foundClients.value[index]
                                    ["apellido"],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              const Text(
                                '//',
                                style: TextStyle(color: Colors.white),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Domicilio:${controller.foundClients.value[index]["domicilio"]}',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              const Text(
                                '//',
                                style: TextStyle(color: Colors.white),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Estado Crediticio:${controller.foundClients.value[index]["estadocrediticio"]}',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ]),
                            const Divider(
                              height: 5.0,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )),
          ],
        ),
        //const FloatComponentClient()
      ]),
    );
  }
}
