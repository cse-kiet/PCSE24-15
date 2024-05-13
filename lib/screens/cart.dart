import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:makeyourhome/tools/color.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 158.0, bottom: 20),
          child: Center(
            child: Lottie.network(
              'https://assets4.lottiefiles.com/packages/lf20_dkc8tvbm.json',
              height: MediaQuery.of(context).size.height * 0.25,
            ),
          ),
        ),
        
      ],
    );
  }
}
