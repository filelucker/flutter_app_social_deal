import 'package:flutter/material.dart';
import 'package:flutter_app_social_deal/lastminute_screen.dart';
import 'package:flutter_app_social_deal/menu_screen.dart';
import 'package:flutter_app_social_deal/nearby_screen.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

import 'home_screen.dart';


class Home extends StatefulWidget {
  // int logic;
  //
  // Home(this.logic);

  @override
  _HomeState createState() => _HomeState();
}


class _HomeState extends State<Home> {


  SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.pinned;
  SnakeShape snakeShape = SnakeShape.indicator;
  EdgeInsets padding = EdgeInsets.zero;
  ShapeBorder bottomBarShape = null;
  bool showSelectedLabels = true;
  bool showUnselectedLabels = true;
  int _selectedItemPosition = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return HomeScreen();
    case 1:
      return NearbyScreen();
    case 2:
      return LastMinScreen();
    // case 3:
    //
    //   WidgetsBinding.instance.addPostFrameCallback((_) {
    //     logOut();
    //   });
    //   return HomeScreen();
      case 4:
        return MenuScreen();
      default:
        return new Text("Error");
    }
  }

  // _onSelectItem(int index) {
  //   setState(() => _currentIndex = index);
  //   Navigator.of(context).pop(); // close the drawer
  // }
  //

  @override
  Widget build(BuildContext context) {
    // setState(() =>_selectedItemPosition = widget.logic);
    // setState(() => _currentIndex = index);

    return SafeArea(
        child: Scaffold(
          body:_getDrawerItemWidget(_selectedItemPosition),
      // body: TabBarView(
      //   children: [
      //     Container(),
      //     Container(),
      //     Container(),
      //   ],
      // ),
      // bottomNavigationBar: new TabBar(
      //   tabs: [
      //     Tab(
      //       icon: new Icon(Icons.home),
      //     ),
      //     Tab(
      //       icon: new Icon(Icons.shopping_cart),
      //     ),
      //     Tab(
      //       icon: new Icon(Icons.perm_identity),
      //     ),
      //   ],
      //   labelColor: Theme.of(context).primaryColor,
      //   unselectedLabelColor: Colors.black38,
      //   indicatorSize: TabBarIndicatorSize.label,
      //   indicatorPadding: EdgeInsets.all(5.0),
      //   indicatorColor: Theme.of(context).primaryColor,
      // ),
          bottomNavigationBar: SnakeNavigationBar.color(
            // height: 80,
            behaviour: snakeBarStyle,
            snakeShape: snakeShape,
            shape: bottomBarShape,
            padding: padding,

            ///configuration for SnakeNavigationBar.color
            snakeViewColor: Colors.black,
            selectedItemColor:
            snakeShape == SnakeShape.indicator ? Colors.black : null,
            unselectedItemColor: Colors.blueGrey,

            ///configuration for SnakeNavigationBar.gradient
            // snakeViewGradient: selectedGradient,
            // selectedItemGradient: snakeShape == SnakeShape.indicator ? selectedGradient : null,
            // unselectedItemGradient: unselectedGradient,

            showUnselectedLabels: showUnselectedLabels,
            showSelectedLabels: showSelectedLabels,

            currentIndex: _selectedItemPosition,
            onTap: (index) => setState(() => _selectedItemPosition = index),
            items: [
              const BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: 'Home'),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.add_location), label: 'Nearby'),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.brunch_dining), label: 'Last Minute'),

              const BottomNavigationBarItem(
                  icon: Icon(Icons.cast), label: 'microphone'),
              // const BottomNavigationBarItem(
              //     icon: Icon(Icons.search), label: 'search'),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.menu), label: 'Menu')
            ],
            selectedLabelStyle: const TextStyle(fontSize: 14),
            unselectedLabelStyle: const TextStyle(fontSize: 10),
          ),
    ));
  }
}

