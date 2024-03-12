import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tourist_app/booking.dart';


class agra extends StatefulWidget {
  const agra({super.key});

  @override
  State<agra> createState() => _agraState();
}

class _agraState extends State<agra> {
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
                      "images/victor-charlie-uUFVmiNdt14-unsplash.jpg",
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
                          "Agra , India ",
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
                              "Agra is a city offering a discovery of the beautiful era. Agra has a rich history, reflected in its numerous monuments dotted in and around the city. The earliest citation for Agra comes from the mythological era, where the epic Mahabharata refer Agra as 'Agravana' meaning paradise in Sanskrit.",
                              style: GoogleFonts.roboto(
                                fontSize: 17,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              "Agra is a city on the banks of the river Yamuna in the northern state of Uttar Pradesh, India. It is 378 kilometers west of the state capital, Lucknow, 206 kilometers south of the national capital New Delhi, 58 kilometers south from Mathura and 125 kilometers north of Gwalior.",
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
