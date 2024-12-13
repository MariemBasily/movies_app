import 'package:flutter/material.dart';

class NewMoviesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int totalMovies = 5;

    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "New Movies",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            SizedBox(
              height: 320,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: totalMovies,
                itemBuilder: (context, i) {
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "moviepage");
                    },
                    child: Container(
                      width: 190,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: Color(0xFF292B37),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF292B37).withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Movie image
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            child: Image.asset(
                              "images/${i + 1}.jpg",
                              height: 200,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),

                          // Movie details
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 5,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Movie Title ${i + 1}",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Action/Adventure",
                                  style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Row(
                                  children: [
                                    Icon(Icons.star,
                                        color: Colors.amber, size: 16),
                                    SizedBox(width: 5),
                                    Text(
                                      "8.${i + 1}",
                                      style: TextStyle(
                                        color: Colors.white54,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
