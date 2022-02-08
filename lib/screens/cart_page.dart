import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: Text("Cart", style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 24,
                                color: const Color.fromRGBO(24, 23, 43, 1)
                            ),),
                          ),
                        ),
                        InkWell(
                          onTap: (){},
                          child: Container(
                            width: MediaQuery.of(context).size.width*0.15,
                            height: MediaQuery.of(context).size.height*0.07,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            padding: EdgeInsets.symmetric(
                              vertical: MediaQuery.of(context).size.height*0.02,
                              horizontal: MediaQuery.of(context).size.width*0.02,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width*0.95,
                            height: MediaQuery.of(context).size.height*0.12,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(109, 97, 242, 1),
                              borderRadius: BorderRadius.circular(15)
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: MediaQuery.of(context).size.width*0.1,
                            ),

                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Deliver to", style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 25
                                  ),),
                                  InkWell(
                                    onTap: (){},
                                    child: Row(
                                      children: [
                                        Text("242 ST Marks Eve, Finland", style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.w500
                                        ),),
                                        const Icon(
                                          Icons.keyboard_arrow_down_outlined,
                                          size: 25.0,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ),
                          Expanded(
                            child: Container(
                              color: Colors.transparent,
                              padding: EdgeInsets.symmetric(
                                vertical: MediaQuery.of(context).size.height*0.01
                              ),
                              child: ListView(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height*0.08,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: MediaQuery.of(context).size.width*0.05
                                    ),
                                    // margin: EdgeInsets.symmetric(
                                    //     vertical: MediaQuery.of(context).size.height*0.02
                                    // ),
                                    decoration: const BoxDecoration(
                                        color: Colors.transparent
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: MediaQuery.of(context).size.height*0.08,
                                          width: MediaQuery.of(context).size.width*0.18,
                                          decoration: const BoxDecoration(
                                            color: Colors.transparent,
                                          ),
                                          child: const Image(
                                            image: AssetImage("assets/images/ConradImages/conradFarmHouse.png"),
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
                                                Text("Farm House", style: GoogleFonts.poppins(
                                                    fontSize: 22,
                                                    fontWeight: FontWeight.w500,
                                                    color: const Color.fromRGBO(24, 23, 43, 1)
                                                ),),
                                                Container(
                                                  width: MediaQuery.of(context).size.width*0.2,
                                                  color: Colors.transparent,
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                    children: [
                                                      InkWell(
                                                        onTap: (){},
                                                        child: Image(
                                                          image: AssetImage("assets/images/substract.png"),
                                                          width: MediaQuery.of(context).size.width*0.04,
                                                        ),
                                                      ),
                                                      Text("1", style: GoogleFonts.poppins(
                                                          fontSize: 20,
                                                          color: const Color.fromRGBO(24, 23, 43, 1),
                                                          fontWeight: FontWeight.w500
                                                      ),),
                                                      InkWell(
                                                        onTap: (){},
                                                        child: Image(
                                                          image: AssetImage("assets/images/ConradImages/add.png"),
                                                          width: MediaQuery.of(context).size.width*0.04,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )
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
                                                      Text("\$12", style: GoogleFonts.poppins(
                                                          fontSize: 25,
                                                          color: const Color.fromRGBO(24, 23, 43, 1),
                                                          fontWeight: FontWeight.w500
                                                      ),),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),

                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height*0.08,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: MediaQuery.of(context).size.width*0.05
                                    ),
                                    margin: EdgeInsets.symmetric(
                                        vertical: MediaQuery.of(context).size.height*0.02
                                    ),
                                    decoration: const BoxDecoration(
                                        color: Colors.transparent
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: MediaQuery.of(context).size.height*0.08,
                                          width: MediaQuery.of(context).size.width*0.18,
                                          decoration: const BoxDecoration(
                                            color: Colors.transparent,
                                          ),
                                          child: const Image(
                                            image: AssetImage("assets/images/ConradImages/conradFreshVeggie.png"),
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
                                                Text("Fresh Veggie", style: GoogleFonts.poppins(
                                                    fontSize: 22,
                                                    fontWeight: FontWeight.w500,
                                                    color: const Color.fromRGBO(24, 23, 43, 1)
                                                ),),
                                                Container(
                                                  width: MediaQuery.of(context).size.width*0.2,
                                                  color: Colors.transparent,
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                    children: [
                                                      InkWell(
                                                        onTap: (){},
                                                        child: Image(
                                                          image: AssetImage("assets/images/substract.png"),
                                                          width: MediaQuery.of(context).size.width*0.04,
                                                        ),
                                                      ),
                                                      Text("1", style: GoogleFonts.poppins(
                                                          fontSize: 20,
                                                          color: const Color.fromRGBO(24, 23, 43, 1),
                                                          fontWeight: FontWeight.w500
                                                      ),),
                                                      InkWell(
                                                        onTap: (){},
                                                        child: Image(
                                                          image: const AssetImage("assets/images/ConradImages/add.png"),
                                                          width: MediaQuery.of(context).size.width*0.04,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )
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
                                                      Text("\$11.99", style: GoogleFonts.poppins(
                                                          fontSize: 25,
                                                          color: const Color.fromRGBO(24, 23, 43, 1),
                                                          fontWeight: FontWeight.w500
                                                      ),),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin: EdgeInsets.only(
                                      top: MediaQuery.of(context).size.height*0.08
                                    ),
                                    decoration: const BoxDecoration(
                                      color: Colors.transparent
                                    ),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context).size.width,
                                          padding: EdgeInsets.symmetric(
                                            horizontal: MediaQuery.of(context).size.width*0.1
                                          ),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Promo Code", style: GoogleFonts.poppins(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w600
                                              ),),
                                              Image(
                                                image: AssetImage("assets/images/ConradImages/add.png"),
                                                width: MediaQuery.of(context).size.width*0.05,
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: MediaQuery.of(context).size.width,
                                          height: MediaQuery.of(context).size.height*0.001,
                                          margin: EdgeInsets.only(
                                            top: MediaQuery.of(context).size.height*0.04,
                                            bottom: MediaQuery.of(context).size.height*0.02
                                          ),
                                          decoration: const BoxDecoration(
                                            color: Color.fromRGBO(110, 128, 176, 0.6),
                                          ),
                                        ),

                                        Container(
                                          // height: MediaQuery.of(context).size.height*0.5,
                                          width: MediaQuery.of(context).size.width,
                                          decoration: const BoxDecoration(
                                            color: Colors.transparent
                                          ),
                                          padding: EdgeInsets.symmetric(
                                            vertical: MediaQuery.of(context).size.height*0.02
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                width: MediaQuery.of(context).size.width,
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: MediaQuery.of(context).size.width*0.1
                                                ),
                                                margin: EdgeInsets.symmetric(
                                                  vertical: MediaQuery.of(context).size.height*0.01
                                                ),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text("Item Total", style: GoogleFonts.poppins(
                                                      fontSize: 24,
                                                      color: const Color.fromRGBO(110, 128, 176, 1)
                                                    ),),
                                                    Text("\$23.99", style: GoogleFonts.poppins(
                                                        fontSize: 24,
                                                        color: const Color.fromRGBO(110, 128, 176, 1)
                                                    ),)
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                width: MediaQuery.of(context).size.width,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: MediaQuery.of(context).size.width*0.1
                                                ),
                                                margin: EdgeInsets.symmetric(
                                                    vertical: MediaQuery.of(context).size.height*0.01
                                                ),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text("Discount", style: GoogleFonts.poppins(
                                                        fontSize: 24,
                                                        color: const Color.fromRGBO(110, 128, 176, 1)
                                                    ),),
                                                    Text("-\$10", style: GoogleFonts.poppins(
                                                        fontSize: 24,
                                                        color: const Color.fromRGBO(110, 128, 176, 1)
                                                    ),)
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                width: MediaQuery.of(context).size.width,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: MediaQuery.of(context).size.width*0.1
                                                ),
                                                margin: EdgeInsets.symmetric(
                                                    vertical: MediaQuery.of(context).size.height*0.01
                                                ),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text("Tax", style: GoogleFonts.poppins(
                                                        fontSize: 24,
                                                        color: const Color.fromRGBO(110, 128, 176, 1)
                                                    ),),
                                                    Text("\$2", style: GoogleFonts.poppins(
                                                        fontSize: 24,
                                                        color: const Color.fromRGBO(110, 128, 176, 1)
                                                    ),)
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                width: MediaQuery.of(context).size.width,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: MediaQuery.of(context).size.width*0.1
                                                ),
                                                margin: EdgeInsets.symmetric(
                                                    vertical: MediaQuery.of(context).size.height*0.01
                                                ),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text("Total", style: GoogleFonts.poppins(
                                                        fontSize: 24,
                                                        color: const Color.fromRGBO(24, 23, 43, 1),
                                                        fontWeight: FontWeight.w700
                                                    ),),
                                                    Text("\$15.99", style: GoogleFonts.poppins(
                                                        fontSize:28,
                                                        color: const Color.fromRGBO(24, 23, 43, 1),
                                                        fontWeight: FontWeight.w600
                                                    ),)
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                width: MediaQuery.of(context).size.width,
                                                height: MediaQuery.of(context).size.height*0.08,
                                                decoration: BoxDecoration(
                                                  color: Color.fromRGBO(109, 97, 242, 1),
                                                  borderRadius: BorderRadius.circular(20)
                                                ),
                                                margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.1),
                                                alignment: Alignment.center,
                                                child: Text("Continue", style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 24,
                                                  color: Colors.white
                                                ),),
                                              )
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
                      ),
                    ),
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
