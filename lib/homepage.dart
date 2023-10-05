import 'package:flutter/material.dart';
import 'package:motogps_new/responsive/desktopbody.dart';
import 'package:motogps_new/responsive/mobilebody.dart';
import 'package:motogps_new/responsive/responsive_layout.dart';
import 'package:motogps_new/responsive/tabbody.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      responsivelayout(mobilebody: mobilebody(), desktopbody: desktopbody(), tabbody: tabbody()),

    );
    
  }
}