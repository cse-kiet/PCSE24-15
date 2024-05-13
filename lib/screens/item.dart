import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:makeyourhome/tools/color.dart';

class Item extends StatefulWidget {
  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  int totalprice = 350;
  int price = 350;
  int totalbag = 1;
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.035,
                top: MediaQuery.of(context).size.height * 0.035,
                left: MediaQuery.of(context).size.width * 0.2,
              ),
              child: Image(
                  height: MediaQuery.of(context).size.height * 0.25,
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfJEsTlvysfMTddKAx97-elJOEm6tj7Rb1nA&usqp=CAU")),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.035,
                  right: MediaQuery.of(context).size.width * 0.035,
                  bottom: MediaQuery.of(context).size.height * 0.035),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "₹ $price / bag",
                    style: GoogleFonts.roboto(
                        fontSize: MediaQuery.of(context).size.height * 0.03,
                        //  fontWeight: FontWeight.bold,
                        color: mycolor['textColor']),
                  ),
                  Text(
                    "In Stock",
                    style: GoogleFonts.roboto(
                        fontSize: MediaQuery.of(context).size.height * 0.015,
                        //  fontWeight: FontWeight.bold,
                        color: mycolor['textColor']),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.035,
              ),
              child: Text(
                "Order Range : 1 - 5000 bag  (may vary as per location)",
                style: GoogleFonts.roboto(
                    fontSize: MediaQuery.of(context).size.height * 0.018,
                    //  fontWeight: FontWeight.bold,
                    color: mycolor['textColor']),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.035,
                top: MediaQuery.of(context).size.height * 0.035,
                bottom: MediaQuery.of(context).size.height * 0.035,
              ),
              child: Text(
                "Ultratech",
                style: GoogleFonts.roboto(
                    fontSize: MediaQuery.of(context).size.height * 0.035,
                    //  fontWeight: FontWeight.bold,
                    color: mycolor['textColor']),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.035,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star_half,
                    color: Colors.yellow,
                  ),
                  Text("    4.8 ("),
                  Text(" 7 ratings and reveiw )")
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.035,
                top: MediaQuery.of(context).size.height * 0.04,
                bottom: MediaQuery.of(context).size.height * 0.035,
              ),
              child: Text(
                "Cost Calculator",
                style: GoogleFonts.roboto(
                    fontSize: MediaQuery.of(context).size.height * 0.028,
                    //  fontWeight: FontWeight.bold,
                    color: mycolor['textColor']),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.035),
              child: Row(
                children: [
                  Card(
                    child: Container(
                        height: 50,
                        width: 50,
                        child: Center(
                            child: Text(
                          "₹",
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.028,
                          ),
                        ))),
                  ),
                  Card(
                    child: Container(
                        height: 50,
                        width: 150,
                        child: Center(
                            child: Text(
                          "$totalprice",
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.028,
                          ),
                        ))),
                  ),
                  Card(
                    child: Container(
                        height: 50,
                        width: 150,
                        child: Center(
                            child: TextField(
                          onChanged: (value) {
                            setState(() {
                              if (value == "") {
                                totalprice = 350;
                                totalbag = 1;
                              }
                              totalprice = int.parse(value) * price;
                              totalbag = (totalprice / price).round();
                            });
                          },
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(hintText: "   1 bag"),
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.028,
                          ),
                        ))),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.09),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/cart2');
                },
                child: Card(
                  child: Container(
                    color: mycolor['primaryColor'],
                    width: double.infinity,
                    height: 50,
                    child: Center(
                        child: Text(
                      "Add to Cart : $totalprice ($totalbag)",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.028,
                          color: mycolor['secondaryColor']),
                    )),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
