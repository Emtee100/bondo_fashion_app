import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';
import '../models/most_popular.dart';
import '../models/new_arrival.dart';
import '../pages/popular1.dart';
import '../pages/popular2.dart';
import '../pages/popular3.dart';

class most_Popular extends StatefulWidget {
  const most_Popular({super.key});

  @override
  State<most_Popular> createState() => _most_PopularState();
}

class _most_PopularState extends State<most_Popular> {
  int _popularSelected = 0;
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
                    context.go('/popular1/$index');
                    break;
                  case 1:
                    context.go('/popular2/$index');
                    break;
                  case 2:
                    context.go('/popular3/$index');
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
                      child: Image.asset(mostPopular[index].imageURL,
                          height: 350, width: 240, fit: BoxFit.cover),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          mostPopular[index].name,
                          style: GoogleFonts.poppins(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text("\$${mostPopular[index].price.toString()}.00",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600, fontSize: 18)),
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
