import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/most_popular.dart';

class popular2 extends StatefulWidget {
  final int index;
  popular2({required this.index});

  @override
  State<popular2> createState() => _popular2State();
}

class _popular2State extends State<popular2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(
            children: [
              Container(
                height: 500,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25))),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(25),
                      bottomLeft: Radius.circular(25)),
                  child: Image.asset(
                    mostPopular[widget.index].imageURL,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15, top: 10),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: IconButton(
                        onPressed: () {
                          context.go('/homepage');
                        },
                        icon: FaIcon(FontAwesomeIcons.arrowLeft)),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15, top: 10),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: FaIcon(FontAwesomeIcons.share)),
                  ),
                ],
              ),

              // images stack

              Positioned(
                bottom: 100,
                right: 20,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  height: 200,
                  width: 60,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            Border.all(color: Colors.amber.shade900);
                            mostPopular[widget.index].imageURL =
                                "assets/images/pexels-el-gringo-photo-10371082.jpg";
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                  "assets/images/pexels-el-gringo-photo-10371082.jpg",
                                  fit: BoxFit.cover)),
                          height: 70,
                          width: 50,
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            Border.all(color: Colors.amber.shade900);
                            mostPopular[widget.index].imageURL =
                                "assets/images/pexels-el-gringo-photo-10371082.jpg";
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                  "assets/images/pexels-el-gringo-photo-10371082.jpg",
                                  fit: BoxFit.cover)),
                          height: 70,
                          width: 50,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 25.0,
          ),

          // purchase container

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  mostPopular[widget.index].name,
                  style: GoogleFonts.poppins(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
                IconButton(
                    onPressed: () => print("liked"),
                    icon: FaIcon(FontAwesomeIcons.heart))
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text(
              "Description",
              style: GoogleFonts.poppins(color: Colors.grey, fontSize: 15),
            ),
          ),
          SizedBox(
            height: 25,
          ),

          // add to cart container

          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0), color: Colors.black),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Price",
                        style: GoogleFonts.poppins(
                            color: Colors.grey, fontSize: 12),
                      ),
                      Text(
                        "\$ ${mostPopular[widget.index].price}.00",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: () => print("Added to cart"),
                    child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: Colors.amber.shade900,
                        ),
                        child: Row(
                          children: [
                            Text(
                              "Add to Cart",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                            FaIcon(
                              FontAwesomeIcons.cartArrowDown,
                              color: Colors.white,
                            )
                          ],
                        )),
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}