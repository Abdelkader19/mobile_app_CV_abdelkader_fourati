
import 'package:flutter/material.dart';

import '../controller/firebase_controller.dart';
import '../utils/common_string.dart';
import '../utils/text_style.dart';
import '../widgets/app_shimmer_effect.dart';

class HomePage extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(name,style: headerTextStyle),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 20),
            child: Text(designation, style: subHeaderTextStyle,),
          ),
          Text("",style: bodyTextStyle,),

          Container(
              margin: const EdgeInsets.only(top: 30.0),
              child: Text(title2, style: headerTextStyle)),
          Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
            ),
            child: Text(
              description2,
              style: bodyTextStyle,
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 30.0),
              child: Text(title3, style: headerTextStyle)),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 20),
            child: Text(
              description3,
              style: bodyTextStyle,
            ),
          ),

          Container(
              margin: const EdgeInsets.only(top: 30.0),
              child: Text(title4, style: headerTextStyle)),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 20),
            child: Text(
              description4,
              style: bodyTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}