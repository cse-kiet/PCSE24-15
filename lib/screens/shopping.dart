import 'package:expandable/expandable.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:makeyourhome/screens/sign_up.dart';
import 'package:makeyourhome/tools/color.dart';
import 'package:makeyourhome/tools/cost_prediction_services.dart';

import 'home_screen.dart';

String dropdownvalue = 'None';

// List of items in our dropdown menu
var items = [
  'None',
  'Ultratech',
  'ACC',
  'Ambuja',
  'Shree',
];

class Shopping extends StatefulWidget {
  @override
  State<Shopping> createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  int ls = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding:
            EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.025),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.015,
                  bottom: MediaQuery.of(context).size.height * 0.015),
              child: Text(
                "Category",
                style: GoogleFonts.roboto(
                    fontSize: MediaQuery.of(context).size.height * 0.018,
                    //  fontWeight: FontWeight.bold,
                    color: mycolor['textColor']),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.0,
                  right: MediaQuery.of(context).size.width * 0.01),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.07),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/category');
                          },
                          child: Section(
                            name: "Cement",
                            image: NetworkImage(
                                "https://imigroup.com/wp-content/uploads/2020/10/cement-main2.jpg"),
                          ),
                        ),
                        Section(
                            name: "Granules",
                            image: NetworkImage(
                                "https://images1.livehindustan.com/uploadimage/library/2022/06/22/16_9/16_9_6/bihar_balu_gitti_aaj_ka_dam_cement_rates_today_in_patna_begusarai_muzaffarpur_bhagalpur_1655902142.jpg")),
                        // Section(
                        //   name: "Bricks",
                        //   image: NetworkImage(
                        //       "https://4.imimg.com/data4/TC/IS/IMOB-43715702/images-8-500x500.jpg"),
                        // ),

                        Section(
                          name: "Concrete",
                          image: NetworkImage(
                              "https://mm.media-mccoymart.com/buy_catalog/image/catalog/products/2023/04/A1-RMC-New-12.webp"),
                        ),
                        Section(
                          name: "TMT Steel",
                          image: NetworkImage(
                              "https://img2.exportersindia.com/product_images/bc-full/2022/5/528805/mild-steel-32mm-rungta-tmt-bars-1652696240-6341620.jpeg"),
                        ),
                      ],
                    ),
                    // Row(
                    //   children: [
                    //     Section(
                    //       name: "Plumbing",
                    //       image: NetworkImage(
                    //           "https://5.imimg.com/data5/ST/XD/MY-4090947/plastic-water-pipe-500x500.jpg"),
                    //     ),
                    //     Section(
                    //         name: "Electricals",
                    //         image: NetworkImage(
                    //             "https://contentgrid.homedepot-static.com/hdus/en_US/DTCCOMNEW/Articles/types-of-electrical-wires-and-cables-2022-section-5.jpg")),
                    //     Section(
                    //       name: "Paints",
                    //       image: NetworkImage(
                    //           "https://images.thdstatic.com/productImages/47e4327e-bc2c-4868-aa0b-cbdb606d2e29/svn/natural-hdx-paint-buckets-05m3hdx-64_1000.jpg"),
                    //     ),
                    //   ],
                    // ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    )
                  ],
                ),
              ),
            ),
            CategoryGraph(
              categoryName: "Cement",
              items: items,
              buyTime: "Between Sep to Oct",
              currPer: "15 % ",
              catShow: true,
              isProfit: true,
            ),
            CategoryGraph(
              categoryName: "Steel",
              items: items,
              buyTime: "Between Sep to Oct",
              currPer: "10 % ",
              catShow: false,
              isProfit: false,
            ),
            // CategoryGraph(
            //   categoryName: "Steel",
            //   items: items,
            // ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            )
          ],
        ),
      ),
    ));
  }
}

class CategoryGraph extends StatefulWidget {
  int index = 2;
  int index2 = 0;
  String categoryName;
  String? buyTime;
  String? currPer;
  bool? isProfit;
  var items;
  bool? catShow = true;
  CategoryGraph(
      {required this.categoryName,
      this.buyTime,
      this.currPer,
      this.items,
      this.catShow,
      this.isProfit});

  @override
  State<CategoryGraph> createState() => _CategoryGraphState();
}

