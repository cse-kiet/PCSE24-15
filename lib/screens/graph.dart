import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:makeyourhome/tools/color.dart';
import 'package:vibration/vibration.dart';
import 'package:intl/intl.dart';

int _index = 1;
List<dynamic> responseData = [];
List<FlSpot> flSpot = [];
Future? _future;
bool isProfit = true;
int dayProfit = 0;
int weekProfit = 0;
int monthProfit = 0;
int yearProfit = 0;
int futureProfit = 0;
double percent = 0;

class DisplayGraph extends StatefulWidget {
  const DisplayGraph({super.key});

  @override
  State<DisplayGraph> createState() => _DisplayGraphState();
}

class _DisplayGraphState extends State<DisplayGraph> {
  Future<void> fetchProductData() async {
    final response = await http.post(
      Uri.parse('https://dev.yojn.dev/finetune/fetch_product_data'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({
        'product_id': 'ABC123',
        'product_category': 'Cement',
        'data_frequency': 'monthly',
        'time_period': {
          'start_date': '2023-01-01',
          'end_date': '2023-12-31',
        },
      }),
    );
    print("${response.body}");
    if (response.statusCode == 200) {
      responseData = jsonDecode(response.body)['data'];
      int temp = 0;
      responseData.forEach((data) => flSpot.add(FlSpot(temp++ + 0, data[3])));
    } else {
      throw Exception('Failed to load product data');
    }
    calCulateProfit();
    setState(() {});
  }

  void calCulateProfit() {
    dayProfit = flSpot
            .elementAt(int.parse(DateFormat('D').format(DateTime.now())))
            .y
            .round() -
        flSpot
            .elementAt(int.parse(DateFormat('D').format(DateTime.now())) - 1)
            .y
            .round();
    percent = (dayProfit / 100);
    print(percent);
    // dayProfit = dayProfit > 0 ? dayProfit : -dayProfit;
    weekProfit = flSpot
            .elementAt(int.parse(DateFormat('D').format(DateTime.now())))
            .y
            .round() -
        flSpot
            .elementAt(int.parse(DateFormat('D').format(DateTime.now())) - 7)
            .y
            .round();
    monthProfit = flSpot
            .elementAt(int.parse(DateFormat('D').format(DateTime.now())))
            .y
            .round() -
        flSpot
            .elementAt(int.parse(DateFormat('D').format(DateTime.now())) - 30)
            .y
            .round();
    // yearProfit = dayProfit > 0 ? dayProfit : -dayProfit;
    yearProfit = flSpot
            .elementAt(int.parse(DateFormat('D').format(DateTime.now())))
            .y
            .round() -
        flSpot.elementAt(0).y.round();
    futureProfit = flSpot.elementAt(flSpot.length - 1).y.round() -
        flSpot
            .elementAt(int.parse(DateFormat('D').format(DateTime.now())))
            .y
            .round();

    isProfit = flSpot
                    .elementAt(
                        int.parse(DateFormat('D').format(DateTime.now())))
                    .y
                    .round() -
                flSpot
                    .elementAt(
                        int.parse(DateFormat('D').format(DateTime.now())) - 1)
                    .y
                    .round() >
            0
        ? true
        : false;
    setState(() {});
  }

  @override
  void initState() {
    responseData.clear();
    flSpot.clear();
    _future = fetchProductData();

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    final routes =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    print(routes['name']);
    return FutureBuilder(
      future: _future,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
                child: Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: height * 0.02,
                          left: width * 0.016,
                          bottom: height * 0.03),
                      child: Icon(Icons.arrow_back),
                    ),
                  ),
                  routes['image'] != null
                      ? Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.0,
                              left: MediaQuery.of(context).size.width * 0.02,
                              bottom: height * 0.02),
                          child: Image.network(
                            routes['image'].toString(),
                            height: height * 0.03,
                            width: width * 0.08,
                          ),
                        )
                      : SizedBox(),
                  Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.0,
                      left: MediaQuery.of(context).size.width * 0.02,
                    ),
                    child: Text(
                      routes['name'].toString().toUpperCase(),
                      style: GoogleFonts.roboto(
                          fontSize: MediaQuery.of(context).size.height * 0.02,
                          //  fontWeight: FontWeight.bold,
                          color: mycolor['secondaryColor']),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: height * 0.02,
                                left: width * 0.02,
                                bottom: height * 0.002,
                                right: width * 0.03),
                            child: Text(
                              "₹ ${flSpot.elementAt(int.parse(DateFormat('D').format(DateTime.now()))).y.round()}",
                              style: GoogleFonts.roboto(
                                  fontSize:
                                      MediaQuery.of(context).size.height * 0.04,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff44475B)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: height * 0.00,
                                bottom: height * 0.01,
                                left: width * 0.022,
                                right: width * 0.04),
                            child: Text(
                              "$dayProfit ($percent %)",
                              style: GoogleFonts.roboto(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.016,
                                  fontWeight: FontWeight.w600,
                                  color: isProfit == "true"
                                      ? Color(0xff00B499)
                                      : Colors.red),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: width * 0.06),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              _index = 4;
                            });
                            Vibration.vibrate(duration: 50);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: _index != 4
                                        ? Color(0xff44475B)
                                        : Color(0xff00B499),
                                    width: 0.4),
                                color: _index != 4
                                    ? Colors.white
                                    : Color(0xffE5FAF5),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: height * 0.006,
                                  bottom: height * 0.006,
                                  left: width * 0.06,
                                  right: width * 0.06),
                              child: Text(
                                "Predict",
                                style: GoogleFonts.roboto(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.016,
                                    fontWeight: FontWeight.w600,
                                    color: _index != 4
                                        ? Color(0xff44475B)
                                        : Color(0xff00B499)),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: height * 0.04,
                        left: width * 0.02,
                        right: width * 0.05),
                    child: Container(
                      height: height * 0.3,
                      width: width * 2,
                      child: LineChart(
                        LineChartData(
                          maxX: _index != 4
                              ? int.parse(
                                      DateFormat('D').format(DateTime.now())) +
                                  1
                              : flSpot.length -
                                  int.parse(
                                      DateFormat('D').format(DateTime.now())) +
                                  0,
                          minX: _index == 1
                              ? int.parse(
                                      DateFormat('D').format(DateTime.now())) -
                                  7
                              : _index == 2
                                  ? int.parse(DateFormat('D')
                                          .format(DateTime.now())) -
                                      30
                                  : _index == 3
                                      ? 0
                                      : int.parse(DateFormat('D')
                                              .format(DateTime.now())) +
                                          0,
                          maxY: 600,
                          minY: 0,
                          borderData: FlBorderData(
                              border: Border(
                                  bottom: BorderSide(width: 0),
                                  left: BorderSide(width: 0))),
                          titlesData: FlTitlesData(
                              leftTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false)),
                              bottomTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                showTitles: false,
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
                                spots: _index == 1
                                    ? flSpot.sublist(
                                        int.parse(DateFormat('D').format(DateTime.now())) -
                                            6,
                                        int.parse(DateFormat('D').format(DateTime.now())) +
                                            1)
                                    : _index == 2
                                        ? flSpot.sublist(
                                            int.parse(DateFormat('D').format(DateTime.now())) -
                                                30,
                                            int.parse(DateFormat('D').format(DateTime.now())) +
                                                1)
                                        : _index == 3
                                            ? flSpot.sublist(
                                                0,
                                                int.parse(DateFormat('D')
                                                        .format(
                                                            DateTime.now())) +
                                                    1)
                                            : flSpot.sublist(
                                                int.parse(DateFormat('D')
                                                    .format(DateTime.now())),
                                                flSpot.length - 1),
                                isCurved: true,
                                color: _index == 1
                                    ? weekProfit > 0
                                        ? Colors.green.withOpacity(0.7)
                                        : Colors.red.withOpacity(0.7)
                                    : _index == 2
                                        ? monthProfit > 0
                                            ? Colors.green.withOpacity(0.7)
                                            : Colors.red.withOpacity(0.7)
                                        : _index == 3
                                            ? yearProfit > 0
                                                ? Colors.green.withOpacity(0.7)
                                                : Colors.red.withOpacity(0.7)
                                            : futureProfit > 0
                                                ? Colors.green.withOpacity(0.7)
                                                : Colors.red.withOpacity(0.7),
                                barWidth: 2,
                                dotData: FlDotData(
                                  show: false,
                                ),
                                belowBarData: BarAreaData(
                                  show: true,
                                  color: _index == 1
                                      ? weekProfit > 0
                                          ? Colors.green.withOpacity(0.09)
                                          : Colors.red.withOpacity(0.09)
                                      : _index == 2
                                          ? monthProfit > 0
                                              ? Colors.green.withOpacity(0.09)
                                              : Colors.red.withOpacity(0.09)
                                          : _index == 3
                                              ? yearProfit > 0
                                                  ? Colors.green
                                                      .withOpacity(0.09)
                                                  : Colors.red.withOpacity(0.09)
                                              : futureProfit > 0
                                                  ? Colors.green
                                                      .withOpacity(0.09)
                                                  : Colors.red
                                                      .withOpacity(0.09),
                                )),
                          ],
                          gridData: FlGridData(show: false),
                        ),
                        swapAnimationDuration:
                            Duration(milliseconds: 150), // Optional
                        swapAnimationCurve: Curves.linear,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      // Padding(
                      //   padding:
                      //       EdgeInsets.only(left: width * 0.16, top: height * 0.014),
                      //   child: GestureDetector(
                      //     onTap: () {
                      //       Vibration.vibrate(duration: 50);
                      //       setState(() {
                      //         _index = 0;
                      //       });
                      //     },
                      //     child: Container(
                      //       decoration: BoxDecoration(
                      //           // border: Border.all(color: Color(0xff00B499), width: 0.4),
                      //           color: _index == 0 ? Color(0xffE5FAF5) : Colors.white,
                      //           borderRadius: BorderRadius.all(Radius.circular(10))),
                      //       child: Padding(
                      //         padding: EdgeInsets.only(
                      //             top: height * 0.006,
                      //             bottom: height * 0.006,
                      //             left: width * 0.04,
                      //             right: width * 0.04),
                      //         child: Text(
                      //           "1 D",
                      //           style: GoogleFonts.roboto(
                      //               fontSize:
                      //                   MediaQuery.of(context).size.height * 0.016,
                      //               fontWeight: FontWeight.w600,
                      //               color: _index == 0
                      //                   ? Color(0xff00B499)
                      //                   : Color(0xff44475B)),
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.24, top: height * 0.014),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              Vibration.vibrate(duration: 50);
                              _index = 1;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                // border: Border.all(color: Color(0xff00B499), width: 0.4),
                                color: _index == 1
                                    ? Color(0xffE5FAF5)
                                    : Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: height * 0.006,
                                  bottom: height * 0.006,
                                  left: width * 0.04,
                                  right: width * 0.04),
                              child: Text(
                                "1 W",
                                style: GoogleFonts.roboto(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.016,
                                    fontWeight: FontWeight.w600,
                                    color: _index == 1
                                        ? Color(0xff00B499)
                                        : Color(0xff44475B)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.04, top: height * 0.014),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              Vibration.vibrate(duration: 50);
                              _index = 2;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                // border: Border.all(color: Color(0xff00B499), width: 0.4),
                                color: _index == 2
                                    ? Color(0xffE5FAF5)
                                    : Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: height * 0.006,
                                  bottom: height * 0.006,
                                  left: width * 0.04,
                                  right: width * 0.04),
                              child: Text(
                                "1 M",
                                style: GoogleFonts.roboto(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.016,
                                    fontWeight: FontWeight.w600,
                                    color: _index == 2
                                        ? Color(0xff00B499)
                                        : Color(0xff44475B)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.04, top: height * 0.014),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              Vibration.vibrate(duration: 50);
                              _index = 3;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                // border: Border.all(color: Color(0xff00B499), width: 0.4),
                                color: _index == 3
                                    ? Color(0xffE5FAF5)
                                    : Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: height * 0.006,
                                  bottom: height * 0.006,
                                  left: width * 0.04,
                                  right: width * 0.04),
                              child: Text(
                                "1 Y",
                                style: GoogleFonts.roboto(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.016,
                                    fontWeight: FontWeight.w600,
                                    color: _index == 3
                                        ? Color(0xff00B499)
                                        : Color(0xff44475B)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: width * 0.04, top: height * 0.04),
                    child: Text(
                      "Overview",
                      style: GoogleFonts.roboto(
                          fontSize: MediaQuery.of(context).size.height * 0.02,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff44475B)),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.04, top: height * 0.04),
                        child: Text(
                          "Week High : ",
                          style: GoogleFonts.roboto(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.017,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff44475B)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.01, top: height * 0.04),
                        child: Text(
                          "₹ 360",
                          style: GoogleFonts.roboto(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.017,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff44475B)),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.04, top: height * 0.02),
                        child: Text(
                          "Week Low : ",
                          style: GoogleFonts.roboto(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.017,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff44475B)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.01, top: height * 0.02),
                        child: Text(
                          "₹ 350",
                          style: GoogleFonts.roboto(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.017,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff44475B)),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.04, top: height * 0.04),
                        child: Text(
                          "Month High : ",
                          style: GoogleFonts.roboto(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.017,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff44475B)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.01, top: height * 0.04),
                        child: Text(
                          "₹ 380",
                          style: GoogleFonts.roboto(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.017,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff44475B)),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.04, top: height * 0.02),
                        child: Text(
                          "Month Low : ",
                          style: GoogleFonts.roboto(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.017,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff44475B)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.01, top: height * 0.02),
                        child: Text(
                          "₹ 320",
                          style: GoogleFonts.roboto(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.017,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff44475B)),
                        ),
                      ),
                    ],
                  ),
                  // Padding(
                  //   padding: EdgeInsets.only(left: width * 0.04, top: height * 0.04),
                  //   child: Text(
                  //     "Best time to buy",
                  //     style: GoogleFonts.roboto(
                  //         fontSize: MediaQuery.of(context).size.height * 0.02,
                  //         fontWeight: FontWeight.w600,
                  //         color: Color(0xff44475B)),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: EdgeInsets.only(left: width * 0.04, top: height * 0.04),
                  //   child: Text(
                  //     "Buy tommorow between 9 am to 11 am at an expected price of ₹351",
                  //     style: GoogleFonts.roboto(
                  //         fontSize: MediaQuery.of(context).size.height * 0.017,
                  //         fontWeight: FontWeight.w600,
                  //         color: Color(0xff44475B)),
                  //   ),
                  // ),
                ],
              ),
            )),
          );
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(
              child: SizedBox(
                height: 50,
                width: 50,
                child: CircularProgressIndicator(
                  color: Color(0xff00B499),
                ),
              ),
            ),
          );
        }
        return Container();
      },
    );
  }
}
