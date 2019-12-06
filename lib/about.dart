import 'package:flutter/material.dart';

class Aboutpage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(body:Column(
      children: <Widget>[
    Padding(
    padding: EdgeInsets.all(10),
      child: SafeArea(
        top: true,
        child:ClipRRect(
            borderRadius:BorderRadius.circular(15),
              child:Image.asset("assets/images/nellikkunnu.jpg",height: MediaQuery.of(context).size.height*0.45),

            )

        )),
           
        Container(padding:EdgeInsets.all(5),child: Text("St. Sebastian Church",style: TextStyle(fontFamily: 'avenir', color:Colors.grey,fontSize: 35),textAlign: TextAlign.left,)),
        Container(padding:EdgeInsets.all(5),  height: MediaQuery.of(context).size.height*0.37,
        child: SafeArea(
          top: true, bottom: true,
          minimum: EdgeInsets.all(10),
          child: SingleChildScrollView(
          child:Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, seLorem ipsum dolor sit amet, consectetur adipiscing elit, seLorem ipsum dolor sit amet, consectetur adipiscing elit, seLorem ipsum dolor sit amet, consectetur adipiscing elit, seLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",style: TextStyle(fontFamily: 'gibson',color:Colors.black,fontSize: 20),textAlign: TextAlign.justify,))
        )
        )
      ],
    ));
  }
}