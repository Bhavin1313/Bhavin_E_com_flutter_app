import 'package:e_com/Screens/all_product_list.dart';
import 'package:e_com/Screens/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color mycolor = Colors.black;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "HomePage",
          style: TextStyle(color: mycolor),
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.shopping_cart,
            color: mycolor,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "SmartPhones",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...AllProducts.map(
                    (e) => (e["category"] == "smartphones")
                        ? GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed('detail_page');
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                  left: 20, top: 20, bottom: 20),
                              height: h * 0.392,
                              width: w * 0.495,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(1, 2),
                                      spreadRadius: 1,
                                      blurRadius: 2,
                                      color: Colors.grey,
                                    )
                                  ]),
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Stack(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              topRight: Radius.circular(30),
                                            ),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                e['thumbnail'],
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 35,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              bottomRight: Radius.circular(10),
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "${e['discountPercentage']} %",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      padding: EdgeInsets.only(left: 15),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(30),
                                          bottomRight: Radius.circular(30),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            e['title'],
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            "\$ ${e['price']}",
                                            style: TextStyle(
                                                fontSize: 23,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          RatingBarIndicator(
                                            rating: e['rating'].toDouble(),
                                            itemBuilder: (context, i) {
                                              return Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              );
                                            },
                                            itemCount: 5,
                                            itemSize: 25,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : Container(),
                  ).toList(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Laptops",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...AllProducts.map(
                    (e) => (e["category"] == "laptops")
                        ? GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed('detail_page');
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                  left: 20, top: 20, bottom: 20),
                              height: h * 0.392,
                              width: w * 0.495,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(1, 2),
                                        spreadRadius: 1,
                                        blurRadius: 2,
                                        color: Colors.grey)
                                  ]),
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Stack(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              topRight: Radius.circular(30),
                                            ),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                e['thumbnail'],
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 35,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              bottomRight: Radius.circular(10),
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "${e['discountPercentage']} %",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      padding: EdgeInsets.only(left: 15),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(30),
                                          bottomRight: Radius.circular(30),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            e['title'],
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            "\$ ${e['price']}",
                                            style: TextStyle(
                                                fontSize: 23,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          RatingBarIndicator(
                                            rating: e['rating'].toDouble(),
                                            itemBuilder: (context, i) {
                                              return Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              );
                                            },
                                            itemCount: 5,
                                            itemSize: 25,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : Container(),
                  ).toList(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Fragrances",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...AllProducts.map(
                    (e) => (e["category"] == "fragrances")
                        ? GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed('detail_page');
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                  left: 20, top: 20, bottom: 20),
                              height: h * 0.392,
                              width: w * 0.495,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(1, 2),
                                        spreadRadius: 1,
                                        blurRadius: 2,
                                        color: Colors.grey)
                                  ]),
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Stack(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              topRight: Radius.circular(30),
                                            ),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                e['thumbnail'],
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 35,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              bottomRight: Radius.circular(10),
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "${e['discountPercentage']} %",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      padding: EdgeInsets.only(left: 15),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(30),
                                          bottomRight: Radius.circular(30),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            e['title'],
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            "\$ ${e['price']}",
                                            style: TextStyle(
                                                fontSize: 23,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          RatingBarIndicator(
                                            rating: e['rating'].toDouble(),
                                            itemBuilder: (context, i) {
                                              return Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              );
                                            },
                                            itemCount: 5,
                                            itemSize: 25,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : Container(),
                  ).toList(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Skincare",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...AllProducts.map(
                    (e) => (e["category"] == "skincare")
                        ? GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed('detail_page');
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                  left: 20, top: 20, bottom: 20),
                              height: h * 0.392,
                              width: w * 0.495,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(1, 2),
                                        spreadRadius: 1,
                                        blurRadius: 2,
                                        color: Colors.grey)
                                  ]),
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Stack(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              topRight: Radius.circular(30),
                                            ),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                e['thumbnail'],
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 35,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              bottomRight: Radius.circular(10),
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "${e['discountPercentage']} %",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      padding: EdgeInsets.only(left: 15),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(30),
                                          bottomRight: Radius.circular(30),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            e['title'],
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            "\$ ${e['price']}",
                                            style: TextStyle(
                                                fontSize: 23,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          RatingBarIndicator(
                                            rating: e['rating'].toDouble(),
                                            itemBuilder: (context, i) {
                                              return Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              );
                                            },
                                            itemCount: 5,
                                            itemSize: 25,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : Container(),
                  ).toList(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Groceries",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...AllProducts.map(
                    (e) => (e["category"] == "groceries")
                        ? GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed('detail_page');
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                  left: 20, top: 20, bottom: 20),
                              height: h * 0.392,
                              width: w * 0.495,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(1, 2),
                                        spreadRadius: 1,
                                        blurRadius: 2,
                                        color: Colors.grey)
                                  ]),
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Stack(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              topRight: Radius.circular(30),
                                            ),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                e['thumbnail'],
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 35,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              bottomRight: Radius.circular(10),
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "${e['discountPercentage']} %",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      padding: EdgeInsets.only(left: 15),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(30),
                                          bottomRight: Radius.circular(30),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            e['title'],
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            "\$ ${e['price']}",
                                            style: TextStyle(
                                                fontSize: 23,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          RatingBarIndicator(
                                            rating: e['rating'].toDouble(),
                                            itemBuilder: (context, i) {
                                              return Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              );
                                            },
                                            itemCount: 5,
                                            itemSize: 25,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : Container(),
                  ).toList(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Home Decoration",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...AllProducts.map(
                    (e) => (e["category"] == "home-decoration")
                        ? GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed('detail_page');
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                  left: 20, top: 20, bottom: 20),
                              height: h * 0.392,
                              width: w * 0.495,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(1, 2),
                                        spreadRadius: 1,
                                        blurRadius: 2,
                                        color: Colors.grey)
                                  ]),
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Stack(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              topRight: Radius.circular(30),
                                            ),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                e['thumbnail'],
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 35,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              bottomRight: Radius.circular(10),
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "${e['discountPercentage']} %",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      padding: EdgeInsets.only(left: 15),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(30),
                                          bottomRight: Radius.circular(30),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            e['title'],
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            "\$ ${e['price']}",
                                            style: TextStyle(
                                                fontSize: 23,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          RatingBarIndicator(
                                            rating: e['rating'].toDouble(),
                                            itemBuilder: (context, i) {
                                              return Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              );
                                            },
                                            itemCount: 5,
                                            itemSize: 25,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : Container(),
                  ).toList(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Furniture",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...AllProducts.map(
                    (e) => (e["category"] == "furniture")
                        ? GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed('detail_page');
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                  left: 20, top: 20, bottom: 20),
                              height: h * 0.392,
                              width: w * 0.495,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(1, 2),
                                        spreadRadius: 1,
                                        blurRadius: 2,
                                        color: Colors.grey)
                                  ]),
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Stack(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              topRight: Radius.circular(30),
                                            ),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                e['thumbnail'],
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 35,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              bottomRight: Radius.circular(10),
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "${e['discountPercentage']} %",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      padding: EdgeInsets.only(left: 15),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(30),
                                          bottomRight: Radius.circular(30),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            e['title'],
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            "\$ ${e['price']}",
                                            style: TextStyle(
                                                fontSize: 23,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          RatingBarIndicator(
                                            rating: e['rating'].toDouble(),
                                            itemBuilder: (context, i) {
                                              return Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              );
                                            },
                                            itemCount: 5,
                                            itemSize: 25,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : Container(),
                  ).toList(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Tops",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...AllProducts.map(
                    (e) => (e["category"] == "tops")
                        ? GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed('detail_page');
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                  left: 20, top: 20, bottom: 20),
                              height: h * 0.392,
                              width: w * 0.495,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(1, 2),
                                        spreadRadius: 1,
                                        blurRadius: 2,
                                        color: Colors.grey)
                                  ]),
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Stack(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              topRight: Radius.circular(30),
                                            ),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                e['thumbnail'],
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 35,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              bottomRight: Radius.circular(10),
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "${e['discountPercentage']} %",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      padding: EdgeInsets.only(left: 15),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(30),
                                          bottomRight: Radius.circular(30),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            e['title'],
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            "\$ ${e['price']}",
                                            style: TextStyle(
                                                fontSize: 23,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          RatingBarIndicator(
                                            rating: e['rating'].toDouble(),
                                            itemBuilder: (context, i) {
                                              return Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              );
                                            },
                                            itemCount: 5,
                                            itemSize: 25,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : Container(),
                  ).toList(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Womens Dresses",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...AllProducts.map(
                    (e) => (e["category"] == "womens-dresses")
                        ? GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed('detail_page');
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                  left: 20, top: 20, bottom: 20),
                              height: h * 0.392,
                              width: w * 0.495,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(1, 2),
                                        spreadRadius: 1,
                                        blurRadius: 2,
                                        color: Colors.grey)
                                  ]),
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Stack(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              topRight: Radius.circular(30),
                                            ),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                e['thumbnail'],
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 35,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              bottomRight: Radius.circular(10),
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "${e['discountPercentage']} %",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      padding: EdgeInsets.only(left: 15),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(30),
                                          bottomRight: Radius.circular(30),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            e['title'],
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            "\$ ${e['price']}",
                                            style: TextStyle(
                                                fontSize: 23,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          RatingBarIndicator(
                                            rating: e['rating'].toDouble(),
                                            itemBuilder: (context, i) {
                                              return Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              );
                                            },
                                            itemCount: 5,
                                            itemSize: 25,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : Container(),
                  ).toList(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Womens Shoes",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...AllProducts.map(
                    (e) => (e["category"] == "womens-shoes")
                        ? GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed('detail_page');
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                  left: 20, top: 20, bottom: 20),
                              height: h * 0.392,
                              width: w * 0.495,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(1, 2),
                                        spreadRadius: 1,
                                        blurRadius: 2,
                                        color: Colors.grey)
                                  ]),
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Stack(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              topRight: Radius.circular(30),
                                            ),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                e['thumbnail'],
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 35,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              bottomRight: Radius.circular(10),
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "${e['discountPercentage']} %",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      padding: EdgeInsets.only(left: 15),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(30),
                                          bottomRight: Radius.circular(30),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            e['title'],
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            "\$ ${e['price']}",
                                            style: TextStyle(
                                                fontSize: 23,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          RatingBarIndicator(
                                            rating: e['rating'].toDouble(),
                                            itemBuilder: (context, i) {
                                              return Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              );
                                            },
                                            itemCount: 5,
                                            itemSize: 25,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : Container(),
                  ).toList(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Mens Shirts",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...AllProducts.map(
                    (e) => (e["category"] == "mens-shirts")
                        ? GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed('detail_page');
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                  left: 20, top: 20, bottom: 20),
                              height: h * 0.392,
                              width: w * 0.495,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(1, 2),
                                        spreadRadius: 1,
                                        blurRadius: 2,
                                        color: Colors.grey)
                                  ]),
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Stack(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              topRight: Radius.circular(30),
                                            ),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                e['thumbnail'],
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 35,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              bottomRight: Radius.circular(10),
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "${e['discountPercentage']} %",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      padding: EdgeInsets.only(left: 15),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(30),
                                          bottomRight: Radius.circular(30),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            e['title'],
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            "\$ ${e['price']}",
                                            style: TextStyle(
                                                fontSize: 23,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          RatingBarIndicator(
                                            rating: e['rating'].toDouble(),
                                            itemBuilder: (context, i) {
                                              return Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              );
                                            },
                                            itemCount: 5,
                                            itemSize: 25,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : Container(),
                  ).toList(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Mens Shoes",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...AllProducts.map(
                    (e) => (e["category"] == "mens-shoes")
                        ? GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed('detail_page');
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                  left: 20, top: 20, bottom: 20),
                              height: h * 0.392,
                              width: w * 0.495,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(1, 2),
                                        spreadRadius: 1,
                                        blurRadius: 2,
                                        color: Colors.grey)
                                  ]),
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Stack(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              topRight: Radius.circular(30),
                                            ),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                e['thumbnail'],
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 35,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              bottomRight: Radius.circular(10),
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "${e['discountPercentage']} %",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      padding: EdgeInsets.only(left: 15),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(30),
                                          bottomRight: Radius.circular(30),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            e['title'],
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            "\$ ${e['price']}",
                                            style: TextStyle(
                                                fontSize: 23,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          RatingBarIndicator(
                                            rating: e['rating'].toDouble(),
                                            itemBuilder: (context, i) {
                                              return Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              );
                                            },
                                            itemCount: 5,
                                            itemSize: 25,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : Container(),
                  ).toList(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Mens Watches",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...AllProducts.map(
                    (e) => (e["category"] == "mens-watches")
                        ? GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed('detail_page');
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                  left: 20, top: 20, bottom: 20),
                              height: h * 0.392,
                              width: w * 0.495,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(1, 2),
                                        spreadRadius: 1,
                                        blurRadius: 2,
                                        color: Colors.grey)
                                  ]),
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Stack(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              topRight: Radius.circular(30),
                                            ),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                e['thumbnail'],
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 35,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              bottomRight: Radius.circular(10),
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "${e['discountPercentage']} %",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      padding: EdgeInsets.only(left: 15),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(30),
                                          bottomRight: Radius.circular(30),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            e['title'],
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            "\$ ${e['price']}",
                                            style: TextStyle(
                                                fontSize: 23,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          RatingBarIndicator(
                                            rating: e['rating'].toDouble(),
                                            itemBuilder: (context, i) {
                                              return Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              );
                                            },
                                            itemCount: 5,
                                            itemSize: 25,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : Container(),
                  ).toList(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Womens Watches",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...AllProducts.map(
                    (e) => (e["category"] == "womens-watches")
                        ? GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed('detail_page');
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                  left: 20, top: 20, bottom: 20),
                              height: h * 0.392,
                              width: w * 0.495,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(1, 2),
                                        spreadRadius: 1,
                                        blurRadius: 2,
                                        color: Colors.grey)
                                  ]),
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Stack(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              topRight: Radius.circular(30),
                                            ),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                e['thumbnail'],
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 35,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              bottomRight: Radius.circular(10),
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "${e['discountPercentage']} %",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      padding: EdgeInsets.only(left: 15),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(30),
                                          bottomRight: Radius.circular(30),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            e['title'],
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            "\$ ${e['price']}",
                                            style: TextStyle(
                                                fontSize: 23,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          RatingBarIndicator(
                                            rating: e['rating'].toDouble(),
                                            itemBuilder: (context, i) {
                                              return Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              );
                                            },
                                            itemCount: 5,
                                            itemSize: 25,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : Container(),
                  ).toList(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Womens Bags",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...AllProducts.map(
                    (e) => (e["category"] == "womens-bags")
                        ? GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed('detail_page');
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                  left: 20, top: 20, bottom: 20),
                              height: h * 0.392,
                              width: w * 0.495,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(1, 2),
                                        spreadRadius: 1,
                                        blurRadius: 2,
                                        color: Colors.grey)
                                  ]),
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Stack(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              topRight: Radius.circular(30),
                                            ),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                e['thumbnail'],
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 35,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              bottomRight: Radius.circular(10),
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "${e['discountPercentage']} %",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      padding: EdgeInsets.only(left: 15),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(30),
                                          bottomRight: Radius.circular(30),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            e['title'],
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            "\$ ${e['price']}",
                                            style: TextStyle(
                                                fontSize: 23,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          RatingBarIndicator(
                                            rating: e['rating'].toDouble(),
                                            itemBuilder: (context, i) {
                                              return Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              );
                                            },
                                            itemCount: 5,
                                            itemSize: 25,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : Container(),
                  ).toList(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Womens Jewellery",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...AllProducts.map(
                    (e) => (e["category"] == "womens-jewellery")
                        ? GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed('detail_page');
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                  left: 20, top: 20, bottom: 20),
                              height: h * 0.392,
                              width: w * 0.495,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(1, 2),
                                        spreadRadius: 1,
                                        blurRadius: 2,
                                        color: Colors.grey)
                                  ]),
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Stack(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              topRight: Radius.circular(30),
                                            ),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                e['thumbnail'],
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 35,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              bottomRight: Radius.circular(10),
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "${e['discountPercentage']} %",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      padding: EdgeInsets.only(left: 15),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(30),
                                          bottomRight: Radius.circular(30),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            e['title'],
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            "\$ ${e['price']}",
                                            style: TextStyle(
                                                fontSize: 23,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          RatingBarIndicator(
                                            rating: e['rating'].toDouble(),
                                            itemBuilder: (context, i) {
                                              return Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              );
                                            },
                                            itemCount: 5,
                                            itemSize: 25,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : Container(),
                  ).toList(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Sunglasses",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...AllProducts.map(
                    (e) => (e["category"] == "sunglasses")
                        ? GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed('detail_page');
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                  left: 20, top: 20, bottom: 20),
                              height: h * 0.392,
                              width: w * 0.495,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(1, 2),
                                        spreadRadius: 1,
                                        blurRadius: 2,
                                        color: Colors.grey)
                                  ]),
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Stack(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              topRight: Radius.circular(30),
                                            ),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                e['thumbnail'],
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 35,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              bottomRight: Radius.circular(10),
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "${e['discountPercentage']} %",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      padding: EdgeInsets.only(left: 15),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(30),
                                          bottomRight: Radius.circular(30),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            e['title'],
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            "\$ ${e['price']}",
                                            style: TextStyle(
                                                fontSize: 23,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          RatingBarIndicator(
                                            rating: e['rating'].toDouble(),
                                            itemBuilder: (context, i) {
                                              return Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              );
                                            },
                                            itemCount: 5,
                                            itemSize: 25,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : Container(),
                  ).toList(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Automotive",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...AllProducts.map(
                    (e) => (e["category"] == "automotive")
                        ? GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed('detail_page');
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                  left: 20, top: 20, bottom: 20),
                              height: h * 0.392,
                              width: w * 0.495,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(1, 2),
                                        spreadRadius: 1,
                                        blurRadius: 2,
                                        color: Colors.grey)
                                  ]),
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Stack(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              topRight: Radius.circular(30),
                                            ),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                e['thumbnail'],
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 35,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              bottomRight: Radius.circular(10),
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "${e['discountPercentage']} %",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      padding: EdgeInsets.only(left: 15),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(30),
                                          bottomRight: Radius.circular(30),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            e['title'],
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            "\$ ${e['price']}",
                                            style: TextStyle(
                                                fontSize: 23,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          RatingBarIndicator(
                                            rating: e['rating'].toDouble(),
                                            itemBuilder: (context, i) {
                                              return Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              );
                                            },
                                            itemCount: 5,
                                            itemSize: 25,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : Container(),
                  ).toList(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Motorcycle",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...AllProducts.map(
                    (e) => (e["category"] == "motorcycle")
                        ? GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed('detail_page');
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                  left: 20, top: 20, bottom: 20),
                              height: h * 0.392,
                              width: w * 0.495,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(1, 2),
                                        spreadRadius: 1,
                                        blurRadius: 2,
                                        color: Colors.grey)
                                  ]),
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Stack(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              topRight: Radius.circular(30),
                                            ),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                e['thumbnail'],
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 35,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              bottomRight: Radius.circular(10),
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "${e['discountPercentage']} %",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      padding: EdgeInsets.only(left: 15),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(30),
                                          bottomRight: Radius.circular(30),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            e['title'],
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            "\$ ${e['price']}",
                                            style: TextStyle(
                                                fontSize: 23,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          RatingBarIndicator(
                                            rating: e['rating'].toDouble(),
                                            itemBuilder: (context, i) {
                                              return Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              );
                                            },
                                            itemCount: 5,
                                            itemSize: 25,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : Container(),
                  ).toList(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Lighting",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...AllProducts.map(
                    (e) => (e["category"] == "lighting")
                        ? GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed('detail_page');
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                  left: 20, top: 20, bottom: 20),
                              height: h * 0.392,
                              width: w * 0.495,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(1, 2),
                                        spreadRadius: 1,
                                        blurRadius: 2,
                                        color: Colors.grey)
                                  ]),
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Stack(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              topRight: Radius.circular(30),
                                            ),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                e['thumbnail'],
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 35,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              bottomRight: Radius.circular(10),
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "${e['discountPercentage']} %",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      padding: EdgeInsets.only(left: 15),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(30),
                                          bottomRight: Radius.circular(30),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            e['title'],
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            "\$ ${e['price']}",
                                            style: TextStyle(
                                                fontSize: 23,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          RatingBarIndicator(
                                            rating: e['rating'].toDouble(),
                                            itemBuilder: (context, i) {
                                              return Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              );
                                            },
                                            itemCount: 5,
                                            itemSize: 25,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : Container(),
                  ).toList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
