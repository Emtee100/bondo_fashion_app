import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/new_arrival.dart';

class arrival1 extends StatefulWidget {
  const arrival1({super.key});

  @override
  State<arrival1> createState() => _arrival1State();
}

class _arrival1State extends State<arrival1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                    arrivals[0].imageURL,
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
                          Navigator.pop(context);
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
              )
            ],
          ),
          SizedBox(height: 25.0,),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(arrivals[0].name, style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w600
                ),),
                 IconButton(
                  onPressed: () => print("liked"), icon: FaIcon(FontAwesomeIcons.heart))
              ],
            ),
          ),
          SizedBox(height: 20.0,),
          Text("Description"),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: Colors.black
            ),
            child: Row(
              children: [
                Column(
                  children: [
                    Text("Price"),
                    Text("\$ ${arrivals[0].price}.00")
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
