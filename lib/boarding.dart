import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trash_bank/login.dart';

class boarding extends StatelessWidget {
  const boarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      // homeboardinguv7 (4:5)
      padding: EdgeInsets.fromLTRB(25, 25, 25, 25),
      width: double.infinity,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              // politekniknegerisubangyQB (15:244)
              margin: EdgeInsets.fromLTRB(0, 0, 0, 47),
              child: Text('Bank Sampah',
                  style: GoogleFonts.ubuntu(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(7, 0, 0, 35),
              width: 162,
              height: 162,
              child: Image.asset('images/logo.png'),
            ),
            Container(
              // welcomexmu (8:8)
              margin: EdgeInsets.fromLTRB(1, 0, 0, 35),
              child: Text(
                'Welcome',
                style: GoogleFonts.ubuntu(
                    fontSize: 45, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              // pleaselogintocontinueusingthis (8:9)
              margin: EdgeInsets.fromLTRB(10, 0, 0, 35),
              child: Text(
                'Please login  to continue using this app',
                textAlign: TextAlign.center,
                style: GoogleFonts.yaldevi(
                  fontSize: 16,
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => login()));
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    ))),
          ]),
    ));
  }
}
