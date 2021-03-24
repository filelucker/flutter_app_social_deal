import 'package:flutter/material.dart';
import 'package:ns_utils/src.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: Sizes.getSize(20),
                ),
                Container(
                  height: Sizes.getSize(120),
                  width: Sizes.getSize(120),
                  child: CircleAvatar(
                    backgroundColor: Colors.blueAccent,
                    child: Text('data'),
                  ),
                ),
                SizedBox(
                  height: Sizes.getSize(20),
                ),
                Text('Log in or Sign up to manage your account details'),
                SizedBox(
                  height: Sizes.getSize(20),
                ),
                Text('Log in / Sign up'),
                SizedBox(
                  height: Sizes.getSize(20),
                ),
                ListTile(
                  title: Text("Menu",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: FontSizes.getSp(20))),
                  dense: false,
                ),
                ListTile(
                  title: Text("Customer service"),
                  leading: Icon(Icons.headset),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                  dense: false,
                ),
                ListTile(
                  title: Text("My voucher"),
                  leading: Icon(Icons.label),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                  dense: false,
                ),
                ListTile(
                  title: Text("My booking"),
                  leading: Icon(Icons.calendar_today),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                  dense: false,
                ),
                ListTile(
                  title: Text("Balance"),
                  leading: Icon(Icons.card_travel),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                  dense: false,
                ),
                ListTile(
                  title: Text("Sharing is caring"),
                  leading: Icon(Icons.add_shopping_cart),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                  dense: false,
                ),
                ListTile(
                  title: Text("Earn \$ 5"),
                  leading: Icon(Icons.euro),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                  dense: false,
                ),
                ListTile(
                  title: Text("Loyalti card"),
                  leading: Icon(Icons.credit_card),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                  dense: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
