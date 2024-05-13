import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:makeyourhome/provider/bottom_provider.dart';
import 'package:makeyourhome/screens/account.dart';
import 'package:makeyourhome/screens/cart.dart';
import 'package:makeyourhome/screens/chat.dart';
import 'package:makeyourhome/screens/shopping.dart';
import 'package:makeyourhome/tools/color.dart';
import 'package:makeyourhome/tools/granules.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  List<Widget> displayScreen = [Shopping(), HomeWidget()];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BottomProvider(),
      child: Scaffold(
        backgroundColor: Colors.white,
        drawer: Drawer(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.06,
                    left: MediaQuery.of(context).size.width * 0.06,
                  ),
                  child: Text(
                    "Material Metric",
                    style: GoogleFonts.roboto(
                        fontSize: MediaQuery.of(context).size.height * 0.026,
                        //  fontWeight: FontWeight.bold,
                        color: mycolor['secondaryColor']),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.01,
                    bottom: MediaQuery.of(context).size.height * 0.04,
                    left: MediaQuery.of(context).size.width * 0.07,
                  ),
                  child: Text(
                    ' AI driven building material price predictor app ',
                    style: GoogleFonts.roboto(
                        fontSize: MediaQuery.of(context).size.height * 0.014,
                        //  fontWeight: FontWeight.bold,
                        color: mycolor['secondaryColor']),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width * 1,
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.black,
                      size: MediaQuery.of(context).size.height * 0.03,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Colors.black,
                      size: MediaQuery.of(context).size.height * 0.024,
                    ),
                    title: Text(
                      "Home",
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: MediaQuery.of(context).size.height * 0.018),
                    ),
                    onTap: () {},
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.group,
                      color: Colors.black,
                      size: MediaQuery.of(context).size.height * 0.03,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Colors.black,
                      size: MediaQuery.of(context).size.height * 0.024,
                    ),
                    title: Text(
                      "About Us",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: MediaQuery.of(context).size.height * 0.018),
                    ),
                    onTap: () {},
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.question_mark_rounded,
                      color: Colors.black,
                      size: MediaQuery.of(context).size.height * 0.03,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Colors.black,
                      size: MediaQuery.of(context).size.height * 0.024,
                    ),
                    title: Text(
                      "How it works",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: MediaQuery.of(context).size.height * 0.018),
                    ),
                    onTap: () {},
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.black,
                      size: MediaQuery.of(context).size.height * 0.03,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Colors.black,
                      size: MediaQuery.of(context).size.height * 0.024,
                    ),
                    title: Text(
                      "Contact Us",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: MediaQuery.of(context).size.height * 0.018),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.114,
                left: MediaQuery.of(context).size.width * 0.24,
              ),
              child: Text(
                "Version 1.0.0",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: MediaQuery.of(context).size.height * 0.018),
              ),
            ),
          ]),
        ),
        appBar: AppBar(
          toolbarHeight: MediaQuery.of(context).size.height * 0.066,
          iconTheme: IconThemeData(color: mycolor['secondaryColor']),
          backgroundColor: mycolor['primaryColor'],
          elevation: 0.6,
          titleSpacing: 0,
          title: Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.0,
                      left: MediaQuery.of(context).size.width * 0.02,
                    ),
                    child: Text(
                      "Material Metric",
                      style: GoogleFonts.roboto(
                          fontSize: MediaQuery.of(context).size.height * 0.022,
                          //  fontWeight: FontWeight.bold,
                          color: mycolor['secondaryColor']),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.004,
                      left: MediaQuery.of(context).size.width * 0.06,
                    ),
                    child: Text(
                      '" AI driven building material price predictor app "',
                      style: GoogleFonts.roboto(
                          fontSize: MediaQuery.of(context).size.height * 0.013,
                          //  fontWeight: FontWeight.bold,
                          color: mycolor['secondaryColor']),
                    ),
                  ),
                  // IconButton(onPressed: () {}, icon: Icon(Icons.location_on))
                ],
              ),
              // Padding(
              //   padding: EdgeInsets.only(
              //     left: MediaQuery.of(context).size.width * 0.084,
              //   ),
              //   child: Icon(Icons.search),
              // )
            ],
          ),
        ),
        // bottomNavigationBar: bottomNavigation(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Consumer<BottomProvider>(
            builder: (context, value, child) {
              return displayScreen[value.bottomNo];
            },
          ),
        ),
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {
  List<Widget> cementRate = [
    Builder(builder: (context) {
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/item');
        },
        child: CementRate(
          imageUrl:
              "https://upload.wikimedia.org/wikipedia/en/thumb/9/96/Ultratech_Cement_Logo.svg/1200px-Ultratech_Cement_Logo.svg.png",
          price: 350,
          quantity: "1-10k bag ,\norder range",
        ),
      );
    }),
    CementRate(
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqwYyA2xOzC72p9WxdD8HIL1vQCk-ri9sKl7fwBFeBP1-nqFuzfiHWF6d73xx3zmBpwAo&usqp=CAU",
      price: 330,
      quantity: "1-10k bag ,\norder range",
    ),
    CementRate(
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6G6pGqYM7DGTOEX8eEUJAfeLDWjqJJxxVn_6xJnh45dBnjiSufbRGqQ-TwQYkcfegaSo&usqp=CAU",
      price: 340,
      quantity: "1-10k bag ,\norder range",
    ),
  ];
  List<Widget> granulesRate = [
    GranuleRate(
      imageUrl:
          "https://images1.livehindustan.com/uploadimage/library/2022/06/22/16_9/16_9_6/bihar_balu_gitti_aaj_ka_dam_cement_rates_today_in_patna_begusarai_muzaffarpur_bhagalpur_1655902142.jpg",
      price: 350,
      quantity: "1-10 trolley ,\norder range",
    ),
    GranuleRate(
      imageUrl:
          "https://img2.exportersindia.com/product_images/bc-full/2022/5/528805/mild-steel-32mm-rungta-tmt-bars-1652696240-6341620.jpeg",
      price: 350,
      quantity: "1-10 trolley ,\norder range",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.017,
              left: MediaQuery.of(context).size.width * 0.03,
              right: MediaQuery.of(context).size.width * 0.03),
          child: TextField(
            onChanged: (value) {},
            decoration: InputDecoration(
              isDense: true,
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)),
              disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)),
              labelText: "Search",
              prefixIcon: Padding(
                padding: const EdgeInsets.only(right: 23.0, left: 5),
                child: Icon(Icons.search,
                    size: MediaQuery.of(context).size.height * 0.03,
                    color: Colors.black),
              ),
              contentPadding:
                  const EdgeInsets.only(top: 10, bottom: 4, left: 4, right: 0),
              // prefixIconConstraints: BoxConstraints(minWidth: 40,maxHeight: 45)
            ),
          ),
        ),
        Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.017),
          child: CarouselSlider.builder(
            itemBuilder: (context, index, realIndex) {
              return itemss[index];
            },
            itemCount: itemss.length,
            options: CarouselOptions(
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                height: MediaQuery.of(context).size.height * 0.23,
                onPageChanged: (index, reason) {
                  // Provider.of<LoggedInUser>(context, listen: false)
                  //     .getActiveState(index);
                },
                viewportFraction: 1),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.03,
              right: MediaQuery.of(context).size.width * 0.03),
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
                    Section(
                      name: "Bricks",
                      image: NetworkImage(
                          "https://4.imimg.com/data4/TC/IS/IMOB-43715702/images-8-500x500.jpg"),
                    ),
                    Section(
                      name: "TMT Steel",
                      image: NetworkImage(
                          "https://img2.exportersindia.com/product_images/bc-full/2022/5/528805/mild-steel-32mm-rungta-tmt-bars-1652696240-6341620.jpeg"),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Section(
                      name: "Plumbing",
                      image: NetworkImage(
                          "https://5.imimg.com/data5/ST/XD/MY-4090947/plastic-water-pipe-500x500.jpg"),
                    ),
                    Section(
                        name: "Electricals",
                        image: NetworkImage(
                            "https://contentgrid.homedepot-static.com/hdus/en_US/DTCCOMNEW/Articles/types-of-electrical-wires-and-cables-2022-section-5.jpg")),
                    Section(
                      name: "Paints",
                      image: NetworkImage(
                          "https://images.thdstatic.com/productImages/47e4327e-bc2c-4868-aa0b-cbdb606d2e29/svn/natural-hdx-paint-buckets-05m3hdx-64_1000.jpg"),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.025,
              left: MediaQuery.of(context).size.width * 0.03),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Cement Rate",
                style: GoogleFonts.roboto(
                    fontSize: MediaQuery.of(context).size.height * 0.025,
                    //  fontWeight: FontWeight.bold,
                    color: mycolor['textColor']),
              ),
              Padding(
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * 0.02),
                child: Icon(Icons.sort),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.03,
            top: MediaQuery.of(context).size.height * 0.025,
          ),
          child: Table(
            border: TableBorder.all(),
            defaultColumnWidth:
                FixedColumnWidth(MediaQuery.of(context).size.width * 0.46),
            children: [
              TableRow(children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/item');
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Ultratech",
                        style: GoogleFonts.roboto(
                          decoration: TextDecoration.underline,
                          decorationColor: Color.fromARGB(255, 4, 137, 245),
                          fontSize: MediaQuery.of(context).size.height * 0.02,
                          //  fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "₹ 350 / bag",
                    style: GoogleFonts.roboto(
                        fontSize: MediaQuery.of(context).size.height * 0.02,
                        fontWeight: FontWeight.bold,
                        color: mycolor['primaryColor']),
                  ),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "ACC",
                    style: GoogleFonts.roboto(
                        decoration: TextDecoration.underline,
                        decorationColor: Color.fromARGB(255, 4, 137, 245),
                        fontSize: MediaQuery.of(context).size.height * 0.02,
                        //  fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "₹ 330 / bag",
                    style: GoogleFonts.roboto(
                        fontSize: MediaQuery.of(context).size.height * 0.02,
                        fontWeight: FontWeight.bold,
                        color: mycolor['primaryColor']),
                  ),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Ambuja",
                    style: GoogleFonts.roboto(
                        decoration: TextDecoration.underline,
                        decorationColor: Color.fromARGB(255, 4, 137, 245),
                        fontSize: MediaQuery.of(context).size.height * 0.02,
                        //  fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "₹ 340 / bag",
                    style: GoogleFonts.roboto(
                        fontSize: MediaQuery.of(context).size.height * 0.02,
                        fontWeight: FontWeight.bold,
                        color: mycolor['primaryColor']),
                  ),
                ),
              ])
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.025,
              left: MediaQuery.of(context).size.width * 0.03),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "TMT Steel Rate",
                style: GoogleFonts.roboto(
                    fontSize: MediaQuery.of(context).size.height * 0.025,
                    //  fontWeight: FontWeight.bold,
                    color: mycolor['textColor']),
              ),
              Padding(
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * 0.02),
                child: Icon(Icons.sort),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.03,
            top: MediaQuery.of(context).size.height * 0.025,
          ),
          child: Table(
            border: TableBorder.all(),
            defaultColumnWidth:
                FixedColumnWidth(MediaQuery.of(context).size.width * 0.46),
            children: [
              TableRow(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "TMT Steel",
                    style: GoogleFonts.roboto(
                        fontSize: MediaQuery.of(context).size.height * 0.02,
                        //  fontWeight: FontWeight.bold,
                        color: mycolor['textColor']),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "₹ 35000 / trolley",
                    style: GoogleFonts.roboto(
                        fontSize: MediaQuery.of(context).size.height * 0.02,
                        fontWeight: FontWeight.bold,
                        color: mycolor['primaryColor']),
                  ),
                ),
              ]),
            ],
          ),
        ),
        // SizedBox(
        //   height: MediaQuery.of(context).size.height * 0.1,
        //   child: ListView.builder(
        //       itemCount: cementRate.length,
        //       scrollDirection: Axis.horizontal,
        //       itemBuilder: (context, index) {
        //         return cementRate[index];
        //       }),
        // ),
        // Padding(
        //   padding: EdgeInsets.only(
        //       top: MediaQuery.of(context).size.height * 0.035,
        //       left: MediaQuery.of(context).size.width * 0.03),
        //   child: Row(
        //     children: [
        //       Text(
        //         "Granules & TMT Steel Rate",
        //         style: GoogleFonts.roboto(
        //             fontSize: MediaQuery.of(context).size.height * 0.025,
        //             //  fontWeight: FontWeight.bold,
        //             color: mycolor['textColor']),
        //       ),
        //     ],
        //   ),
        // ),
        // SizedBox(
        //   height: MediaQuery.of(context).size.height * 0.15,
        //   child: ListView.builder(
        //       itemCount: granulesRate.length,
        //       scrollDirection: Axis.horizontal,
        //       itemBuilder: (context, index) {
        //         return granulesRate[index];
        //       }),
        // ),
      ],
    );
  }
}

