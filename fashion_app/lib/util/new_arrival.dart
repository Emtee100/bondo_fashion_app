import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/new_arrival.dart';
import '../pages/arrival1.dart';
import '../pages/arrival2.dart';
import '../pages/arrival3.dart';

class newArrival extends StatefulWidget {
  const newArrival({super.key});

  @override
  State<newArrival> createState() => _newArrivalState();
}

class _newArrivalState extends State<newArrival> {
   int _arrivalSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
                height: 450.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: arrivals.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        switch (index) {
                          case 0:
                            // final selectedIndex = index.toString();
                            context.go('/arrival1/$index');
                          break;
                          case 1:
                            context.go('/arrival2/$index');
                          break;
                          case 2:
                            context.go('/arrival3/$index');
                          break;
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(20)),
                        margin: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(arrivals[index].imageURL,
                                  height: 350, width: 240, 
                                  fit: BoxFit.cover
                                  ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  arrivals[index].name,
                                  style: GoogleFonts.poppins(
                                      fontSize: 18, fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Text("\$${arrivals[index].price.toString()}.00",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18
                                    )),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ));
  }
}