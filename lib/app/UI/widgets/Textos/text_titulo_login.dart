import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextTituloLogin extends StatelessWidget {
  const TextTituloLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('Debolsillo App',
        style: GoogleFonts.montserrat(
            fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold));
  }
}
