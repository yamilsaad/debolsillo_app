import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens.dart';

class LoginScreen extends StatefulWidget {
  final VoidCallback showRegisterPage;
  const LoginScreen({Key? key, required this.showRegisterPage})
      : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //controladores
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _obscureText = true;

  Future<void> sinIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim());
    } catch (e) {
      // Manejar la excepción aquí
      // ignore: avoid_print
      print('Error al iniciar sesión: $e');
      // ignore: use_build_context_synchronously
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Error al iniciar sesion'),
            content: const Text(
                'Verifica tu correo y contraseña e intenta nuevamente.'),
            actions: [
              TextButton(
                onPressed: () {
                  Get.off(HomeMenuScreen()); // Cerrar el diálogo
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const textInputcolor = TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14.0);
    const textTitlecolor = TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 26.0);
    const textComponentcolor = TextStyle(
        color: Colors.teal, fontWeight: FontWeight.bold, fontSize: 16.0);
    const textRegistercolor = TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14.0);

    return Scaffold(
        body: Container(
      decoration: BoxDecoration(color: Colors.teal[400]),
      child: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  const FlutterLogo(
                    size: 50,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Login',
                    style: textTitlecolor,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    controller: _emailController,
                    cursorColor: Colors.white,
                    //textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white),
                    //textCapitalization: TextCapitalization.characters,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        //hintStyle: TextStyle(color: Colors.white),
                        //helperStyle: TextStyle(color: Colors.white),
                        //labelStyle: TextStyle(color: Colors.white),
                        //counterStyle: TextStyle(color: Colors.white),
                        //prefixStyle: TextStyle(color: Colors.white),
                        fillColor: Colors.white,
                        focusColor: Colors.white,
                        hoverColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: const BorderSide(color: Colors.white)),
                        label: const Text(
                          'Usename',
                          style: textInputcolor,
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: _obscureText,
                    cursorColor: Colors.white,
                    //textCapitalization: TextCapitalization.characters,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.white,
                        ),
                        onPressed: () => setState(() {
                          _obscureText = !_obscureText;
                        }),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      fillColor: Colors.white,
                      focusColor: Colors.white,
                      hoverColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: const BorderSide(
                              color: Colors.white, style: BorderStyle.solid)),
                      label: const Text(
                        'Password',
                        style: textInputcolor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Ingresar',
                        style: textTitlecolor,
                      ),
                      const SizedBox(width: 20.0),
                      FloatingActionButton(
                        splashColor: Colors.white,
                        backgroundColor: Colors.teal[100],
                        onPressed: () => sinIn(),
                        child: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.teal,
                          size: 25,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 40.0),
                  //Boton inicio sesion
                  Wrap(runSpacing: 10, spacing: 10, children: [
                    MaterialButton(
                      onPressed: () {},
                      elevation: 5.0,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Ingresa con Google',
                              style: textComponentcolor,
                            ),
                          ]),
                    ),
                    const SizedBox(height: 20.0),
                    Center(
                      child: TextButton(
                          onPressed: () => Get.to(const NeedRegisterScreen()),
                          child: const Text(
                            'Registrarse',
                            style: textRegistercolor,
                          )),
                    )
                  ]),
                ],
              ),
            ),
          ),
        ),
      ),
    )

        /*Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(0.5, 1),
                colors: <Color>[
                  Color.fromARGB(255, 105, 66, 249),
                  Color(0xff7752FE),
                  Color(0xff8E8FFA),
                  Color(0xffC2D9FF),
                  Color.fromARGB(255, 252, 252, 252),
                ]),
          ),
          child: SafeArea(
              child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Icon(
                    Icons.tornado_outlined,
                    size: 150,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 50),
                  //Hello again
                  const TextTituloLogin(),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              TextSubtituloLogin(),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.deepPurple),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        hintText: 'Email',
                        fillColor: Colors.grey[200],
                        filled: true,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  //password textfield
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: TextField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.deepPurple),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        hintText: 'Password',
                        fillColor: Colors.grey[200],
                        filled: true,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  //sing in button
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: GestureDetector(
                      onTap: sinIn,
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.indigoAccent,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(
                          child: Text(
                            'Ingresar',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  TextButton(
                      onPressed: () => Get.to(const NeedRegisterScreen()),
                      child: const Text('¡No tengo cuenta!'))
                ],
              ),
            ),
          ))),*/
        );
  }
}
