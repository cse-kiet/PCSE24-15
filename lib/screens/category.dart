import 'package:flutter/material.dart';
import 'package:makeyourhome/screens/shopping.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({super.key});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.6,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Cement",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: MediaQuery.of(context).size.height * 0.022),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.02,
                          left: MediaQuery.of(context).size.width * 0.08),
                      child: Text(
                        "Current Avg ",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize:
                                MediaQuery.of(context).size.height * 0.02),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.01,
                            left: MediaQuery.of(context).size.width * 0.08),
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.02),
                              children: [
                                TextSpan(
                                  text: "₹ ",
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.02),
                                ),
                                TextSpan(text: "320 / bag")
                              ]),
                        )),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.12,
                      left: MediaQuery.of(context).size.width * 0.18),
                  child: Container(
                    color: Colors.black,
                    width: 0.3,
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.02,
                          left: MediaQuery.of(context).size.width * 0.02),
                      child: Text(
                        "Net growth",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize:
                                MediaQuery.of(context).size.height * 0.018),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.0,
                              left: MediaQuery.of(context).size.width * 0.0),
                          child: Icon(
                            Icons.arrow_drop_up_sharp,
                            color: Colors.green,
                            size: MediaQuery.of(context).size.height * 0.04,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.0,
                          ),
                          child: Text(
                            "+ 15 %",
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.02),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            Container(
              color: Colors.black,
              width: double.infinity,
              height: 0.2,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.02),
              child: CategoryGraph(
                  categoryName: "Cement",
                  isProfit: true,
                  currPer: "15 ",
                  catShow: false,
                  buyTime: "23 Oct to 5 Nov"),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.02),
              child: CategoryGraph(
                  categoryName: "ACC",
                  isProfit: true,
                  currPer: "19 ",
                  catShow: false,
                  buyTime: "23 Oct to 28 Nov"),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.02),
              child: CategoryGraph(
                  categoryName: "Ambuja",
                  isProfit: true,
                  currPer: "10 ",
                  catShow: false,
                  buyTime: "23 Oct to 1 Nov"),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.02,
                  bottom: MediaQuery.of(context).size.height * 0.04),
              child: CategoryGraph(
                  categoryName: "Ultratech",
                  isProfit: true,
                  currPer: "18 ",
                  catShow: false,
                  buyTime: "23 Oct to 5 Nov"),
            )
          ],
        ),
      ),
    );
  }
}
