import 'package:black_hole_delivery/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SafeArea(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.05),
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text("Login", style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 30,
                          color: const Color.fromRGBO(24, 23, 43, 1)
                        ),),

                        Text("Access Account", style: GoogleFonts.poppins(
                          color: const Color.fromRGBO(110, 128, 176, 1),
                          fontSize: 20
                        ),)
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width*0.1,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          color: Colors.transparent
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width*0.4,
                              height: MediaQuery.of(context).size.height*0.07,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(240, 240, 250, 1),
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Image(
                                  image: const AssetImage("assets/images/googleIcon.png"),
                                  width: MediaQuery.of(context).size.width*0.08,
                                ),
                              ),
                            ),

                            Container(
                              width: MediaQuery.of(context).size.width*0.4,
                              height: MediaQuery.of(context).size.height*0.07,
                              decoration: BoxDecoration(
                                  color: const Color.fromRGBO(240, 240, 250, 1),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Image(
                                  image: const AssetImage("assets/images/facebookIcon.png"),
                                  width: MediaQuery.of(context).size.width*0.035,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                      Text("or Login with Email", style: GoogleFonts.poppins(
                        color: const Color.fromRGBO(110, 128, 176, 1),
                        fontSize: 20
                      ),),
                      SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Email", style: GoogleFonts.poppins(
                                      color: const Color.fromRGBO(24, 23, 43, 1),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600
                                    ),),
                                   TextField(
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: const Color.fromRGBO(240, 240, 250, 1),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide.none
                                        ),

                                      ),
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        color: const Color.fromRGBO(24, 23, 43, 1),
                                      ),

                                    )
                                  ],
                                ),
                              )
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height*0.04,),
                            Container(
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Password", style: GoogleFonts.poppins(
                                          color: const Color.fromRGBO(24, 23, 43, 1),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600
                                      ),),
                                      TextField(
                                        decoration: InputDecoration(
                                            filled: true,
                                            fillColor: const Color.fromRGBO(240, 240, 250, 1),
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(10),
                                                borderSide: BorderSide.none
                                            ),
                                          suffixIcon: IconButton(
                                            icon: const Icon(Icons.remove_red_eye_rounded, color: Color.fromRGBO(110, 128, 176, 1),),
                                            onPressed: () {  },
                                          ),
                                        ),
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                          color: const Color.fromRGBO(24, 23, 43, 1),
                                        ),
                                        obscureText: true,
                                      )
                                    ],
                                  ),
                                )
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1),
                                child: Column(
                                  children: [
                                    InkWell(
                                      onTap: (){
                                        Navigator.push(
                                            context, MaterialPageRoute(builder: (context) => const Homepage()));
                                      },
                                      child: Container(
                                        width: MediaQuery.of(context).size.width*0.8,
                                        height: MediaQuery.of(context).size.height*0.08,
                                        decoration: BoxDecoration(
                                            color: const Color.fromRGBO(109, 27, 242, 1),
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                        alignment: Alignment.center,
                                        child: Text("Sign In", style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 1
                                        ),),
                                      ),
                                    ),

                                    Container(
                                      width: MediaQuery.of(context).size.width*0.6,
                                      margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*0.02),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text("Don't have an account?", style: GoogleFonts.poppins(
                                            color: const Color.fromRGBO(110, 128, 176, 1),
                                            fontSize: 18,

                                          ),),
                                          Text("Register", style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.bold,
                                            color: const Color.fromRGBO(109, 27, 242, 1),
                                          ),)
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}
