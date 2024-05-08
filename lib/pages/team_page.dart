
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/AppColors.dart';
import '../utils/text_style.dart';


class TeamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Education", style: headerTextStyle,),
            SizedBox(height: 10,),
            _itemWidget("Computer Science Engineering at IIT", "2022 -2025 \n Computer Science Engineering (CSE) is a multidisciplinary field that combines principles of computer science and engineering to design, develop, and implement software and hardware solutions. It encompasses a wide range of topics including algorithms, data structures, programming languages, computer architecture, operating systems, software engineering, artificial intelligence, machine learning, and more."),
            _itemWidget("Pre-Engineering MP", "2020 - 2022 \n Pre-Engineering is an academic track designed to provide students with a strong foundation in mathematics, science, and engineering principles. This rigorous program equips students with the knowledge and skills necessary for success in undergraduate engineering programs."),
        Center(child:
            Image.asset("assets/iit.jpg", height: 450, width: 450))

          ],

        ),



      ),

    );

  }

  Widget _itemWidget(title, description) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                height: 15,
                width: 15,
                margin: EdgeInsets.only(right: 10),
                decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
              ),
              Text(
                title,
                style: subHeaderTextStyle,
              )
            ],
          ),
          Container(
            height: 100,
            margin: EdgeInsets.only(left: 6, top: 10),
            decoration: BoxDecoration(
                border: Border(left: BorderSide(width: 2, color: Colors.grey))),
            child: Container(
              height: 100,
              margin: const EdgeInsets.only(left: 8.0),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: cardBGColor),
              child: Text(description),
            ),
          )
        ],
      ),
    );
  }
}