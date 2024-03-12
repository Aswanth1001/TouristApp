import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tourist_app/confirmation.dart';

class booking extends StatefulWidget {
  booking({super.key});
  final textcontroller = TextEditingController();

  @override
  State<booking> createState() => _bookingState();
}

class _bookingState extends State<booking> {
  final formkey = GlobalKey<FormState>();
  final secondkey = GlobalKey<FormState>();
  final thirdkey = GlobalKey<FormState>();
  final fourthkey = GlobalKey<FormState>();
  final fifthkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 8, 84, 138),
        title: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            "Booking Details",
            style: GoogleFonts.abhayaLibre(fontSize: 25),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Text(
              "Please fill your details",
              style: GoogleFonts.aBeeZee(fontSize: 15),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Form(
                key: formkey,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "enter your name";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          labelText: "First name",
                          labelStyle: GoogleFonts.aBeeZee(color: Colors.black)),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Form(
                key: secondkey,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "enter your name";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          labelText: "Last name",
                          labelStyle: GoogleFonts.aBeeZee(color: Colors.black)),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Form(
                key: thirdkey,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "enter your Email";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          labelText: "Email address",
                          labelStyle: GoogleFonts.aBeeZee(color: Colors.black)),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Form(
                key: fourthkey,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "enter your mobile Number";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          labelText: "Mobile number",
                          labelStyle: GoogleFonts.aBeeZee(color: Colors.black)),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Form(
                key: fifthkey,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "enter your address";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          labelText: "Address",
                          labelStyle: GoogleFonts.aBeeZee(color: Colors.black)),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Icon(Icons.person),
                  Text(
                    "1 room, 2adults, 1 children",
                    style: GoogleFonts.aBeeZee(
                        fontSize: 17, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 8, 84, 138)),
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      if (secondkey.currentState!.validate()) {
                        if (thirdkey.currentState!.validate()) {
                          if (fourthkey.currentState!.validate()) {
                            if (fifthkey.currentState!.validate()) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => book()),
                              );
                            }
                          }
                        }
                      }
                    }
                  },
                  child: Text("Confirm booking")),
            )
          ],
        ),
      ),
    );
  }
}
