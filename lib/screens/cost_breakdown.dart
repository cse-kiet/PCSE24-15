import 'dart:ffi';
import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:googleapis/androidpublisher/v3.dart';
import 'package:makeyourhome/screens/cost_calculator.dart';
import 'package:pie_chart/pie_chart.dart' as pie;

Map<String, double> dataMap = {};
final List<FlSpot> points = [];
double max = 0;

int totalCost() {
  // int a = int.parse(area.value.text.toString());
  // print("a ia $a");
  // int p = 1200;
  // int b = 800;
  // int l = 10;
  // int c = 800;
  // double m = 0.2;
  // int d = 500;
  // int t = 100;
  // int e = 100;
  // return ((a * p) + (b * l) + (c * m) + (d * t) + e).toInt();
  points.clear();
  HousePricePredictor(
    location: 'New York',
    area: int.parse(area.value.text.toString()) + 0.0,
    bedrooms: 3,
    bathrooms: 2,
    age: 10,
    appreciation: 3, // Assume 3% appreciation
  ).predictFuturePrices();
  return HousePricePredictor(
    location: 'New York',
    area: int.parse(area.value.text.toString()) + 0.0,
    bedrooms: 3,
    bathrooms: 2,
    age: 10,
    appreciation: 3, // Assume 3% appreciation
  ).calculatePrice().round();
}

Map<String, double> pieSteps() {
  return dataMap = {
    "Cement - ₹ ${50 * int.parse(area.value.text.toString())}":
        50 * double.parse(area.value.text.toString()),
    "Brick - ₹ ${30 * int.parse(area.value.text.toString())}":
        30 * double.parse(area.value.text.toString()),
    "TMT Stell - ₹ ${64.59 * 3 * int.parse(area.value.text.toString()).round()}":
        64.5 * 3 * double.parse(area.value.text.toString()).round(),
    "Granules - ₹ ${45 * int.parse(area.value.text.toString())}":
        45 * double.parse(area.value.text.toString()),
    "Other - ₹ ${totalCost() - 50 * int.parse(area.value.text.toString()) - 30 * int.parse(area.value.text.toString()) - 64.59 * 3 * int.parse(area.value.text.toString()) - 45 * int.parse(area.value.text.toString())} ":
        100 * double.parse(area.value.text.toString())
  };
}

class CostBreakdown extends StatefulWidget {
  CostBreakdown({super.key});

  @override
  State<CostBreakdown> createState() => _CostBreakdownState();
}

class _CostBreakdownState extends State<CostBreakdown> {
  int cost = totalCost();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: width * 0.03, top: height * 0.01),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: height * 0.03,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.04, top: height * 0.02),
                  child: Text(
                    "Total Cost -  ₹ $cost ",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: MediaQuery.of(context).size.height * 0.024),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: height * 0.06,
                      left: width * 0.0,
                      right: width * 0.0),
                  child: pie.PieChart(
                    dataMap: pieSteps(),
                    ringStrokeWidth: 30,
                    chartRadius: MediaQuery.of(context).size.width * 0.34,
                    chartType: pie.ChartType.ring,
                    centerText: "Cost Breakdown",
                    // totalValue: 1500,
                    initialAngleInDegree: -90,
                    legendOptions: pie.LegendOptions(
                        showLegends: true,
                        legendPosition: pie.LegendPosition.bottom,
                        legendTextStyle: TextStyle(fontSize: height * 0.014)),
                    chartValuesOptions: const pie.ChartValuesOptions(
                      showChartValuesInPercentage: true,
                      showChartValuesOutside: true,
                    ),
                    baseChartColor: Colors.white,
                    colorList: [
                      Color(0xff00B499),
                      Colors.red,
                      Colors.yellow,
                      Colors.blue,
                      Colors.brown
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.04, top: height * 0.03),
                  child: Text(
                    "Future Cost",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: MediaQuery.of(context).size.height * 0.024),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.04, top: height * 0.046),
                  child: Container(
                    height: height * 0.3,
                    width: width * 0.84,
                    child: BarChart(
                      BarChartData(
                        maxY: max,
                        barGroups: _chartGroups(),
                        borderData: FlBorderData(
                            border: const Border(
                                bottom: BorderSide(), left: BorderSide())),
                        gridData: FlGridData(show: true),
                        titlesData: FlTitlesData(
                          bottomTitles: AxisTitles(sideTitles: _bottomTitles),
                          topTitles: AxisTitles(
                              sideTitles: SideTitles(showTitles: false)),
                          rightTitles: AxisTitles(
                              sideTitles: SideTitles(showTitles: false)),
                        ),
                      ),
                    ),
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

class HousePricePredictor {
  String location;
  double area;
  int bedrooms;
  int bathrooms;
  int age;
  double appreciation;

  HousePricePredictor({
    required this.location,
    required this.area,
    required this.bedrooms,
    required this.bathrooms,
    required this.age,
    required this.appreciation,
  });

  double calculatePrice() {
    // Dummy calculation for house price
    // You can replace this with your actual price prediction algorithm
    double basePrice =
        area * 1000 + bedrooms * 20000 + bathrooms * 15000 - age * 500;
    return basePrice * (1 + (appreciation / 100));
  }

  List<double> predictFuturePrices() {
    List<double> futurePrices = [];
    Random random = Random();
    for (int i = 0; i < 6; i++) {
      double appreciationFactor =
          random.nextDouble() * 5 + 1; // Random appreciation between 1-5%
      double futurePrice = calculatePrice() * (1 + (appreciationFactor / 100));
      futurePrices.add(futurePrice);
      max = futurePrice > max ? futurePrice : max;
      points.add(FlSpot(i + 0, futurePrice));
    }
    return futurePrices;
  }
}

List<BarChartGroupData> _chartGroups() {
  return points
      .map((point) => BarChartGroupData(x: point.x.toInt(), barRods: [
            BarChartRodData(toY: point.y, color: Color(0xff00B499), width: 16)
          ]))
      .toList();
}

SideTitles get _bottomTitles => SideTitles(
      showTitles: true,
      getTitlesWidget: (value, meta) {
        String text = '';
        switch (value.toInt()) {
          case 0:
            text = 'Jun';
            break;
          case 1:
            text = 'Jul';
            break;
          case 2:
            text = 'Aug';
            break;
          case 3:
            text = 'Sep';
            break;
          case 4:
            text = 'Oct';
            break;
          case 5:
            text = 'Nov';
            break;
        }

        return Text(text);
      },
    );
