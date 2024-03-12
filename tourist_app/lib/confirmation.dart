import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tourist_app/firstpage.dart';

class book extends StatefulWidget {
  const book({super.key});

  @override
  State<book> createState() => _bookState();
}

class _bookState extends State<book> {
  @override
  void initState() {
    gotohomepage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 200),
        child: Column(
          children: [
            Center(
                child: Lottie.asset("images/Animation - 1707204261987.json")),
            Text(
              "Your booking is confirmed",
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }

  Future<void> gotohomepage() async {
    await Future.delayed(Duration(seconds: 4));
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => first(),
        ));
  }
}
