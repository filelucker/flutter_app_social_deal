import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ns_utils/src.dart';

import 'home.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
            bottom: TabBar(
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                Tab(
                  text: 'Popular',
                ),
                Tab(
                  text: 'Now available',
                ),
                Tab(
                  text: 'Favorite',
                ),
                Tab(
                  text: 'Delivery & Take-away',
                ),
              ],
            ),
            // title: DropdownButtonHideUnderline(
            //   child: DropdownButton(
            //       value: _value,
            //       icon: Icon(
            //         Icons.arrow_drop_down,
            //         color: Colors.white,
            //       ),
            //       items: [
            //         DropdownMenuItem(
            //
            //           child: Text(
            //             "First Item",
            //             style: TextStyle(
            //                 color: Colors.white, fontWeight: FontWeight.bold),
            //           ),
            //           value:  1,
            //         ),
            //         // DropdownMenuItem(
            //         //   child: Text("Second Item"),
            //         //   value: 2,
            //         // ),
            //         // DropdownMenuItem(child: Text("Third Item"), value: 3),
            //         // DropdownMenuItem(child: Text("Fourth Item"), value: 4)
            //       ],
            //       onChanged: (value) {
            //         setState(() {
            //           _value = value;
            //         });
            //       }),
            // ),
            title: GestureDetector(
              onTap: () {
                Form();
                print("Container was tapped");
              },
              child: Row(children: <Widget>[
                Text("Hello"),
                Text("   "),
                Icon(Icons.arrow_drop_down_sharp),
              ]),
            )),
        body: TabBarView(
          children: [
            // Icon(Icons.directions_car),
            PopularHome(),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
            FlatButton(
              onPressed: () => {},
              child: Text("Press me"),
            ),
          ],
        ),
      ),
    );
  }
}

class Form extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 500,
    );
  }
}

class PopularHome extends StatelessWidget {
  final List<String> entries = <String>[
    'Aaaaaaaaaaaa ',
    'B',
    'C'
  ];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      // padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: Sizes.getSize(450),
          // color: Colors.amber[colorCodes[index]],
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Banner(

                        location: BannerLocation.topEnd,
                        message: '10%',
                        color: Colors.green.withOpacity(0.6),
                        textStyle: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 12.0, letterSpacing: 1.0),
                        textDirection: TextDirection.ltr,
                        child: new FadeInImage.assetNetwork(
                          placeholder: 'background_eraser.jpg',
                          image: 'https://picsum.photos/250?image=9',
                          fit: BoxFit.fill,
                          height: Sizes.getSize(250),
                        ),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    overflow: TextOverflow.ellipsis,
                    text: TextSpan(
                        style: TextStyle(color: Colors.black, fontSize: FontSizes.getSp(15),fontWeight: FontWeight.bold),
                        text: 'RichText Entry ${entries[index]}'),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: FractionallySizedBox(
                    widthFactor: 0.5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Container(
                        color: Colors.lightGreenAccent,
                        height: Sizes.getSize(30),
                        width: Sizes.getSize(300),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 0, color: Colors.lightGreenAccent),
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(10.0),
                                  ),
                                ),
                                contentPadding: EdgeInsets.symmetric(horizontal: 12),
                                prefixIcon: Icon(Icons.done),
                                hintText: 'Enter a search the'
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    overflow: TextOverflow.ellipsis,
                    strutStyle: StrutStyle(fontSize: FontSizes.getSp(20)),
                    text: TextSpan(
                        style: TextStyle(color: Colors.black),
                        text: 'RichText Entry ${entries[index]}'),
                  ),
                ),
              ),   Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    overflow: TextOverflow.ellipsis,
                    strutStyle: StrutStyle(fontSize: FontSizes.getSp(20)),
                    text: TextSpan(
                        style: TextStyle(color: Colors.black),
                        text: 'RichText Entry ${entries[index]}'),
                  ),
                ),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider( height: 20, color: Colors.grey,),
    );
  }
}
