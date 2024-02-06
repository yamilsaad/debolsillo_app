import 'package:debolsillo_app/app/models/menuoptions_models.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeMenuScreen extends StatelessWidget {
  HomeMenuScreen({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Soft Controller',
          style: TextStyle(color: Colors.white),
        )),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: const SizedBox(
          height: 700, width: double.infinity, child: MenuOption()),

      drawer: DrawerWidget(
        user: user,
      ), //(user: user)
    );
  }
}

//****************DRAWER********************* */
class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    //final usernameCubit = context.watch<UsernameCubit>().state;

    return Drawer(
      backgroundColor: Colors.black12,
      surfaceTintColor: Color(0xff7752FE),
      shadowColor: Colors.white,
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Color(0xff7752FE),
                borderRadius: BorderRadius.only(topRight: Radius.circular(10))),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Icon(
                  Icons.tornado_outlined,
                  size: 100,
                  color: Colors.white,
                ),
                Container(
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Ingresaste como: ' + user.email!,
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  )),
                ),
              ],
            ),
          ),
          const Divider(
            height: 5,
          ),
          ListTile(
            tileColor: Colors.black54,
            splashColor: Colors.black54,
            title: Center(
              child: Row(
                children: [
                  TextButton(
                      onPressed: () {
                        FirebaseAuth.instance.signOut();
                      },
                      child: const Text(
                        'Cerrar sesión',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      )),
                  const SizedBox(
                    width: 85,
                  ),
                  const Icon(
                    Icons.exit_to_app,
                    color: Colors.white,
                    size: 30,
                  )
                ],
              ),
            ),
          ),
          const Divider(
            height: 5,
          ),
          const ListTile(),
          const Divider(
            height: 5,
          ),
          const ListTile(),
          const Divider(
            height: 5,
          ),
          const ListTile(),
        ],
      ),
    );
  }
}
