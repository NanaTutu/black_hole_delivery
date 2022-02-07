import 'package:black_hole_delivery/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  final PersistentTabController _controller = PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens(){
    return [
      Homepage()
    ];
  }

  List<PersistentBottomNavBarItem> _navBarItems(){
    return[
      PersistentBottomNavBarItem(
        icon: const Icon(FontAwesomeIcons.home),
        title: ("Home"),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      hideNavigationBarWhenKeyboardShows: true,
      stateManagement: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10),
        colorBehindNavBar: Colors.white
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
        animateTabTransition: true
      ),
      navBarStyle: NavBarStyle.style9,
    );
  }
}


