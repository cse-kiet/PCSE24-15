import 'package:flutter/material.dart';

class GranuleRate extends StatelessWidget {
  String? imageUrl;
  int? price;
  String? quantity;
  GranuleRate({this.imageUrl, this.price, this.quantity});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.015,
        left: MediaQuery.of(context).size.width * 0.02,
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 0.67,
        child: Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                  height: MediaQuery.of(context).size.height * 1,
                  image: NetworkImage(imageUrl!)),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.02),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("₹ $price / trolley"),
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


class GranuleRateCol extends StatelessWidget {
  String? imageUrl;
  int? price;
  String? quantity;
  GranuleRateCol({this.imageUrl, this.price, this.quantity});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.015,
        left: MediaQuery.of(context).size.width * 0.02,
        right: MediaQuery.of(context).size.width *0.15
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.12,
        width: MediaQuery.of(context).size.width * 0.57,
        child: Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                  height: MediaQuery.of(context).size.height * 0.18,
                   width: MediaQuery.of(context).size.width * 0.3,
                  image: NetworkImage(imageUrl!)),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.02),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("₹ $price / bag"),
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