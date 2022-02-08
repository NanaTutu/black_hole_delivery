import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
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
                          padding: EdgeInsets.symmetric(
                              horizontal: MediaQuery.of(context).size.width*0.05,
                              vertical: MediaQuery.of(context).size.height*0.03
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width*0.1,
                                child: const Image(
                                  image: AssetImage("assets/images/mapPin.png"),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Home", style: GoogleFonts.poppins(
                                        color: const Color.fromRGBO(24, 23, 23, 1),
                                        fontSize: 25,
                                        fontWeight: FontWeight.w600
                                    ),),
                                    Text("242 ST Marks Eve, Finland", style: GoogleFonts.poppins(
                                        color: const Color.fromRGBO(110, 128, 176, 1),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400
                                    ),)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Column(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  // height: MediaQuery.of(context).size.height*0.05,
                                  decoration: const BoxDecoration(
                                      color: Colors.transparent
                                  ),
                                  alignment: Alignment.center,
                                  child: TabBar(
                                    isScrollable: true,
                                    unselectedLabelColor: const Color.fromRGBO(110, 128, 178, 1),
                                    unselectedLabelStyle: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600
                                    ),
                                    labelColor: const Color.fromRGBO(255,255,255, 1),
                                    labelStyle: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold
                                    ),
                                    automaticIndicatorColorAdjustment: true,
                                    padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05),
                                    indicatorSize: TabBarIndicatorSize.tab,
                                    indicator: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: const Color.fromRGBO(109, 97, 242, 1),),
                                    tabs: const [
                                      Tab(
                                        icon: Icon(Icons.fastfood),
                                          child: Text("All",)
                                      ),
                                      Tab(
                                          icon: Icon(Icons.local_pizza_outlined),
                                          child: Text("Pizza",)
                                      ),
                                      Tab(
                                          icon: Icon(Icons.wine_bar_outlined),
                                          child: Text("Beverages", )
                                      ),
                                      Tab(
                                          icon: Icon(Icons.food_bank_outlined),
                                          child: Text("Asian",)
                                      ),
                                      Tab(
                                          icon: Icon(Icons.food_bank_outlined),
                                          child: Text("Continental", )
                                      ),

                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      color: Colors.transparent
                                    ),
                                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.05),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context).size.width,
                                          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.1),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Popular Restaurants", style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 20,
                                                color: const Color.fromRGBO(24, 23, 43, 1)
                                              ),),
                                              Image(
                                                image: const AssetImage("assets/images/filter.png"),
                                                width: MediaQuery.of(context).size.width*0.07,
                                              )
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.03),
                                            child: ListView(
                                              children: [
                                                Container(
                                                  width: MediaQuery.of(context).size.width,
                                                  // height: MediaQuery.of(context).size.height*0.15,
                                                  padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05),
                                                  decoration: const BoxDecoration(
                                                    color: Colors.transparent
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
                                                          image: AssetImage("assets/images/conradRestaurant.png"),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Container(
                                                          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05),
                                                          height: MediaQuery.of(context).size.height*0.08,
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Text("Conrad food", style: GoogleFonts.poppins(
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
                                                                            Text("4.6", style: GoogleFonts.poppins(
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
                                                                      child: Text("Pizza", style: GoogleFonts.poppins(
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
                                                                            size: 17,
                                                                            color: Color.fromRGBO(110, 128, 176, 1)
                                                                          ),
                                                                          SizedBox(width: MediaQuery.of(context).size.width*0.01,),
                                                                          Text("15 mins", style: GoogleFonts.poppins(
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
                                                        child: Text("50% OFF", style: GoogleFonts.poppins(
                                                            fontWeight: FontWeight.w500,
                                                            fontSize: 15,
                                                            color: const Color.fromRGBO(109, 97, 242, 1)
                                                        ),),
                                                      )
                                                    ],
                                                  ),
                                                  margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.02),
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context).size.width,
                                                  // height: MediaQuery.of(context).size.height*0.15,
                                                  padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05),
                                                  decoration: const BoxDecoration(
                                                      color: Colors.transparent
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
                                                          image: AssetImage("assets/images/skRestro.png"),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Container(
                                                          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05),
                                                          height: MediaQuery.of(context).size.height*0.08,
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Text("SK Restro", style: GoogleFonts.poppins(
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
                                                                            Text("4.4", style: GoogleFonts.poppins(
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
                                                                    child: Text("Chinese", style: GoogleFonts.poppins(
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
                                                                        Text("30 mins", style: GoogleFonts.poppins(
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
                                                  ),
                                                  margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.02),
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context).size.width,
                                                  // height: MediaQuery.of(context).size.height*0.15,
                                                  padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05),
                                                  decoration: const BoxDecoration(
                                                      color: Colors.transparent
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
                                                              Text("SK Restro", style: GoogleFonts.poppins(
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
                                                  ),
                                                  margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.02),
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context).size.width,
                                                  // height: MediaQuery.of(context).size.height*0.15,
                                                  padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05),
                                                  decoration: const BoxDecoration(
                                                      color: Colors.transparent
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
                                                          image: AssetImage("assets/images/goichiOniko.png"),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Container(
                                                          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05),
                                                          height: MediaQuery.of(context).size.height*0.08,
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Text("Goichi Oniko", style: GoogleFonts.poppins(
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
                                                                            Text("4.0", style: GoogleFonts.poppins(
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
                                                                    child: Text("Fast Food", style: GoogleFonts.poppins(
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
                                                        child: Text("50% OFF", style: GoogleFonts.poppins(
                                                            fontWeight: FontWeight.w500,
                                                            fontSize: 15,
                                                            color: const Color.fromRGBO(109, 97, 242, 1)
                                                        ),),
                                                      )
                                                    ],
                                                  ),
                                                  margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.02),
                                                ),
                                                Container()
                                              ],
                                            )
                                          ),
                                        )
                                      ],
                                    )
                                  ),
                                )
                              ],
                            ),
                          )
                        )
                      ],
                    )
                ),
              )
            ],
          ),
        )
    );
  }
}
