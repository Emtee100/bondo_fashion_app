import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/new_arrival.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> categories = ['Shop Men', 'Shop Women', 'Shop Kid\'s', 'Sale'];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 4.0),
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    shape: BoxShape.circle,
                  ),
                  child: const FaIcon(FontAwesomeIcons.bars),
                ),
              ),

              //title
              Text("BRONDO",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, fontSize: 20)),
              //cart
              Padding(
                padding: const EdgeInsets.only(right: 15.0, top: 4.0),
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    shape: BoxShape.circle,
                  ),
                  child: const FaIcon(FontAwesomeIcons.bagShopping),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          //categories
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20.0),
            height: 55,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: _selectedIndex == index
                            ? Colors.orange.shade700
                            : Colors.white,
                        border: _selectedIndex == index
                            ? Border.all(color: Colors.orange.shade700)
                            : Border.all()),
                    child: Text(
                      categories[index],
                      style: GoogleFonts.poppins(
                        color: _selectedIndex == index
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 20.0),

          //new arrival banner
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "New Arrival",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, fontSize: 20.0),
                ),
                TextButton(
                    onPressed: () => print("See all"),
                    child: Text("See all", style: GoogleFonts.poppins()))
              ],
            ),
          ),

          SizedBox(height: 20.0),
          //actual new arrivals
          Container(
              height: 300.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: arrivals.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: [
                        Image.asset(arrivals[index].imageURL, height: 200, width: 200,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(arrivals[index].name, style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w600
                            ),),
                            SizedBox(height: 15.0,),
                            Text(arrivals[index].price.toString(),style: GoogleFonts.poppins(
                              
                            )),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ))
          //most popular banner

          //actual most popular
        ],
      )),
    );
  }
}
