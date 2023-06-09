import 'package:flutter/material.dart';

class Details_Screen extends StatefulWidget {
  const Details_Screen({Key? key}) : super(key: key);

  @override
  State<Details_Screen> createState() => _Details_ScreenState();
}

class _Details_ScreenState extends State<Details_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "details Page",
          style: TextStyle(color: Colors.black),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: [
          Icon(
            Icons.shopping_cart,
            color: Colors.black,
            size: 27,
          ),
          SizedBox(
            width: 15,
          ),
        ],
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.shopping_cart_checkout_outlined,
          size: 35,
        ),
        backgroundColor: Colors.red,
      ),
      body: Container(),
    );
  }
}
