import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:googleapis/drive/v2.dart';
import 'package:makeyourhome/firebase_options.dart';
import 'package:makeyourhome/provider/bottom_provider.dart';
import 'package:makeyourhome/screens/WorkFlow.dart';
import 'package:makeyourhome/screens/about.dart';
import 'package:makeyourhome/screens/cart2.dart';
import 'package:makeyourhome/screens/contact.dart';
import 'package:makeyourhome/screens/cost_breakdown.dart';
import 'package:makeyourhome/screens/cost_prediction.dart';
import 'package:makeyourhome/screens/graph.dart';
import 'package:makeyourhome/screens/home_screen2.dart';
import 'package:makeyourhome/screens/item.dart';
import 'package:makeyourhome/screens/section.dart';

import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) =>BottomProvider() ,
      child: MaterialApp(
        title: 'MaterialMetric',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => HomeScreen2(),
          '/cement': (context) => SectionPage(),
          '/item': (context) => Item(),
          '/cart2': (context) => Cart2(),
          '/costprediction': (context) => CostPrediction(),
          '/graph':(context) => DisplayGraph(),
          '/costBreakdown':(context) => CostBreakdown(),
          '/about':(context) => AboutScreen(),
          '/workFlow':(context) => WorksScreen(),
          '/contact':(context) => ContactScreen()
        },
      ),
    );
  }
}
