import 'package:flutter/material.dart';
import 'package:movies_app/widgets/CustomNavBar.dart';
import 'package:movies_app/widgets/MoviePageButtons.dart';
import 'package:movies_app/widgets/RecommendWidget.dart';

class MoviePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Opacity(
            opacity: 0.4,
            child: Image.asset(
              "images/1.jpg",
              height: 280,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                            size: 30,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 60),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.blue.withOpacity(0.5),
                                  blurRadius: 8)
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              "images/1.jpg",
                              height: 250,
                              width: 180,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 50, top: 70),
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.blue,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blue.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 8,
                              ),
                            ],
                          ),
                          child: Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                            size: 60,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  MoviePageButtons(),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Avatar",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          "This is the simple description pf the movie, you can write here the description of the movie. ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              ),
                              textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  RecommendWidget(),
                  SizedBox(height: 30,)
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Customnavbar(),
    );
  }
}