class CementRate extends StatelessWidget {
  String? imageUrl;
  int? price;
  String? quantity;
  CementRate({this.imageUrl, this.price, this.quantity});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.015,
        left: MediaQuery.of(context).size.width * 0.02,
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 0.57,
        child: Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                  height: MediaQuery.of(context).size.height * 0.09,
                  image: NetworkImage(imageUrl!)),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.02),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("₹ $price /bag"),
                    Text(
                      quantity!,
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

final itemss = <Widget>[
  Builder(builder: (context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0,
      width: MediaQuery.of(context).size.width,
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, 'designPage');
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 5, right: 5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                  fit: BoxFit.cover,
                  errorBuilder: (a, b, c) {
                    return Builder(builder: (context) {
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.width * 0.97,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffdadada)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                            color: Colors.grey[300]),
                      );
                    });
                  },
                  image: const NetworkImage(
                      "https://archello.s3.eu-central-1.amazonaws.com/images/2016/07/14/exteriorcontemporary.1506081591.9647.jpg"),
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.97,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }),
  Builder(builder: (context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width,
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, 'designPage');
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 5, right: 4),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                  fit: BoxFit.cover,
                  errorBuilder: (a, b, c) {
                    return Builder(builder: (context) {
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.width * 0.97,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffdadada)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                            color: Colors.grey[300]),
                      );
                    });
                  },
                  image: const NetworkImage(
                      "https://cdn.pixabay.com/photo/2016/11/18/17/20/living-room-1835923__480.jpg"),
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.97,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }),
  Builder(builder: (context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width,
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, 'designPage');
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 5, right: 4),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                  fit: BoxFit.cover,
                  errorBuilder: (a, b, c) {
                    return Builder(builder: (context) {
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.width * 0.97,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffdadada)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                            color: Colors.grey[300]),
                      );
                    });
                  },
                  image: const NetworkImage(
                      "https://www.wowkitchens.in/images/img1.jpg"),
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.97,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }),
];

