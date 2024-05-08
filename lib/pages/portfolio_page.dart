
//import 'dart:js';

import 'dart:js';

import 'package:flutter/material.dart';

import '../controller/firebase_controller.dart';
import '../main.dart';
import '../utils/AppColors.dart';
import '../utils/common_string.dart';
import '../utils/text_style.dart';
import '../widgets/app_image_widget.dart';
import '../widgets/app_shimmer_effect.dart';

class PortfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Portfolio", style: headerTextStyle),
            Container(
              child: Text("this is some of my academic projects: ", style: bodyTextStyle),
              margin: EdgeInsets.only(top: 20, bottom: 10),
            ),

         Row(
           children: <Widget>[
             _itemWidget(context,"1", "flutter project",width,"assets/dart.png","assets/flutter_opt.png","assets/code_flutter.jpeg",desc_flutter),
             _itemWidget(context,"2","web project", width,"assets/php.png","assets/laravel.png","assets/vue.png",desc_web),
             _itemWidget(context,"3","cloud project" ,width,"assets/cloud.png","assets/docker.png","assets/docker2.jpeg",desc_cloud),
           ],
         )
          ],
        ),
      ),
    );
  }

  Widget _itemWidget(BuildContext context,title, project_name, width,image1,image2,image3,description) {
    return Expanded(
      flex: 1,
      child: InkWell(
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                content: Container(
                  width: width * 0.8,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 200,
                        alignment: Alignment.center,
                        child:
                        Row( mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(image1, height: 200, width: 200),
                            SizedBox(width: 50),
                            Image.asset(image2, height: 200, width: 200),
                            SizedBox(width: 50),
                            Image.asset(image3, height: 200, width: 200)
                          ],
                        ),
                        color: cardBGColor,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 10),
                        child: Text(project_name, style: subHeaderTextStyle),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 5),
                        child: Text(description, style: bodyTextStyle),
                      ),
                      SizedBox(height: 20),
                      Align(
                        alignment: Alignment.center,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Fermer'),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: Card(
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: cardBGColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      project_name,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }



}