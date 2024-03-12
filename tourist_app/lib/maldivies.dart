import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tourist_app/booking.dart';


class maldivies extends StatefulWidget {
  const maldivies({super.key});

  @override
  State<maldivies> createState() => _maldiviesState();
}

class _maldiviesState extends State<maldivies> {
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
                      "images/rayyu-maldives-4F4OtnNjpmc-unsplash.jpg",
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
                          "Maldivies , South Asia ",
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
                              "The Maldives is a republic lies south-west of the Indian sub-continent. It is made up of a chain of nearly 1,200 islands, most of them uninhabited. None of the coral islands stand more than 1.8 metres (six feet) above sea level, making the country vulnerable to any rise in sea levels associated with global warming.",
                              style: GoogleFonts.roboto(
                                fontSize: 17,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              "Maldives is famous With its stunning islands, mesmerizing beaches, and turquoise waters, Maldives is famous for its exciting water activities. If you are an adventure enthusiast, the variety of water sports will make you want to stay here forever.",
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
