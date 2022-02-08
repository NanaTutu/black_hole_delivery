import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchResults extends StatefulWidget {
  const SearchResults({Key? key}) : super(key: key);

  @override
  _SearchResultsState createState() => _SearchResultsState();
}

class _SearchResultsState extends State<SearchResults> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height*0.1,
                      decoration: const BoxDecoration(
                          color: Colors.transparent
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width*0.05,
                          vertical: MediaQuery.of(context).size.height*0.02
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: const Color.fromRGBO(240, 240, 250, 0.7),
                                  hintText: "Search food here",
                                  hintStyle: GoogleFonts.poppins(
                                      fontSize: 24,
                                      color: const Color.fromRGBO(110, 128, 176, 0.5)
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide.none
                                  ),
                                  prefixIcon: IconButton(
                                      onPressed: (){},
                                      icon: const Icon(Icons.search),
                                      iconSize: 30,
                                      color: const Color.fromRGBO(110, 128, 176, 0.5)
                                  ),

                                ),
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: const Color.fromRGBO(24, 23, 43, 1),
                                ),

                              ),
                            ),
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                          Container(
                            width: MediaQuery.of(context).size.width*0.13,
                            height: MediaQuery.of(context).size.height*0.1,
                            padding: EdgeInsets.symmetric(
                              horizontal: MediaQuery.of(context).size.width*0.025
                            ),
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(240, 240, 250, 0.7),
                              borderRadius: BorderRadius.circular(15)
                            ),
                            child: const Image(
                              image: AssetImage("assets/images/filter.png"),
                            ),
                          )
                        ],
                      )
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height*0.1,
                            margin: EdgeInsets.symmetric(
                              vertical: MediaQuery.of(context).size.height*0.01
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: MediaQuery.of(context).size.width*0.05
                            ),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width*.18,
                                  height: MediaQuery.of(context).size.height*0.08,
                                  decoration: const BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                  child: const Image(
                                    image: AssetImage("assets/images/blackFish.png"),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05),
                                    height: MediaQuery.of(context).size.height*0.08,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Black Fish", style: GoogleFonts.poppins(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: const Color.fromRGBO(24, 23, 43, 1)
                                        ),),
                                        Row(
                                          children: [
                                            Container(
                                                child:Align(
                                                  alignment: Alignment.center,
                                                  child:  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                    children: [
                                                      Image(
                                                        image: const AssetImage("assets/images/ratingStar.png"),
                                                        width: MediaQuery.of(context).size.width*0.03,
                                                      ),
                                                      SizedBox(width: MediaQuery.of(context).size.width*0.01,),
                                                      Text("4.3", style: GoogleFonts.poppins(
                                                          fontWeight: FontWeight.w600,
                                                          fontSize: 15,
                                                          color: const Color.fromRGBO(24, 23, 43, 1)
                                                      ),)
                                                    ],
                                                  ),
                                                )
                                            ),
                                            SizedBox(width: MediaQuery.of(context).size.width*0.02,),
                                            Container(
                                              child: Text("Sea Food", style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 15,
                                                  color: const Color.fromRGBO(110, 128, 176, 1)
                                              ),),
                                            ),
                                            SizedBox(width: MediaQuery.of(context).size.width*0.02,),
                                            Container(
                                              child: Row(
                                                children: [
                                                  const Icon(
                                                      Icons.watch_later_outlined,
                                                      size: 15,
                                                      color: Color.fromRGBO(110, 128, 176, 1)
                                                  ),
                                                  SizedBox(width: MediaQuery.of(context).size.width*0.01,),
                                                  Text("20 mins", style: GoogleFonts.poppins(
                                                      fontWeight: FontWeight.w600,
                                                      fontSize: 15,
                                                      color: const Color.fromRGBO(110, 128, 176, 1)
                                                  ),),

                                                ],
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.topLeft,
                                  width: MediaQuery.of(context).size.width*.13,
                                  height: MediaQuery.of(context).size.height*0.08,
                                  padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*0.02),
                                  child: Text("40% OFF", style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: const Color.fromRGBO(109, 97, 242, 1)
                                  ),),
                                )
                              ],
                            )
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.symmetric(
                              horizontal: MediaQuery.of(context).size.width*0.1
                            ),
                            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.02),
                            child: Text("Dishes", style: GoogleFonts.poppins(
                              fontSize: 25,
                              fontWeight: FontWeight.w600
                            ),),
                          )
                        ],
                      ),
                    )
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
