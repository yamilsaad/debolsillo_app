import 'package:flutter/material.dart';

class TextSubtituloLogin extends StatelessWidget {
  const TextSubtituloLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '¡Ingresá ahora!',
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
      ),
    );
  }
}