class Section extends StatelessWidget {
  String? name;
  NetworkImage? image;
  Section({this.name, this.image});
  getSection() {
    return name;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.02,
          left: MediaQuery.of(context).size.height * 0.025),
      child: Column(
        children: [
          CircleAvatar(
            maxRadius: MediaQuery.of(context).size.height * 0.036,
            backgroundImage: image,
          ),
          Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.01,
                  left: MediaQuery.of(context).size.height * 0.0),
              child: Text(name!,
                  style: GoogleFonts.lato(
                    fontSize: MediaQuery.of(context).size.height * 0.016,
                  )))
        ],
      ),
    );
  }
}

class bottomNavigation extends StatefulWidget {
  int index = 0;
  @override
  State<bottomNavigation> createState() => _bottomNavigationState();
}

class _bottomNavigationState extends State<bottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Consumer<BottomProvider>(
      builder: ((context, value, child) {
        final bno = Provider.of<BottomProvider>(context, listen: false);
        return BottomNavigationBar(
            onTap: (state) {
              setState(() {
                bno.setBNo(state);
                //  widget.index = state;
              });
            },
            selectedFontSize: 12,
            unselectedFontSize: 12,
            currentIndex: value.bottomNo,
            fixedColor: Colors.black,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          top: BorderSide(width: 2, color: Colors.white))),
                  child: Icon(
                    Icons.home_outlined,
                    color: Colors.grey,
                    size: 30,
                  ),
                ),
                activeIcon: Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          top: BorderSide(
                    width: 5,
                    color: Color(0xfff7e4ca),
                  ))),
                  child: Icon(Icons.home,
                      color: mycolor['primaryColor'], size: 34),
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          top: BorderSide(width: 2, color: Colors.white))),
                  child: Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.grey,
                    size: 30,
                  ),
                ),
                activeIcon: Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          top: BorderSide(
                    width: 5,
                    color: Color(0xfff7e4ca),
                  ))),
                  child: Icon(Icons.shopping_bag,
                      color: mycolor['primaryColor'], size: 34),
                ),
                label: "Shopping",
              ),
              // BottomNavigationBarItem(
              //   icon: Container(
              //     decoration: const BoxDecoration(
              //         border: Border(
              //             top: BorderSide(width: 2, color: Colors.white))),
              //     child: Icon(
              //       Icons.message_outlined,
              //       color: Colors.grey,
              //       size: 30,
              //     ),
              //   ),
              //   activeIcon: Container(
              //     decoration: const BoxDecoration(
              //         border: Border(
              //             top: BorderSide(
              //       width: 5,
              //       color: Color(0xfff7e4ca),
              //     ))),
              //     child: Icon(Icons.message,
              //         color: mycolor['primaryColor'], size: 34),
              //   ),
              //   label: "Message",
              // ),
              // BottomNavigationBarItem(
              //   icon: Container(
              //     decoration: const BoxDecoration(
              //         border: Border(
              //             top: BorderSide(width: 2, color: Colors.white))),
              //     child: Icon(
              //       Icons.account_box_outlined,
              //       color: Colors.grey,
              //       size: 30,
              //     ),
              //   ),
              //   activeIcon: Container(
              //     decoration: const BoxDecoration(
              //         border: Border(
              //             top: BorderSide(
              //       width: 5,
              //       color: Color(0xfff7e4ca),
              //     ))),
              //     child: Icon(Icons.account_box,
              //         color: mycolor['primaryColor'], size: 34),
              //   ),
              //   label: "Account",
              // ),
            ]);
      }),
    );
  }
}
