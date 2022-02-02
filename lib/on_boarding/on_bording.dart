import 'package:black_hole_delivery/on_boarding/second_page.dart';
import 'package:black_hole_delivery/on_boarding/third_page.dart';
import 'package:black_hole_delivery/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'first_page.dart';
import 'package:page_view_indicators/animated_circle_page_indicator.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {

  final _pageController = PageController();
  final _currentPageNotifier = ValueNotifier<int>(0);
  final int pageNumber = 0;

  final pages = [
    const One(),
    const Two(),
    const Three(),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // fit: StackFit.expand,
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.07,
                padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: InkWell(
                    onTap: (){},
                    child: Text("Skip", style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                      color: const Color.fromRGBO(110, 128, 176, 1)
                    ),),
                  ),
                ),
              ),
              Expanded(
                child: PageView(
                  children: pages,
                  controller: _pageController,
                  pageSnapping: true,
                  onPageChanged: (int index){
                    _currentPageNotifier.value = index;
                  },
                )
              )
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.25,
            padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*0.05),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CirclePageIndicator(
                    itemCount: pages.length,
                    currentPageNotifier: _currentPageNotifier,
                    dotColor: const Color.fromRGBO(110, 128, 176, 0.2),
                    selectedDotColor: const Color.fromRGBO(109, 97, 242, 1),
                    size: 15,
                    selectedSize: 15,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                InkWell(
                  onTap: (){
                    if(_currentPageNotifier.value < 2){
                      _pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.linear);
                    }else{
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => const SignUp()));
                    }
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.8,
                    height: MediaQuery.of(context).size.height*0.08,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(109, 27, 242, 1),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    alignment: Alignment.center,
                    child: Text("Next", style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1
                    ),),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}



