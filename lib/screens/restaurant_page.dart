import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RestaurantPage extends StatefulWidget {
  const RestaurantPage({Key? key}) : super(key: key);

  @override
  _RestaurantPageState createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
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
                        margin: EdgeInsets.symmetric(
                            vertical: MediaQuery.of(context).size.height*0.025
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width*0.05
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: (){},
                              child: Container(
                                // width: MediaQuery.of(context).size.width*0.15,
                                // height: MediaQuery.of(context).size.height*0.07,
                                decoration: BoxDecoration(
                                    color: const Color.fromRGBO(238, 238, 240, 1),
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                padding: EdgeInsets.symmetric(
                                  vertical: MediaQuery.of(context).size.height*0.02,
                                  horizontal: MediaQuery.of(context).size.width*0.02,
                                ),
                                child: Image(
                                  image: const AssetImage("assets/images/ConradImages/backButtonIcon.png"),
                                  height: MediaQuery.of(context).size.height*0.03,
                                  width: MediaQuery.of(context).size.width*0.12,
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width*0.4,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: (){},
                                    child: Container(
                                      // width: MediaQuery.of(context).size.width*0.15,
                                      // height: MediaQuery.of(context).size.height*0.07,
                                      decoration: BoxDecoration(
                                          color: const Color.fromRGBO(238, 238, 240, 1),
                                          borderRadius: BorderRadius.circular(20)
                                      ),
                                      padding: EdgeInsets.symmetric(
                                        vertical: MediaQuery.of(context).size.height*0.02,
                                        horizontal: MediaQuery.of(context).size.width*0.02,
                                      ),
                                      child: Image(
                                        image: const AssetImage("assets/images/ConradImages/favoriteIcon.png"),
                                        height: MediaQuery.of(context).size.height*0.03,
                                        width: MediaQuery.of(context).size.width*0.12,
                                      ),
                                    ),
                                  ),

                                  InkWell(
                                    onTap: (){},
                                    child: Container(
                                      // width: MediaQuery.of(context).size.width*0.15,
                                      // height: MediaQuery.of(context).size.height*0.07,
                                      decoration: BoxDecoration(
                                          color: const Color.fromRGBO(238, 238, 240, 1),
                                          borderRadius: BorderRadius.circular(20)
                                      ),
                                      padding: EdgeInsets.symmetric(
                                        vertical: MediaQuery.of(context).size.height*0.02,
                                        horizontal: MediaQuery.of(context).size.width*0.02,
                                      ),
                                      child: Image(
                                        image: const AssetImage("assets/images/ConradImages/shareIcon.png"),
                                        height: MediaQuery.of(context).size.height*0.03,
                                        width: MediaQuery.of(context).size.width*0.12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width*0.95,
                              height: MediaQuery.of(context).size.height*0.25,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              child: const Image(
                                image: AssetImage("assets/images/ConradImages/conradRestaurantBanner.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                            Container(
                              width:  MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height*0.08,
                              padding: EdgeInsets.symmetric(
                                horizontal: MediaQuery.of(context).size.width*0.05,
                              ),
                              margin: EdgeInsets.symmetric(
                                  vertical: MediaQuery.of(context).size.height*0.02
                              ),
                              color: Colors.transparent,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: MediaQuery.of(context).size.height*0.1,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text("Conrad food", style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 35,
                                              color: const Color.fromRGBO(24, 23, 43, 1)
                                          ),),

                                          Container(
                                              child: Row(
                                                children: [
                                                  Container(
                                                      child:Align(
                                                        alignment: Alignment.center,
                                                        child:  Row(
                                                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                            Image(
                                                              image: const AssetImage("assets/images/ratingStar.png"),
                                                              width: MediaQuery.of(context).size.width*0.045,
                                                            ),
                                                            SizedBox(width: MediaQuery.of(context).size.width*0.01,),
                                                            Text("4.6 (221)", style: GoogleFonts.poppins(
                                                                fontWeight: FontWeight.w500,
                                                                fontSize: 18,
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
                                                        fontSize: 18,
                                                        color: const Color.fromRGBO(110, 128, 176, 1)
                                                    ),),
                                                  ),

                                                ],
                                              )
                                          )
                                        ],
                                      ),
                                    ),
                                  ),

                                  Container(
                                    width: MediaQuery.of(context).size.width*0.2,
                                    decoration: const BoxDecoration(
                                        color: Colors.transparent
                                    ),
                                    child: InkWell(
                                      child: Text("More Info", style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: const Color.fromRGBO(109, 97, 242, 1)
                                      ),),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                                child: Column(
                                  children: [
                                    Container(
                                      child: Container(
                                        width: MediaQuery.of(context).size.width,
                                        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.05),
                                        margin: EdgeInsets.only(top: MediaQuery.of(context).size.width*.1),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Menu", style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 24,
                                                color: const Color.fromRGBO(24, 23, 43, 1)
                                            ),),
                                            Image(
                                              image: const AssetImage("assets/images/filter.png"),
                                              width: MediaQuery.of(context).size.width*0.07,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                        child: Column(
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context).size.width,
                                              // height: MediaQuery.of(context).size.height*0.05,
                                              decoration: const BoxDecoration(
                                                  color: Colors.transparent
                                              ),
                                              margin: EdgeInsets.symmetric(
                                                vertical: MediaQuery.of(context).size.height*0.02
                                              ),
                                              alignment: Alignment.centerLeft,
                                              child: TabBar(
                                                isScrollable: true,
                                                unselectedLabelColor: const Color.fromRGBO(110, 128, 178, 1),
                                                unselectedLabelStyle: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 20
                                                ),
                                                labelColor: const Color.fromRGBO(255,255,255, 1),
                                                labelStyle: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 20
                                                ),
                                                automaticIndicatorColorAdjustment: true,
                                                padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05),
                                                indicatorSize: TabBarIndicatorSize.tab,
                                                indicator: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  color: const Color.fromRGBO(109, 97, 242, 1),),
                                                tabs: const [
                                                  Tab(
                                                      child: Text("Best Seller",)
                                                  ),
                                                  Tab(
                                                      child: Text("Veg Pizza",)
                                                  ),
                                                  Tab(
                                                      child: Text("Pizza Mania", )
                                                  ),
                                                  Tab(
                                                      child: Text("Sides",)
                                                  ),

                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                color: Colors.transparent,
                                                child: ListView(
                                                  children: [
                                                    Container(
                                                      width: MediaQuery.of(context).size.width,
                                                      height: MediaQuery.of(context).size.height*0.1,
                                                      padding: EdgeInsets.symmetric(
                                                        horizontal: MediaQuery.of(context).size.width*0.05
                                                      ),
                                                      margin: EdgeInsets.symmetric(
                                                        vertical: MediaQuery.of(context).size.height*0.01
                                                      ),
                                                      decoration: const BoxDecoration(
                                                        color: Colors.transparent
                                                      ),
                                                      child: Row(
                                                        children: [
                                                          Container(
                                                            height: MediaQuery.of(context).size.height*0.1,
                                                            width: MediaQuery.of(context).size.width*0.2,
                                                            decoration: const BoxDecoration(
                                                              color: Colors.transparent,
                                                            ),
                                                            child: const Image(
                                                              image: AssetImage("assets/images/ConradImages/conradMargherita.png"),
                                                              fit: BoxFit.fill,
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                              padding: EdgeInsets.symmetric(
                                                                horizontal: MediaQuery.of(context).size.width*0.05
                                                              ),
                                                              child: Column(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                children: [
                                                                  Text("Margherita", style: GoogleFonts.poppins(
                                                                    fontSize: 22,
                                                                    fontWeight: FontWeight.w500,
                                                                    color: const Color.fromRGBO(24, 23, 43, 1)
                                                                  ),),
                                                                  Text("In Veg Pizza", style: GoogleFonts.poppins(
                                                                    fontSize: 16,
                                                                    fontWeight: FontWeight.w400,
                                                                    color: const Color.fromRGBO(110, 128, 176, 1)
                                                                  ),),
                                                                  Text("\$12", style: GoogleFonts.poppins(
                                                                      fontSize: 22,
                                                                      fontWeight: FontWeight.w500,
                                                                      color: const Color.fromRGBO(24, 23, 43, 1)
                                                                  ),)
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: MediaQuery.of(context).size.width*0.2,
                                                            height: MediaQuery.of(context).size.height*0.07,
                                                            decoration: const BoxDecoration(
                                                              color: Colors.transparent
                                                            ),
                                                            child: Column(
                                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                              children: [
                                                                InkWell(
                                                                  onTap: (){},
                                                                  child:  Container(
                                                                    width: MediaQuery.of(context).size.width*0.15,
                                                                    height: MediaQuery.of(context).size.height*0.04,
                                                                    decoration: BoxDecoration(
                                                                      color: Colors.transparent,
                                                                      borderRadius: BorderRadius.circular(15),
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                      children: [
                                                                        Text("Add", style: GoogleFonts.poppins(
                                                                            fontSize: 18,
                                                                            color: const Color.fromRGBO(24, 23, 43, 1),
                                                                            fontWeight: FontWeight.w500
                                                                        ),),
                                                                        Image(
                                                                          image: const AssetImage("assets/images/ConradImages/add.png"),
                                                                          width: MediaQuery.of(context).size.width*0.04,
                                                                        )
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text("Customizable", style: GoogleFonts.poppins(
                                                                    fontSize: 14,
                                                                    fontWeight: FontWeight.w400,
                                                                    color: const Color.fromRGBO(110, 128, 176, 1)
                                                                ),)
                                                              ],
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),

                                                    Container(
                                                      width: MediaQuery.of(context).size.width,
                                                      height: MediaQuery.of(context).size.height*0.1,
                                                      padding: EdgeInsets.symmetric(
                                                          horizontal: MediaQuery.of(context).size.width*0.05
                                                      ),
                                                      margin: EdgeInsets.symmetric(
                                                          vertical: MediaQuery.of(context).size.height*0.01
                                                      ),
                                                      decoration: const BoxDecoration(
                                                          color: Colors.transparent
                                                      ),
                                                      child: Row(
                                                        children: [
                                                          Container(
                                                            height: MediaQuery.of(context).size.height*0.1,
                                                            width: MediaQuery.of(context).size.width*0.2,
                                                            decoration: const BoxDecoration(
                                                              color: Colors.transparent,
                                                            ),
                                                            child: const Image(
                                                              image: AssetImage("assets/images/ConradImages/conradVegLoaded.png"),
                                                              fit: BoxFit.fill,
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                              padding: EdgeInsets.symmetric(
                                                                  horizontal: MediaQuery.of(context).size.width*0.05
                                                              ),
                                                              child: Column(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                children: [
                                                                  Text("Veg Loaded", style: GoogleFonts.poppins(
                                                                      fontSize: 22,
                                                                      fontWeight: FontWeight.w500,
                                                                      color: const Color.fromRGBO(24, 23, 43, 1)
                                                                  ),),
                                                                  Text("In Pizza Mania", style: GoogleFonts.poppins(
                                                                      fontSize: 16,
                                                                      fontWeight: FontWeight.w400,
                                                                      color: const Color.fromRGBO(110, 128, 176, 1)
                                                                  ),),
                                                                  Text("\$8", style: GoogleFonts.poppins(
                                                                      fontSize: 22,
                                                                      fontWeight: FontWeight.w500,
                                                                      color: const Color.fromRGBO(24, 23, 43, 1)
                                                                  ),)
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: MediaQuery.of(context).size.width*0.2,
                                                            height: MediaQuery.of(context).size.height*0.07,
                                                            decoration: const BoxDecoration(
                                                                color: Colors.transparent
                                                            ),
                                                            child: Column(
                                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                              children: [
                                                                InkWell(
                                                                  onTap: (){},
                                                                  child:  Container(
                                                                    width: MediaQuery.of(context).size.width*0.15,
                                                                    height: MediaQuery.of(context).size.height*0.04,
                                                                    decoration: BoxDecoration(
                                                                      color: Colors.transparent,
                                                                      borderRadius: BorderRadius.circular(15),
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                      children: [
                                                                        Text("Add", style: GoogleFonts.poppins(
                                                                            fontSize: 18,
                                                                            color: const Color.fromRGBO(24, 23, 43, 1),
                                                                            fontWeight: FontWeight.w500
                                                                        ),),
                                                                        Image(
                                                                          image: const AssetImage("assets/images/ConradImages/add.png"),
                                                                          width: MediaQuery.of(context).size.width*0.04,
                                                                        )
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text("Customizable", style: GoogleFonts.poppins(
                                                                    fontSize: 14,
                                                                    fontWeight: FontWeight.w400,
                                                                    color: const Color.fromRGBO(110, 128, 176, 1)
                                                                ),)
                                                              ],
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    )

                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                    )
                                  ],
                                )
                            )
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
    );
  }
}
