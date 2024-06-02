import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

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
                        "Contact Us",
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
                    'Contact Us for suggestions and Feedbacks',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.018,
                        wordSpacing: MediaQuery.of(context).size.width * 0.01),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    // left: MediaQuery.of(context).size.width * 0.02,
                    top: MediaQuery.of(context).size.height * 0.08,
                    // bottom: MediaQuery.of(context).size.height * 0.04,
                  ),
                  child: Text(
                    'Devansh Pandey - devansh.2024cse1159@kiet.edu',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.018,
                        wordSpacing: MediaQuery.of(context).size.width * 0.01),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    // left: MediaQuery.of(context).size.width * 0.02,
                    top: MediaQuery.of(context).size.height * 0.02,
                    // bottom: MediaQuery.of(context).size.height * 0.04,
                  ),
                  child: Text(
                    'Sumit Pandey - sumit.2024cit1161@kiet.edu',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.018,
                        wordSpacing: MediaQuery.of(context).size.width * 0.01),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    // left: MediaQuery.of(context).size.width * 0.02,
                    top: MediaQuery.of(context).size.height * 0.02,
                    // bottom: MediaQuery.of(context).size.height * 0.04,
                  ),
                  child: Text(
                    'Aditya Singh - aditya.2024cse1115@kiet.edu',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.018,
                        wordSpacing: MediaQuery.of(context).size.width * 0.01),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    // left: MediaQuery.of(context).size.width * 0.02,
                    top: MediaQuery.of(context).size.height * 0.02,
                    bottom: MediaQuery.of(context).size.height * 0.04,
                  ),
                  child: Text(
                    'Amit Gupta - amit.2024cse1156@kiet.edu',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.018,
                        wordSpacing: MediaQuery.of(context).size.width * 0.01),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
