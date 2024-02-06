import 'package:get/get.dart';

class Cliente {
  String nombre;
  String apellido;
  String domicilio;
  String localidad;
  String estadoCrediticio;

  Cliente({
    required this.nombre,
    required this.apellido,
    required this.domicilio,
    required this.localidad,
    required this.estadoCrediticio,
  });
}

class AddClientController extends GetxController {
  final List<Cliente> newClients = [];

  void addClientController({
    required String nombre,
    required String apellido,
    required String domicilio,
    required String localidad,
    required String estadoCrediticio,
  }) {
    // Crear una nueva instancia de Cliente y agregarla a la lista
    Cliente nuevoCliente = Cliente(
      nombre: nombre,
      apellido: apellido,
      domicilio: domicilio,
      localidad: localidad,
      estadoCrediticio: estadoCrediticio,
    );

    newClients.add(nuevoCliente);

    // Puedes realizar cualquier lógica adicional aquí si es necesario
  }
}