class _CategoryGraphState extends State<CategoryGraph> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.025,
            left: MediaQuery.of(context).size.width * 0.0,
            right: MediaQuery.of(context).size.width * 0.03),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
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
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          widget.categoryName,
                          style: GoogleFonts.roboto(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.0186,
                              //  fontWeight: FontWeight.bold,
                              color: mycolor['textColor']),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              widget.index = 0;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: widget.index == 0
                                    ? Colors.black
                                    : Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 6, bottom: 6, left: 12, right: 12),
                              child: Text(
                                "7 d",
                                style: GoogleFonts.roboto(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.012,
                                    //  fontWeight: FontWeight.bold,
                                    color: widget.index == 0
                                        ? Colors.white
                                        : mycolor['textColor']),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 6.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              widget.index = 1;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: widget.index == 1
                                    ? Colors.black
                                    : Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 6, bottom: 6, left: 12, right: 12),
                              child: Text(
                                "7 w",
                                style: GoogleFonts.roboto(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.012,
                                    //  fontWeight: FontWeight.bold,
                                    color: widget.index == 1
                                        ? Colors.white
                                        : mycolor['textColor']),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 6.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              widget.index = 2;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: widget.index == 2
                                    ? Colors.black
                                    : Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 6, bottom: 6, left: 12, right: 12),
                              child: Text(
                                "7 m",
                                style: GoogleFonts.roboto(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.012,
                                    //  fontWeight: FontWeight.bold,
                                    color: widget.index == 2
                                        ? Colors.white
                                        : mycolor['textColor']),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 6.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              widget.index = 3;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: widget.index == 3
                                    ? Colors.black
                                    : Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 6, bottom: 6, left: 12, right: 22),
                              child: Text(
                                "7 y",
                                style: GoogleFonts.roboto(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.012,
                                    //  fontWeight: FontWeight.bold,
                                    color: widget.index == 3
                                        ? Colors.white
                                        : mycolor['textColor']),
                              ),
                            ),
                          ),
                        ),
                      ),
                      if (widget.catShow!)
                        Expanded(
                          child: DropdownButton(
                              value: dropdownvalue,
                              items: items.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(
                                    items,
                                    style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.014),
                                  ),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownvalue = newValue!;
                                });
                              }),
                        )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6.0, left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.currPer ?? "",
                          style: GoogleFonts.roboto(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.016,
                              //  fontWeight: FontWeight.bold,
                              color: mycolor['textColor']),
                        ),
                        widget.isProfit == true
                            ? Padding(
                                padding:
                                    const EdgeInsets.only(left: 2.0, top: 2),
                                child: Icon(
                                  Icons.trending_up_rounded,
                                  color: Colors.green,
                                  size: 16,
                                ),
                              )
                            : Padding(
                                padding:
                                    const EdgeInsets.only(left: 2.0, top: 2),
                                child: Icon(
                                  Icons.trending_down_rounded,
                                  color: Colors.red,
                                  size: 16,
                                ),
                              ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.3),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 15, left: 0, right: 20),
                          height: MediaQuery.of(context).size.height * 0.034,
                          width: MediaQuery.of(context).size.height * 0.068,
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                widget.index2 = 0;
                              });
                            },
                            child: ls == 1
                                ? Text(
                                    "Current",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.013),
                                  )
                                : Text(
                                    "Current",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.013),
                                  ),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color(0xfffde0b5)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        side: BorderSide(
                                            color: widget.index2 == 0
                                                ? Colors.black
                                                : Colors.white)))),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15, left: 15, right: 25),
                          height: MediaQuery.of(context).size.height * 0.034,
                          width: MediaQuery.of(context).size.height * 0.068,
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                widget.index2 = 1;
                              });
                            },
                            child: ls == 1
                                ? Text(
                                    "Predict",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.013),
                                  )
                                : Text(
                                    "Predict",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.013),
                                  ),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color(0xffe9d3f4)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        side: BorderSide(
                                            color: widget.index2 == 1
                                                ? Colors.black
                                                : Colors.white)))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.03,
                        right: 10,
                        left: 0),
                    child: Container(
                      height: 200,
                      width: 400,
                      child: LineChart(
                        LineChartData(
                          maxX: 6,
                          minX: 0,
                          maxY: 500,
                          minY: 0,
                          borderData: FlBorderData(
                              border: Border(
                                  bottom: BorderSide(width: 1),
                                  left: BorderSide(width: 1))),
                          titlesData: FlTitlesData(
                              bottomTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                showTitles: true,
                                getTitlesWidget: (value, meta) {
                                  switch (value.toInt()) {
                                    case 0:
                                      return Padding(
                                        padding:
                                            const EdgeInsets.only(left: 4.0),
                                        child: Text(
                                          "May",
                                          style: GoogleFonts.roboto(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.014,
                                              //  fontWeight: FontWeight.bold,
                                              color: mycolor['textColor']),
                                        ),
                                      );
                                    case 1:
                                      return Text(
                                        "June",
                                        style: GoogleFonts.roboto(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.014,
                                            //  fontWeight: FontWeight.bold,
                                            color: mycolor['textColor']),
                                      );
                                    case 2:
                                      return Text(
                                        "July",
                                        style: GoogleFonts.roboto(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.014,
                                            //  fontWeight: FontWeight.bold,
                                            color: mycolor['textColor']),
                                      );
                                    case 3:
                                      return Text(
                                        "Aug",
                                        style: GoogleFonts.roboto(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.014,
                                            //  fontWeight: FontWeight.bold,
                                            color: mycolor['textColor']),
                                      );
                                    case 4:
                                      return Text(
                                        "Sep",
                                        style: GoogleFonts.roboto(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.014,
                                            //  fontWeight: FontWeight.bold,
                                            color: mycolor['textColor']),
                                      );
                                    case 5:
                                      return Text(
                                        "Oct",
                                        style: GoogleFonts.roboto(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.014,
                                            //  fontWeight: FontWeight.bold,
                                            color: mycolor['textColor']),
                                      );
                                    case 6:
                                      return Text(
                                        "Nov",
                                        style: GoogleFonts.roboto(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.014,
                                            //  fontWeight: FontWeight.bold,
                                            color: mycolor['textColor']),
                                      );
                                  }
                                  return Text("");
                                },
                              )),
                              rightTitles: AxisTitles(
                                sideTitles: SideTitles(showTitles: false),
                              ),
                              topTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false))),
                          lineBarsData: [
                            LineChartBarData(
                                spots: [
                                  FlSpot(0, 365),
                                  FlSpot(1, 370),
                                  FlSpot(2, 380),
                                  FlSpot(3, 350),
                                  FlSpot(4, 360),
                                  FlSpot(5, 370),
                                  FlSpot(6, 380)
                                ],
                                isCurved: true,
                                color: widget.isProfit == true
                                    ? Colors.green.withOpacity(0.7)
                                    : Colors.red.withOpacity(0.7),
                                barWidth: 2,
                                dotData: FlDotData(
                                  show: false,
                                ),
                                belowBarData: BarAreaData(
                                    show: true,
                                    color: widget.isProfit == true
                                        ? Colors.greenAccent.withOpacity(0.09)
                                        : Colors.red.withOpacity(0.09))),
                          ],
                          gridData: FlGridData(show: false),
                        ),
                        swapAnimationDuration:
                            Duration(milliseconds: 150), // Optional
                        swapAnimationCurve: Curves.linear,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 18.0,
                        left: 10,
                        bottom: MediaQuery.of(context).size.height * 0.02),
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: "Best time to buy : ",
                          style: GoogleFonts.roboto(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.018,
                              fontWeight: FontWeight.w500,
                              color: mycolor['textColor']),
                        ),
                        TextSpan(
                          text: "Between ${widget.buyTime}",
                          style: GoogleFonts.roboto(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.018,
                              // fontWeight: FontWeight.bold,
                              color: mycolor['textColor']),
                        ),
                      ]),
                    ),
                  ),
                ]),
          ),
        ));
  }
}

class Service extends StatelessWidget {
  IconData icon;
  String text;
  Service({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: 4.0,
          right: 4,
          bottom: MediaQuery.of(context).size.height * 0.035),
      child: Card(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.1,
          //width: MediaQuery.of(context).size.width * 0.23,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                    child: CircleAvatar(
                  child: Icon(
                    icon,
                    color: mycolor['secondaryColor'],
                  ),
                  backgroundColor: mycolor['primaryColor'],
                )),
                Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text(
                    text,
                    style: GoogleFonts.roboto(
                        fontSize: MediaQuery.of(context).size.height * 0.017,
                        //  fontWeight: FontWeight.bold,
                        color: mycolor['textColor']),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
