import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tourist_app/booking.dart';


class paris extends StatefulWidget {
  const paris({super.key});

  @override
  State<paris> createState() => _parisState();
}

class _parisState extends State<paris> {
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
                    height: 400,
                    width: 400,
                    child: Image.asset(
                      "images/anthony-delanoix-Q0-fOL2nqZc-unsplash.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 370),
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
                          "Paris , France ",
                          style: GoogleFonts.aBeeZee(fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10, top: 10),
                        child: Text(
                          "Duration:4 days",
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
                              "Paris is the capital of France and the country's most populated city. It's located on the Seine River in the north of the country. Paris is known as the 'City of Light' and is the fourth largest city in the world.Paris is a major center for culture and business in Western Europe. It's home to some of the world's greatest artists, writers, scholars, fashion designers, and chefs.",
                              style: GoogleFonts.roboto(
                                fontSize: 17,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              "Paris is the capital and most populous city of France. Situated on the Seine River, in the north of the country, it is in the centre of the Île-de-France region, also known as the région parisienne, 'Paris Region'. The City of Paris has an area of 105 km² and a population of 2,241,346 (2014 estimate).",
                              style: GoogleFonts.roboto(
                                fontSize: 17,
                              ),
                              textAlign: TextAlign.left,
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
