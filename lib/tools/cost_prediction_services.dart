import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color.dart';

class CPS extends StatelessWidget {
  String name;
  int rate;
  int selected;
  CPS({required this.name, required this.rate,required this.selected});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.02,
        bottom: MediaQuery.of(context).size.height * 0.02,
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.28,
        decoration: BoxDecoration(
          color: Colors.white,
          border: selected==1? Border.all(color: Colors.black, width: 1):Border.all(width: 0,color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(12)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.04),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 15.0),
              child: Text(
                name,
                style: GoogleFonts.roboto(
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                    //  fontWeight: FontWeight.bold,
                    color: mycolor['textColor']),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                children: [
                  Text(
                    rate.toString(),
                    style: GoogleFonts.roboto(
                        fontSize: MediaQuery.of(context).size.height * 0.025,
                        //  fontWeight: FontWeight.bold,
                        color: mycolor['textColor']),
                  ),
                  IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.chartLine,
                      color: mycolor['primaryColor'],
                    ),
                    iconSize: 20,
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
