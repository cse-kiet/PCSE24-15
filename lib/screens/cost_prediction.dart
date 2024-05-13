import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:makeyourhome/tools/color.dart';
import 'package:makeyourhome/tools/cost_prediction_services.dart';

class CostPrediction extends StatefulWidget {
  @override
  State<CostPrediction> createState() => _CostPredictionState();
}

int ls = 1;

class _CostPredictionState extends State<CostPrediction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.location_on))],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Choose Category",
                style: GoogleFonts.roboto(
                    fontSize: MediaQuery.of(context).size.height * 0.023,
                    //  fontWeight: FontWeight.bold,
                    color: mycolor['textColor']),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CPS(
                      name: "Cement",
                      rate: 10,
                      selected: 1,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CPS(
                      name: "Concrete",
                      rate: 10,
                      selected: 0,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CPS(
                      name: "TMT",
                      rate: 5,
                      selected: 0,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CPS(
                      name: "Paint",
                      rate: 5,
                      selected: 0,
                    )
                  ],
                ),
              ),
              //
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02,
                    right: MediaQuery.of(context).size.height * 0.012),
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
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              "Cement Rate ",
                              style: GoogleFonts.roboto(
                                  fontSize:
                                      MediaQuery.of(context).size.height * 0.02,
                                  //  fontWeight: FontWeight.bold,
                                  color: mycolor['textColor']),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0, left: 10),
                            child: Row(
                              children: [
                                Text(
                                  "15 % ",
                                  style: GoogleFonts.roboto(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.035,
                                      //  fontWeight: FontWeight.bold,
                                      color: mycolor['textColor']),
                                ),
                                IconButton(
                                  icon: FaIcon(
                                    FontAwesomeIcons.chartLine,
                                    color: mycolor['primaryColor'],
                                  ),
                                  onPressed: () {},
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 48.0),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      top: 15, left: 0, right: 20),
                                  height: MediaQuery.of(context).size.height *
                                      0.055,
                                  width:
                                      MediaQuery.of(context).size.height * 0.15,
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        ls = 1;
                                      });
                                    },
                                    child: ls == 1
                                        ? const Text(
                                            "Current",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )
                                        : const Text(
                                            "Current",
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(ls == 1
                                                ? Colors.black
                                                : Colors.white),
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(18.0),
                                                side: BorderSide(
                                                    color: Colors.black)))),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      top: 15, left: 15, right: 25),
                                  height: MediaQuery.of(context).size.height *
                                      0.055,
                                  width:
                                      MediaQuery.of(context).size.height * 0.15,
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        ls = 0;
                                      });
                                    },
                                    child: ls == 1
                                        ? const Text(
                                            "Predicted",
                                            style:
                                                TextStyle(color: Colors.black),
                                          )
                                        : const Text(
                                            "Predicted",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(ls == 1
                                                ? Colors.white
                                                : Colors.black),
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(18.0),
                                                side: BorderSide(
                                                    color: Colors.black)))),
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
                              height: 280,
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
                                              return Text("Jan");
                                            case 1:
                                              return Text("Feb");
                                            case 2:
                                              return Text("March");
                                            case 3:
                                              return Text("April");
                                            case 4:
                                              return Text("May");
                                            case 5:
                                              return Text("June");
                                            case 6:
                                              return Text("July");
                                          }
                                          return Text("");
                                        },
                                      )),
                                      rightTitles: AxisTitles(
                                        sideTitles:
                                            SideTitles(showTitles: false),
                                      ),
                                      topTitles: AxisTitles(
                                          sideTitles:
                                              SideTitles(showTitles: false))),
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
                                        color: mycolor['primaryColor'],
                                        barWidth: 2,
                                        dotData: FlDotData(
                                          show: true,
                                        ),
                                        belowBarData: BarAreaData(
                                            show: true,
                                            color: mycolor['primaryColor']
                                                ?.withOpacity(0.09))),
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
                            padding: EdgeInsets.only(top: 18.0, left: 10),
                            child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: "Overview : ",
                                  style: GoogleFonts.roboto(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.021,
                                      fontWeight: FontWeight.bold,
                                      color: mycolor['textColor']),
                                ),
                                TextSpan(
                                  text:
                                      "The cement rate have increased by the rate of 15% in the last few months .The average rate was 350 Rs. per bag.  ",
                                  style: GoogleFonts.roboto(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.021,
                                      // fontWeight: FontWeight.bold,
                                      color: mycolor['textColor']),
                                ),
                                TextSpan(
                                  text: "translate",
                                  style: GoogleFonts.roboto(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.021,
                                      decoration: TextDecoration.underline,
                                      //fontWeight: FontWeight.bold,
                                      color: Colors.blue),
                                ),
                              ]),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 18.0, left: 10),
                            child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: "BestTime2Buy : ",
                                  style: GoogleFonts.roboto(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.021,
                                      fontWeight: FontWeight.bold,
                                      color: mycolor['textColor']),
                                ),
                                TextSpan(
                                  text:
                                      "The cement rate have increased by the rate of 15% in the last few months .The average rate was 350 Rs. per bag.  ",
                                  style: GoogleFonts.roboto(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.021,
                                      // fontWeight: FontWeight.bold,
                                      color: mycolor['textColor']),
                                ),
                                TextSpan(
                                  text: "translate",
                                  style: GoogleFonts.roboto(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.021,
                                      decoration: TextDecoration.underline,
                                      //fontWeight: FontWeight.bold,
                                      color: Colors.blue),
                                ),
                              ]),
                            ),
                          ),
                          ElevatedButton(onPressed: () {}, child: Text("Buy"))
                        ]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
