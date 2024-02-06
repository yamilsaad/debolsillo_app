import 'package:get/get.dart';

class ClientsController extends GetxController {
  final List<Map<String, dynamic>> allClients = [
    {
      "name": "Juan",
      "apellido": "Perez",
      "domicilio": "San Juan",
      "estadocrediticio": "optimo"
    },
    {
      "name": "Maria",
      "apellido": "Peralta",
      "domicilio": "San Juan",
      "estadocrediticio": "optimo"
    },
    {
      "name": "Romina",
      "apellido": "Cataldo",
      "domicilio": "Chile",
      "estadocrediticio": "muy bueno"
    },
    {
      "name": "Ramon",
      "apellido": "Gutierres",
      "domicilio": "Mendoza",
      "estadocrediticio": "malo"
    },
    {
      "name": "Walter",
      "apellido": "Solis",
      "domicilio": "Formosa",
      "estadocrediticio": "optimo"
    },
    {
      "name": "Matias",
      "apellido": "Pereda",
      "domicilio": "Entre Rios",
      "estadocrediticio": "malo"
    },
    {
      "name": "Laura",
      "apellido": "Closs",
      "domicilio": "Misiones",
      "estadocrediticio": "muy bueno"
    },
  ];

  Rx<List<Map<String, dynamic>>> foundClients =
      Rx<List<Map<String, dynamic>>>([]);

  @override
  void onInit() {
    super.onInit();
    foundClients.value = allClients;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void filterClients(String clientsName) {
    List<Map<String, dynamic>> results = [];
    if (clientsName.isEmpty) {
      results = allClients;
    } else {
      results = allClients
          .where((element) => element["name"]
              .toString()
              .toLowerCase()
              .contains(clientsName.toLowerCase()))
          .toList();
    }
    foundClients.value = results;
  }
}
