import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/AppColors.dart';
import '../utils/text_style.dart';


class ExperiencePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Professional Experience", style: headerTextStyle,),
            SizedBox(height: 10,),
            _itemWidget("AI intern | Rec-inov | 2024", "Creation of an intelligent chatbot using tools like rasa , mongodb , reactjs , visual studio code , latex. i learnt many things from this internship : work in group , improving my skills in AI, NLP. "),
            _itemWidget("Web Developer Intern | Primatec | 2023", "Develop a backend to transform employee data from excel to mysql using Spring Boot , it was a good experience , because it was the first internship in an IT company , i improved my skills in web development."),
            _itemWidget("Team Lead Action |  Generation Dream | 2021", "Responsable for a project of collecting old books , donation for poor people , exchange books , recycling books , it was really a good experience , it helped me to gain skills in leadership."),
            _itemWidget("Part Time Job | Sogeem | 2013-2018", "seasonal work, selling house appliances and manage social accounts , it was a good experience to develop marketing skills , communicate with others , know their needs , gain money , have an eye on the world and business community."),


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