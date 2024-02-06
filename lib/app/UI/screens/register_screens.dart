// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatefulWidget {
  final VoidCallback showLoginPage;
  const RegisterScreen({
    Key? key,
    required this.showLoginPage,
  }) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterScreen> {
  //text controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmpasswordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future signUp() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey.shade300,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(0.5, 1),
              colors: <Color>[
                Color.fromARGB(255, 252, 252, 252),
                Color(0xffC2D9FF),
                Color(0xff8E8FFA),
                Color(0xff7752FE),
                Color.fromARGB(255, 105, 66, 249),
                //Color(0xff190482),
              ]),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment
                    .center, //centra todo el body en la pantalla
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Icon(
                    Icons.shopify,
                    size: 150,
                    color: Colors.indigo,
                  ),
                  SizedBox(height: 50),
                  //Hello again
                  Padding(
                    padding: const EdgeInsets.only(left: 3.0, right: 3.0),
                    child: Text('¡Hora de Registrarse!',
                        style: GoogleFonts.montserrat(
                            fontSize: 33,
                            color: Colors.indigo,
                            fontWeight: FontWeight.bold)),
                  ),
                  Text(
                    '¡Regístrese a continuación con sus datos!',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.indigo),
                  ),
                  SizedBox(height: 50),

                  //email textfield
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.deepPurple),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        hintText: 'Email',
                        fillColor: Colors.grey[200],
                        filled: true,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),

                  //password textfield
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: TextField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.deepPurple),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        hintText: 'Password',
                        fillColor: Colors.grey[200],
                        filled: true,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),

                  //confirm password textfield
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: TextField(
                      controller: _confirmpasswordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.deepPurple),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        hintText: 'Confirm Password',
                        fillColor: Colors.grey[200],
                        filled: true,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),

                  //sing in button
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: GestureDetector(
                      onTap: signUp,
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.indigo,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            'Registrarse',
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
                  SizedBox(height: 25),

                  //si no tienes una cuenta registrate ahora
                  Row(
                    mainAxisAlignment: MainAxisAlignment
                        .center, //centra los textos dentro del Row
                    children: [
                      Text(
                        'Soy miembro!',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      GestureDetector(
                        onTap: widget.showLoginPage,
                        child: Text(
                          ' Login now',
                          style: TextStyle(
                            color: Colors.lightBlueAccent,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
