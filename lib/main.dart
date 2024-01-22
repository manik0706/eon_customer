import 'package:customer/customer_accepting_ride.dart';
import 'package:customer/customer_home.dart';
import 'package:customer/customer_login.dart';
import 'package:customer/customer_otp.dart';
import 'package:customer/customer_ride_accepted.dart';
import 'package:customer/customer_setting.dart';
import 'package:customer/customer_signup.dart';

import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CustomerRideAccepted(),
    );
  }
}
