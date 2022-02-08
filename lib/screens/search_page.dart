import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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
                          vertical: MediaQuery.of(context).size.height*0.01
                      ),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromRGBO(240, 240, 250, 1),
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
