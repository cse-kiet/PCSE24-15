import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

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
                        "About Us",
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
                    '"Make Your Home" represents a revolution in the realm of home improvement, offering users unparalleled access to a wealth of real-time statistical data on product prices sourced from diverse commercial supply stores. Our platform has been meticulously crafted to serve as a one-stop destination for individuals seeking to embark on home improvement projects with clarity and confidence. By harnessing the power of cutting-edge Machine Learning technologies, we empower our users to effortlessly explore a vast spectrum of materials while making informed decisions based on comprehensive cost and quality assessments available through our user-friendly interface. At the heart of our platform lies a commitment to providing users with invaluable insights into market dynamics. Through advanced statistical analyses, we not only offer a snapshot of current commodity prices but also delve into predictive trends, enabling users to anticipate future values with accuracy. This foresight equips homeowners, contractors, and DIY enthusiasts alike with the foresight needed to plan and execute their projects efficiently, optimizing both budgetary considerations and the quality of their results. Navigating the complexities of material selection is no longer a daunting task with "Make Your Home" at your fingertips. Our platform serves as a guiding beacon, illuminating the intricate nuances   of the market landscape and empowering users to make decisions that align with their unique preferences and project requirements. Whether you\'re renovating a kitchen, revamping a bathroom, or embarking on a full-scale home transformation, our intuitive portal ensures that every choice is made with clarity, confidence, and a keen eye on the future.',
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
