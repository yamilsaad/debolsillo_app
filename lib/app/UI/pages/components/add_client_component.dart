import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/add_clients_controllers.dart';

class ButtomAddClient extends StatelessWidget {
  final AddClientController controller = Get.put(AddClientController());

  final TextEditingController nombreController = TextEditingController();
  final TextEditingController apellidoController = TextEditingController();
  final TextEditingController domicilioController = TextEditingController();
  final TextEditingController localidadController = TextEditingController();
  final TextEditingController estadoCrediticioController =
      TextEditingController();

  ButtomAddClient({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Wrap(
        spacing: 10,
        children: [
          SizedBox(
            width: 120,
            height: 100,
            child: Column(
              children: [
                FloatingActionButton(
                  heroTag: 'agregar',
                  elevation: 5,
                  autofocus: true,
                  mouseCursor: MaterialStateMouseCursor.clickable,
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              backgroundColor: Colors.black,
                              title: Text('Cargar nuevo cliente + ',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                              content: Column(
                                children: [TextField()],
                              ),
                            ));
                  },
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  child: const Center(
                    child: Icon(Icons.add),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3.0),
                  child: Center(
                      child: Text(
                    'Agregar Nuevo',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  )),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 120,
            height: 100,
            child: Column(
              children: [
                FloatingActionButton(
                  heroTag: 'actualizar',
                  elevation: 5,
                  autofocus: true,
                  mouseCursor: MaterialStateMouseCursor.clickable,
                  onPressed: () {},
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  child: const Center(
                    child: Icon(Icons.update),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3.0),
                  child: Center(
                      child: Text(
                    'Refrescar',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  )),
                ),
              ],
            ),
          ),
          //*FloatingActionButtom SEARRCH
          const FloatAddComponent(),
          SizedBox(
            width: 120,
            height: 100,
            child: Column(
              children: [
                FloatingActionButton(
                  heroTag: 'compartir',
                  elevation: 5,
                  autofocus: true,
                  mouseCursor: MaterialStateMouseCursor.clickable,
                  onPressed: () {},
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  child: const Center(
                    child: Icon(Icons.share),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3.0),
                  child: Center(
                      child: Text(
                    'Compartir',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  )),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 120,
            height: 100,
            child: Column(
              children: [
                FloatingActionButton(
                  heroTag: 'mensaje',
                  elevation: 5,
                  autofocus: true,
                  mouseCursor: MaterialStateMouseCursor.clickable,
                  onPressed: () {},
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  child: const Center(
                    child: Icon(Icons.message),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3.0),
                  child: Center(
                      child: Text(
                    'Mensaje',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//*Buttom Component Boton flotatnte de agregar cliente!

class FloatAddComponent extends StatefulWidget {
  const FloatAddComponent({
    super.key,
  });

  @override
  State<FloatAddComponent> createState() => _FloatSearchComponentState();
}

class _FloatSearchComponentState extends State<FloatAddComponent> {
  List<String> items = [
    'Manzana',
    'Manzanita',
    'Banana',
    'Bananota',
    'Naranja',
    'Pera',
    'Sandia'
  ];
  List<String> filteredItems = [];
  String selectedElement = ""; // Nuevo estado para almacenar la selección

  @override
  void initState() {
    super.initState();
    filteredItems.addAll(items);
  }

  void filterSearchResults(String query) {
    List<String> searchResults = [];
    if (query.isNotEmpty) {
      for (var item in items) {
        if (item.toLowerCase().contains(query.toLowerCase())) {
          searchResults.add(item);
        }
      }
    } else {
      searchResults.addAll(items);
    }
    setState(() {
      filteredItems.clear();
      filteredItems.addAll(searchResults);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 100,
      child: Column(
        children: [
          FloatingActionButton(
            heroTag: 'buscar',
            elevation: 5,
            autofocus: true,
            mouseCursor: MaterialStateMouseCursor.clickable,
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    backgroundColor: Colors.black,
                    title: const Text(
                      'Buscar Cliente',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    content: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: SizedBox(
                        width: 400,
                        height: 500,
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 10,
                            ),
                            //*BUSCADOR CLIENTES
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                textInputAction: TextInputAction.search,
                                onChanged: (value) {
                                  filterSearchResults(value);
                                },
                                decoration: InputDecoration(
                                    icon: Icon(
                                      Icons.search,
                                      color: Colors.white,
                                    ),
                                    labelText: 'Search',
                                    hintText: 'Search',
                                    fillColor: Colors.white,
                                    hoverColor: Colors.white),
                              ),
                            ),
                            Divider(height: 10.0),
                            SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.black26,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                width: 500,
                                height: 350,
                                child: ListView.builder(
                                  itemCount: filteredItems.length,
                                  itemBuilder: (context, int index) {
                                    return ListTile(
                                      onTap: () {
                                        setState(() {
                                          selectedElement =
                                              filteredItems[index];
                                        });
                                        print(
                                            "Elemento seleccionado: ${filteredItems[index]}");
                                      },
                                      title: Text(
                                        filteredItems[index],
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    actions: [
                      Divider(
                        height: 1.0,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Wrap(
                        alignment: WrapAlignment.start,
                        spacing: 5.0,
                        runSpacing: 3.0,
                        children: [
                          TextButton(
                            onPressed: () {},
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.white)),
                            child: const Text(
                              'Todos',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.white)),
                            child: const Text(
                              'Morosos',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.white)),
                            child: const Text(
                              'Cumplidores',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.white)),
                            child: const Text(
                              'Menores de 24',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.white)),
                            child: const Text(
                              'Mayores de 24',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        height: 1.0,
                      ),
                      Divider(
                        height: 1.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                            onPressed: () => Get.back(),
                            child: const Text(
                              'Salir',
                              style: TextStyle(color: Colors.white),
                            )),
                      )
                    ],
                  );
                },
              );
            },
            materialTapTargetSize: MaterialTapTargetSize.padded,
            child: const Center(
              child: Icon(Icons.search),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 3.0),
            child: Center(
                child: Text(
              'Buscar',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            )),
          ),
        ],
      ),
    );
  }
}
