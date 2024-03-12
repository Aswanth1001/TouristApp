import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tourist_app/firstpage.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            CarouselSlider(
                items: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage(
                                "images/christoph-schulz-7tb-b37yHx4-unsplash.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage(
                                "images/clarisse-meyer-FQ96bh4O1tY-unsplash.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage(
                                "images/redd-f-rjfOdiB7k-E-unsplash.jpg"),
                            fit: BoxFit.cover)),
                  )
                ],
                options: CarouselOptions(
                  height: 500,
                  aspectRatio: 16 / 9,
                  initialPage: 0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                )),
            SizedBox(
              height: 20,
            ),
            Text(
              "Discover The World\n           With Us",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Experience seamless travel planning and",
              style: TextStyle(
                  color: Color.fromARGB(255, 99, 98, 98), fontSize: 15),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "booking with our user-friendly apps",
              style: TextStyle(
                  color: Color.fromARGB(255, 99, 98, 98), fontSize: 15),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 6, 86, 80)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => first(),
                        ));
                  },
                  child: Text("Start your adventure")),
            )
          ],
        ));
  }
}
