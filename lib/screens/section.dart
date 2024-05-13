import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:makeyourhome/tools/color.dart';
import 'package:makeyourhome/tools/granules.dart';

class SectionPage extends StatelessWidget {
  List<Widget> granulesRate = [
    GranuleRateCol(
      imageUrl:
          "https://upload.wikimedia.org/wikipedia/en/thumb/9/96/Ultratech_Cement_Logo.svg/1200px-Ultratech_Cement_Logo.svg.png",
      price: 350,
      quantity: "order range : 1-10k bag",
    ),
    GranuleRateCol(
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqwYyA2xOzC72p9WxdD8HIL1vQCk-ri9sKl7fwBFeBP1-nqFuzfiHWF6d73xx3zmBpwAo&usqp=CAU",
      price: 330,
      quantity: "order range: 1-10k bag",
    ),
    GranuleRateCol(
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6G6pGqYM7DGTOEX8eEUJAfeLDWjqJJxxVn_6xJnh45dBnjiSufbRGqQ-TwQYkcfegaSo&usqp=CAU",
      price: 340,
      quantity: "order range : 1-10k bag",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
          iconTheme: IconThemeData(color: mycolor['secondaryColor']),
         // backgroundColor: Color(0xff3284e6),
          flexibleSpace: Container(
          color: mycolor['primaryColor'],
    ),
          elevation: 0,
          title: Text(
            "Make Your Home",
            style: GoogleFonts.roboto(
                fontSize: MediaQuery.of(context).size.height * 0.025,
                //  fontWeight: FontWeight.bold,
                color: mycolor['secondaryColor']),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.location_on))
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.025,
              left: MediaQuery.of(context).size.width * 0.03),
              child: Text(
                  "Cement",
                  style: GoogleFonts.roboto(
                      fontSize: MediaQuery.of(context).size.height * 0.027,
                      //  fontWeight: FontWeight.bold,
                      color: mycolor['textColor'])),
            ),
            Row(
              children: [
                Padding(
                   padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.025,
              left: MediaQuery.of(context).size.width * 0.03),
                  child: Container(
                    child: Image(
                      height: MediaQuery.of(context).size.height * 0.06,
                      image: NetworkImage('https://upload.wikimedia.org/wikipedia/en/thumb/9/96/Ultratech_Cement_Logo.svg/1200px-Ultratech_Cement_Logo.svg.png')),
                  ),
                ),
                Padding(
                   padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.025,
              left: MediaQuery.of(context).size.width * 0.03),
                  child: Container(
                    child: Image(
                      height: MediaQuery.of(context).size.height * 0.06,
                      image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqwYyA2xOzC72p9WxdD8HIL1vQCk-ri9sKl7fwBFeBP1-nqFuzfiHWF6d73xx3zmBpwAo&usqp=CAU')),
                  ),
                ),
                Padding(
                   padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.025,
              left: MediaQuery.of(context).size.width * 0.03),
                  child: Container(
                    child: Image(
                      height: MediaQuery.of(context).size.height * 0.06,
                      
                      image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSHwP1D-9vLV866gbJoFslOae7ctH1Ymy-ZQ&usqp=CAU')),
                  ),
                ),
              //    Padding(
              //      padding: EdgeInsets.only(
              // top: MediaQuery.of(context).size.height * 0.025,
              // left: MediaQuery.of(context).size.width * 0.03),
              //     child: Container(
              //       child: Image(
              //         height: MediaQuery.of(context).size.height * 0.06,
                      
              //         image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLBkw9ySyABRwTXaX0nJ1IG-CSCcCA0m1u7g&usqp=CAU')),
              //     ),
              //   ),   
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.065,
                  left: MediaQuery.of(context).size.width * 0.05),
                  child: Text(
                      "Sort by",
                      style: GoogleFonts.roboto(
                          fontSize: MediaQuery.of(context).size.height * 0.017,
                          //  fontWeight: FontWeight.bold,
                          color: mycolor['textColor'])),
                ),
                Padding(
                  padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.065,
                  left: MediaQuery.of(context).size.width * 0.01),
                  child: Icon(Icons.sort_sharp,size: MediaQuery.of(context).size.height * 0.025,),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.75,
                  child: Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.065,
                              left: MediaQuery.of(context).size.width * 0.1,
                              right: MediaQuery.of(context).size.width * 0.06),
                          child: TextField(
                            onChanged: (value) {},
                            decoration: InputDecoration(
                              isDense: true,
                              enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
                              border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
                              disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
                              labelText: "Search",
                              prefixIcon: Padding(
                  padding: const EdgeInsets.only(right: 23.0, left: 5),
                  child: Icon(Icons.search,
                      size: MediaQuery.of(context).size.height * 0.03,
                      color: Colors.black),
                              ),
                              contentPadding:
                    const EdgeInsets.only(top: 10, bottom: 4, left: 4, right: 0),
                              // prefixIconConstraints: BoxConstraints(minWidth: 40,maxHeight: 45)
                            ),
                          ),
                        ),
                ),
              ],             
            ),
        Padding(
          padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.035,),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: ListView.builder(
                itemCount: granulesRate.length,
                scrollDirection: Axis.vertical,
        
                itemBuilder: (context, index) {
                  return granulesRate[index];
                }),
          ),
        ),
          ],
        ),
    );
  }
}