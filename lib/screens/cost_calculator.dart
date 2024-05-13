import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

TextEditingController pinCode = TextEditingController();
TextEditingController area = TextEditingController();

class CostCalculator extends StatelessWidget {
  const CostCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.0,
          left: MediaQuery.of(context).size.width * 0.044),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: width * 0.32),
              child: Container(
                height: height * 0.11,
                child: LottieBuilder.network(
                    "https://lottie.host/94014c6e-70b6-422c-bef5-d4c141e324b4/qZmQJoM9UC.json"),
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Row(
              children: [
                Text(
                  "Enter Pincode",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: MediaQuery.of(context).size.height * 0.019),
                ),
                SizedBox(
                  width: width * 0.1,
                ),
                SizedBox(
                  height: height * 0.06,
                  width: width * 0.48,
                  child: TextFormField(
                    controller: pinCode,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        filled: true, enabledBorder: InputBorder.none),
                  ),
                )
              ],
            ),
            SizedBox(
              height: height * 0.06,
            ),
            Row(
              children: [
                Text(
                  "Enter Area \n(Sq. Meter)",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: MediaQuery.of(context).size.height * 0.019),
                ),
                SizedBox(
                  width: width * 0.15,
                ),
                SizedBox(
                  height: height * 0.06,
                  width: width * 0.48,
                  child: TextFormField(
                    controller: area,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        filled: true, enabledBorder: InputBorder.none),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: width * 0.01, right: width * 0.08, top: height * 0.08),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/costBreakdown');
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xff00B499),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: height * 0.016),
                      child: Text(
                        "Calculate Cost",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize:
                                MediaQuery.of(context).size.height * 0.02),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: height * 0.14, right: width * 0.08, left: width * 0.02),
              child: Text(
                "Disclaimer -",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: MediaQuery.of(context).size.height * 0.016),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: height * 0.04, right: width * 0.08, left: width * 0.02),
              child: Text(
                "Calculated Cost depends on various factors like - labor cost ,  construction materials cost etc",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: MediaQuery.of(context).size.height * 0.016),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: height * 0.02, right: width * 0.08, left: width * 0.02),
              child: Text(
                "Cost is calculated based on mathematical formula , actual cost may vary in some cases",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: MediaQuery.of(context).size.height * 0.016),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


