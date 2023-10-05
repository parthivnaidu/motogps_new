import 'package:flutter/material.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motogps_new/uses.dart';
import 'package:url_launcher/url_launcher.dart';

class mobilebody extends StatefulWidget {
  const mobilebody({super.key});

  @override
  State<mobilebody> createState() => _desktopbodyState();
}

class _desktopbodyState extends State<mobilebody> {
  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  bool isHower = false;
  bool isHower5 = false;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: GradientAppBar(
        leading: Image(image: AssetImage('assets/logo.png')),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: RichText(
              text: TextSpan(
                  text: 'MOTO',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange),
                  children: [
                TextSpan(
                    text: "GPS",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black))
              ])),
        ),
        gradient: LinearGradient(colors: [
          // Colors.brown,
          // Colors.green,
          // Colors.lightBlue,
          // Colors.lightBlue,
          // Colors.yellowAccent,
          Colors.white, Colors.white70
        ]),
        actions: [
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'ABOUT US',
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
          sbw(10),
          InkWell(
            onTap: () async {
              String email =
                  Uri.encodeComponent("ramanareddy@needmoto.in");
              String subject = Uri.encodeComponent("Hello Flutter");
              print(subject); //output: Hello%20Flutter
              Uri mail = Uri.parse("mailto:$email?subject=$subject");
              if (await launchUrl(mail)) {
                //  email app opened
              } else {
                //email app is not opened
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'EMAIL US',
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
          sbw(10),
          InkWell(
            onTap: () {
              setState(() {
                _makePhoneCall('tel:+918886666469');
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'CONTACT US',
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
          sbw(30)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(
                    'assets/bg.png',
                  ),
                  opacity: 0.8,
                  fit: BoxFit.fill,
                )),
              ),
              Positioned(
                top: 220,
                left: MediaQuery.of(context).size.width/3,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _makePhoneCall('tel:+916305702158');
                    });
                  },
                  child: MouseRegion(
                    child: Container(
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                          color: isHower
                              ? Color.fromARGB(255, 14, 0, 91)
                              : Colors.white,
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color: isHower
                                ? Colors.white
                                : Color.fromARGB(255, 14, 0, 91),
                          )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Contact Us',
                              style: GoogleFonts.getFont('Poppins',
                                  color: isHower
                                      ? Colors.white
                                      : Color.fromARGB(255, 14, 0, 91),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    cursor: SystemMouseCursors.click,
                    onExit: (event) {
                      isHower = false;
                      setState(() {});
                    },
                    onHover: (event) {
                      isHower = true;
                      setState(() {});
                    },
                  ),
                ),
              )
            ]),
            SizedBox(
                child:Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(height: 200,
                          child: Image(image: AssetImage('assets/device.webp',),fit: BoxFit.fill,)),
                        Text(
                          'GPS TRACKER(OBD)',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width ,
                          child: Text(
                            'OBD Tracking and monitoring simply plug and play device with obd which has the ability to caputre the dtc events aswell. it is used for all types of vehicles has obd port',
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(height: 200,
                          child: Image(image: AssetImage('assets/device.webp'))),
                        Text(
                          'V5 remote',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width ,
                          child: Text(
                            'V5 remote power cutoff used for all types of vehicles it can be installed on where in the vehicle',
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(height: 200,
                          child: Image(image: AssetImage('assets/device.webp'))),
                        Text(
                          'A1S140 GPS',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width ,
                          child: Text(
                            'this gps tracker is one of a kind gps tracker which helps us to track the marked device anytime anywhere .this gps tracker is one of a kind gps tracker which helps us to track the marked device anytime anywhere .',
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )),
            Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
          // Colors.brown,
          // Colors.green,
          // Colors.lightBlue,
          // Colors.lightBlue,
          // Colors.yellowAccent,
          Colors.white, Colors.white60, Colors.white60,Colors.white60, Colors.white60,Colors.white,
        ])),
                alignment: Alignment.center,
                // color: const Color.fromARGB(255, 255, 255, 255),
                width: MediaQuery.of(context).size.width,
                height: 350,
                child: Padding(
                  padding: const EdgeInsets.only(left: 100, right: 100),
                  child: Column(children: [
                    Text(
                      'CONTACT',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                          color: Color.fromARGB(255, 0, 0, 0),
                          shadows: [
                            Shadow(
                                color: Colors.black.withOpacity(0.3),
                                offset: Offset(4, 4),
                                blurRadius: 8)
                          ]),
                    ),
                    TextFormField(
                      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                      cursorColor: const Color.fromARGB(255, 0, 0, 0),
                      cursorHeight: 1,
                      cursorWidth: 1,
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
                          labelText: 'NAME',
                          labelStyle: TextStyle(
                              color: const Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                        style: TextStyle(color: Colors.white),
                        cursorColor: const Color.fromARGB(255, 10, 10, 10),
                        cursorHeight: 1,
                        cursorWidth: 1,
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: const Color.fromARGB(255, 0, 0, 0))),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: const Color.fromARGB(255, 11, 11, 11))),
                          labelText: 'EMAIL',
                          labelStyle: TextStyle(
                              color: const Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold),
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                        style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                        cursorColor: const Color.fromARGB(255, 15, 15, 15),
                        cursorHeight: 1,
                        cursorWidth: 1,
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: const Color.fromARGB(255, 0, 0, 0))),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: const Color.fromARGB(255, 0, 0, 0))),
                            labelText: 'MOBILE NUMBER',
                            labelStyle: TextStyle(
                                color: const Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.bold))),
                    SizedBox(
                      height: 20,
                    ),
                    MouseRegion(
                      child: Container(
                        width: 150,
                        height: 50,
                        decoration: BoxDecoration(
                            color:
                                isHower5 ? (Colors.blueAccent) : Colors.white,
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: isHower5
                                  ? Colors.white
                                  : Color.fromARGB(255, 14, 0, 91),
                            )),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('SUBMIT',
                                style: GoogleFonts.getFont('Poppins',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: isHower5
                                        ? Colors.white
                                        : Color.fromARGB(255, 14, 0, 91)
                                            .withOpacity(0.7))),
                          ],
                        ),
                      ),
                      cursor: SystemMouseCursors.click,
                      onExit: (event) {
                        isHower5 = false;
                        setState(() {});
                      },
                      onHover: (event) {
                        isHower5 = true;
                        setState(() {});
                      },
                    )
                  ]),
                ))
          ],
        ),
      ),
    ));
  }
}
