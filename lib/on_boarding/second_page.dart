import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Two extends StatefulWidget {
  const Two({Key? key}) : super(key: key);

  @override
  _TwoState createState() => _TwoState();
}

class _TwoState extends State<Two> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.3,
                margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.15, vertical: MediaQuery.of(context).size.height*0.07),
                decoration: const BoxDecoration(
                    color: Colors.transparent
                ),
                child: Stack(
                  fit: StackFit.expand,
                  children: const [
                    Image(
                        image: AssetImage("assets/images/onboardTwo.png")
                    )
                  ],
                )
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Colors.transparent
              ),
              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05),
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  children:[
                    Text("Choose a tasty dish", style: GoogleFonts.poppins(
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(24, 23, 43, 1)
                    ),),
                    SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                    Text("Order anything you want from your Favorite restaurant.",
                      style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(110, 128, 176, 1)
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            )
          ],
        )
    );
  }
}
