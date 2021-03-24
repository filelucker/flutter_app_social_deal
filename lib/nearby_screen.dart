import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ns_utils/utils/sizes.dart';

class NearbyScreen extends StatefulWidget {
  @override
  _NearbyScreenState createState() => _NearbyScreenState();
}

class _NearbyScreenState extends State<NearbyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nearby'),
      ),
      body: SizedBox.expand(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text('Nearby'),
            ),
            SizedBox.expand(
              child: DraggableScrollableSheet(
                  initialChildSize: 0.25,
                  // maxChildSize: 0.50,
                  minChildSize: 0.10,
                  builder: (BuildContext context, ScrollController scrollController) {
                    return Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(color: Colors.grey, blurRadius: 10)
                          ]),
                      child: ListView(
                        controller: scrollController,
                        children: [
                          Center(
                            child: Container(
                              width: Sizes.getSize(50),
                              height: Sizes.getSize(5),
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(5)
                              ),

                            ),
                          ),

                          Center(child: Text('View List'))
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
