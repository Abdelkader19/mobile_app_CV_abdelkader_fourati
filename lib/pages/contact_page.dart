import 'package:flutter/material.dart';
import '../utils/text_style.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Contact ", style: headerTextStyle),
            SizedBox(height: 10),
            _itemWidget("Email", "abdelkaderfourati21@gmail.com\n\n\n"),
            _itemWidget("Mobile", "+216 20000000\n\n\n"),
            _itemWidget2("Social Media Accounts"),
            Row(
              children: [
                Image.asset("assets/linkedin.png", height: 50, width: 50),
                SizedBox(width: 10),
                Image.asset("assets/github.png", height: 70, width: 70),
                SizedBox(width: 10),
                Image.asset("assets/whatsup.png", height: 50, width: 50),
                SizedBox(width: 15),
                Image.asset("assets/facebook.jpeg", height: 50, width: 50),
                SizedBox(width: 15),
                Image.asset("assets/insta(3).jpeg", height: 50, width: 50),
              ],
            ),


          ],
        ),
      ),
    );
  }

  Widget _itemWidget(title, value) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(title, style: subHeaderTextStyle),
          Text(value, style: bodyTextStyle),
        ],
      ),
    );
  }

  Widget _itemWidget2(title) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(title, style: subHeaderTextStyle),
        ],
      ),
    );
  }


}
