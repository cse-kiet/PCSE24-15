import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:makeyourhome/tools/color.dart';

class Cart2 extends StatelessWidget {
  const Cart2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: mycolor['secondaryColor']),
        backgroundColor: mycolor['primaryColor'],
        elevation: 0,
        title: Text(
          "Make Your Home",
          style: GoogleFonts.roboto(
              fontSize: MediaQuery.of(context).size.height * 0.025,
              //  fontWeight: FontWeight.bold,
              color: mycolor['secondaryColor']),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.location_on))],
      ),
    );
  }
}