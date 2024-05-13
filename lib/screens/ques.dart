import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class Question extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.07,left: MediaQuery.of(context).size.height*0.01,bottom: MediaQuery.of(context).size.height*0.05),
            child: Text("Welcome",style: GoogleFonts.roboto(
              textStyle: TextStyle(fontSize: MediaQuery.of(context).size.height*0.03)
            ) ),
          ),
          Center(child: Image(image: NetworkImage("https://pbs.twimg.com/profile_images/625663742215364608/F__hoIpD_400x400.jpg") , height: MediaQuery.of(context).size.height*0.13, width: MediaQuery.of(context).size.height*0.15, )),
         Center(
           child: Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.04,left: MediaQuery.of(context).size.height*0.01,bottom: MediaQuery.of(context).size.height*0.04),
              child: Text("Make Your Home ",style: GoogleFonts.roboto(
                textStyle: TextStyle(fontSize: MediaQuery.of(context).size.height*0.03, fontWeight: FontWeight.bold)
              ) ),
            ),
         ),
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.07,left: MediaQuery.of(context).size.height*0.02,bottom: MediaQuery.of(context).size.height*0.07),
            child: Text("Hey, you are a :",style: GoogleFonts.roboto(
              textStyle: TextStyle(fontSize: MediaQuery.of(context).size.height*0.028)
            ) ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                color: Color(0xfffce303),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.height*0.03,vertical: MediaQuery.of(context).size.height*0.02,),
                  
                  child: Text("Buyer",style: GoogleFonts.roboto(
                    textStyle: TextStyle(fontSize: MediaQuery.of(context).size.height*0.03)
                  )),
                ),
              ),
              Card(
                color: Color(0xfffce303),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.height*0.03,vertical: MediaQuery.of(context).size.height*0.02,),
                  
                  child: Text("Seller",style: GoogleFonts.roboto(
                    textStyle: TextStyle(fontSize: MediaQuery.of(context).size.height*0.03)
                  )),
                ),
              ),
            ],
            
          ),
        Padding(
          padding:  EdgeInsets.only(top:MediaQuery.of(context).size.height*0.05),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  color: Color(0xfffce303),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.height*0.03,vertical: MediaQuery.of(context).size.height*0.02,),
                    
                    child: Text("Contractor",style: GoogleFonts.roboto(
                      textStyle: TextStyle(fontSize: MediaQuery.of(context).size.height*0.03)
                    )),
                  ),
                ),
                Card(
                  color: Color(0xfffce303),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.height*0.03,vertical: MediaQuery.of(context).size.height*0.02,),
                    
                    child: Text("Architect",style: GoogleFonts.roboto(
                      textStyle: TextStyle(fontSize: MediaQuery.of(context).size.height*0.03)
                    )),
                  ),
                ),
              ],
              
            ),
        ),
        Padding(
          padding:  EdgeInsets.only(top:MediaQuery.of(context).size.height*0.095,left: MediaQuery.of(context).size.width*0.65),
          child: Text("Skip for now",style: TextStyle(color: Colors.blue,decoration: TextDecoration.underline ,fontSize: MediaQuery.of(context).size.height*0.025),),
        )
        ],
      ),
    ) ;
  }
}
