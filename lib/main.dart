import 'package:black_hole_delivery/on_boarding/first_page.dart';
import 'package:black_hole_delivery/on_boarding/on_bording.dart';
import 'package:black_hole_delivery/on_boarding/second_page.dart';
import 'package:black_hole_delivery/on_boarding/third_page.dart';
import 'package:black_hole_delivery/screens/cart_page.dart';
import 'package:black_hole_delivery/screens/home_page.dart';
import 'package:black_hole_delivery/screens/login_screen.dart';
import 'package:black_hole_delivery/screens/menu_page.dart';
import 'package:black_hole_delivery/screens/restaurant_page.dart';
import 'package:black_hole_delivery/screens/search_page.dart';
import 'package:black_hole_delivery/screens/search_page_results.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const
      Pages(),
    );
  }
}

class Pages extends StatefulWidget {
  const Pages({Key? key}) : super(key: key);

  @override
  _PagesState createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  int page = 1;
  final _controller = PageController();

  List<Widget> widgets = [
    const One(),
    const Two(),
    const Three(),
    const SignUp(),
    const Homepage(),
    const RestaurantPage(),
    const MenuPage(),
    const CartPage(),
    const SearchPage(),
    const SearchResults()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          children: widgets,
          controller: _controller,
          onPageChanged: (num){
            setState(() {
              page = num;
            });
          },
        )
    );
  }
}


