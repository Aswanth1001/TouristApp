import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tourist_app/booking.dart';

class londan extends StatefulWidget {
  const londan({super.key});

  @override
  State<londan> createState() => _londanState();
}

class _londanState extends State<londan> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          body: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: 500,
                    width: 400,
                    child: Image.asset(
                      "images/sabrina-mazzeo-g-krQzQo9mI-unsplash.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 380),
                    child: Container(
                      height: 400,
                      width: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50)),
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 400, left: 0),
                        child: Text(
                          "Londan , England ",
                          style: GoogleFonts.aBeeZee(fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10, top: 10),
                        child: Text(
                          "Duration:3 days",
                          style: TextStyle(
                              color: Color.fromARGB(255, 107, 105, 105)),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: TabBar(
                            labelColor: Colors.black,
                            unselectedLabelColor: Colors.grey,
                            tabs: [
                              Tab(
                                text: "Overview",
                              ),
                              Tab(
                                text: "Details",
                              ),
                            ]),
                      ),
                      Container(
                        width: 330,
                        height: 200,
                        child: TabBarView(children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              "London is a world cultural capital. It is the world's most-visited city as measured by international arrivals and has the world's largest city airport system measured by passenger traffic. London's 43 universities form the largest concentration of higher education institutes in Europe.",
                              style: GoogleFonts.roboto(
                                fontSize: 17,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              "London, city, capital of the United Kingdom. It is among the oldest of the world's great cities—its history spanning nearly two millennia—and one of the most cosmopolitan. By far Britain's largest metropolis, it is also the country's economic, transportation, and cultural centre.",
                              style: GoogleFonts.roboto(
                                fontSize: 17,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ]),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 55, top: 700),
                    child: SizedBox(
                      height: 40,
                      width: 250,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 4, 56, 98)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => booking(),
                                ));
                          },
                          child: Text("Book Now")),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
