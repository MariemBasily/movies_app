import 'package:flutter/material.dart';
import 'package:movies_app/widgets/CustomNavBar.dart';
import 'package:movies_app/widgets/NewMoviesWidget.dart';
import 'package:movies_app/widgets/UpcomingWidget.dart';


class HomePage extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child:SafeArea(
          child:Column(
            children: [
              Padding(padding: EdgeInsets.symmetric(
                vertical: 18,
                horizontal: 10
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 15,),
                  Text(
                    "Hello Maruom",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                    ),
                    ),
                    Text(
                      "What to watch?",
                      style: TextStyle(
                        color:Colors.white54,
                        ),
                    ),
                ],
                
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset("images/profile.png",
                height: 60,
                width: 60,
                ),
              ),
              ],)
              ),
              Container(
                height: 60,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(
                  horizontal: 10
                ),
                decoration: BoxDecoration(
                  color: Color(0xFF292B37),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(children: [
                  Icon(Icons.search,
                  color:Colors.white54,
                  size: 30,
                  ),
                  Container(
                    width: 200,
                    margin: EdgeInsets.only(left: 5),
                    child: TextFormField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "search",
                        hintStyle: TextStyle(color:Colors.white54 )

                      ),
                    ),
                  )
                ],),
              ),
              SizedBox(height: 20),
              UpcomingWidget(),
              SizedBox(height: 30),
              NewMoviesWidget(),
              SizedBox(height: 30),
            ],) ,
        )
        ),
        bottomNavigationBar: Customnavbar(),
    );
  }
}