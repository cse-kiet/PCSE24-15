import 'package:flutter/material.dart';

class WorksScreen extends StatelessWidget {
  const WorksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.04,
                right: MediaQuery.of(context).size.width * 0.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.02,
                            top: MediaQuery.of(context).size.height * 0.018),
                        child: Icon(
                          Icons.arrow_back,
                          size: MediaQuery.of(context).size.height * 0.03,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.04,
                          top: MediaQuery.of(context).size.height * 0.02),
                      child: Text(
                        "How it Works",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize:
                                MediaQuery.of(context).size.height * 0.024),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                      // left: MediaQuery.of(context).size.width * 0.02,
                      top: MediaQuery.of(context).size.height * 0.04),
                  child: Text(
                    'The app uses various ML Algorithms like Ridge Regression to predict price of building materials',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.018,
                        wordSpacing: MediaQuery.of(context).size.width * 0.01),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    // left: MediaQuery.of(context).size.width * 0.02,
                    top: MediaQuery.of(context).size.height * 0.04,
                    bottom: MediaQuery.of(context).size.height * 0.04,
                  ),
                  child: Text(
                    'A basic UML diagram of the app is provided below',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.018,
                        wordSpacing: MediaQuery.of(context).size.width * 0.01),
                  ),
                ),
                Image.asset('assets/workflow.jpg')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
