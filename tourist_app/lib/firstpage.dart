import 'package:flutter/material.dart';
import 'package:tourist_app/agra.dart';
import 'package:tourist_app/londan.dart';
import 'package:tourist_app/maldivies.dart';
import 'package:tourist_app/paris.dart';

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 242, 242),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60, right: 120),
              child: Text(
                "Ready for your next \nadventure?",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 320,
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Search for destination",
                    prefixIcon: Icon(Icons.search)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Stack(
                      children: [
                        Container(
                          height: 35,
                          width: 110,
                          decoration: BoxDecoration(color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8, left: 12),
                          child: Row(
                            children: [
                              Icon(
                                Icons.filter_drama,
                                size: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Mountain")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Stack(
                      children: [
                        Container(
                          height: 35,
                          width: 110,
                          decoration: BoxDecoration(color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8, left: 20),
                          child: Row(
                            children: [
                              Icon(
                                Icons.flare,
                                size: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Beach")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Stack(
                      children: [
                        Container(
                          height: 35,
                          width: 110,
                          decoration: BoxDecoration(color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8, left: 20),
                          child: Row(
                            children: [
                              Icon(
                                Icons.spa,
                                size: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Forest")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 70),
              child: Text(
                "We will give you recommendation",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Stack(
                      children: [
                        Container(
                          height: 400,
                          width: 320,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: AssetImage(
                                      "images/anthony-reungere-s6xt1mwF_iU-unsplash.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 300, left: 15),
                          child: Text(
                            "Capital Of Japan,\nTokyo",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 355, left: 15),
                          child: Text(
                            "Tokyo is the capital of Japan and one of the\nworld's largest cities.",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 245, 245, 245)),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 400,
                        width: 320,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage(
                                    "images/cyril-mzn-WSvth_lwCi0-unsplash.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 300),
                        child: Text(
                          "Paris,\nCapital Of France.",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 355, left: 15),
                        child: Text(
                          "Paris, France's capital, is a major European city\nand a global center for art and fashion",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 190),
              child: Text(
                "Popular Places",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              children: List.generate(imagess.length, (index) {
                return Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => hello[index],
                              ));
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 205, 205, 205),
                                offset: Offset(3.0, 3.0),
                                blurRadius: 15,
                                spreadRadius: 1.0,
                              ),
                              const BoxShadow(
                                color: Colors.white,
                                offset: Offset(-.0, -3.0),
                                blurRadius: 10,
                                spreadRadius: 1.0,
                              )
                            ],
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    image: AssetImage(imagess[index]),
                                    fit: BoxFit.fill))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 15),
                      child: Text(
                        iconss[index],
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 35),
                      child: Text(country[index]),
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 150, left: 10),
                          child: Container(
                            height: 20,
                            width: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(5),
                                  bottomRight: Radius.circular(5)),
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 152, left: 15),
                          child: Text(
                            price[index],
                            style: TextStyle(fontWeight: FontWeight.w300),
                          ),
                        ),
                      ],
                    )
                  ],
                );
              }),
            )
          ],
        ),
        
      ),
    );
  }
}

final List imagess = [
  "images/victor-charlie-uUFVmiNdt14-unsplash.jpg",
  "images/anthony-delanoix-Q0-fOL2nqZc-unsplash.jpg",
  "images/dawson-lovell-W_MUqtuHwyY-unsplash.jpg",
  "images/rayyu-maldives-4F4OtnNjpmc-unsplash.jpg"
];
List iconss = ["Agra", "Paris", "Londan", "Maldivies"];
List country = ["India", "France", "England", "South Asia"];
List price = [
  "Starting at \$600",
  "Starting at \$1200",
  "Starting at \$1600",
  "Starting at \$800",
];
List hello = [agra(), paris(), londan(), maldivies()];
