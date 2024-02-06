import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuOption extends StatelessWidget {
  const MenuOption({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: [
        _menuItem(context, 'Clientes', Icons.person, Colors.grey, '/opcion1',
            size: 75,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
        _menuItem2(context, 'Vender', Icons.attach_money_rounded, Colors.grey,
            '/opcion2',
            size: 75,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
        _menuItem3(context, 'Pedido Rapido', Icons.add_task_rounded,
            Colors.grey, '/opcion3',
            size: 75,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
      ],
    );
  }
}

Widget _menuItem(BuildContext context, String title, IconData icon, Color color,
    String route,
    {double size = 70, EdgeInsets padding = EdgeInsets.zero}) {
  return GestureDetector(
    onTap: () {
      Get.toNamed('clients');
    },
    child: Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.pink,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          const BoxShadow(
            color: Colors.black,
            blurRadius: 5.0,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 16.0),
          )
        ],
      ),
    ),
  );
}

Widget _menuItem2(BuildContext context, String title, IconData icon,
    Color color, String route,
    {double size = 70, EdgeInsets padding = EdgeInsets.zero}) {
  return GestureDetector(
    onTap: () {
      //Get.toNamed('clients');
    },
    child: Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.indigo,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          const BoxShadow(
            color: Colors.black,
            blurRadius: 5.0,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 16.0),
          )
        ],
      ),
    ),
  );
}

Widget _menuItem3(BuildContext context, String title, IconData icon,
    Color color, String route,
    {double size = 70, EdgeInsets padding = EdgeInsets.zero}) {
  return GestureDetector(
    onTap: () {
      //Get.toNamed('clients');
    },
    child: Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          const BoxShadow(
            color: Colors.black,
            blurRadius: 5.0,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 16.0),
          )
        ],
      ),
    ),
  );
}
