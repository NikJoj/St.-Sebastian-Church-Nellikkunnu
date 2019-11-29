import 'package:flutter/material.dart';

class Aboutpage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(body:Column(
      children: <Widget>[
    Padding(
    padding: EdgeInsets.all(20),
        child:ClipRRect(
            borderRadius:BorderRadius.circular(20),
            child:Image.asset("assets/images/bg2.jpg",height: MediaQuery.of(context).size.height*0.5,),
        )),
           Container(padding:EdgeInsets.only(left: 20,),child:Align(alignment:Alignment.centerLeft,child:Text("About",style: TextStyle(color:Colors.grey,fontSize: 30),textAlign: TextAlign.left,))),
        Container(padding:EdgeInsets.fromLTRB(15, 5, 15, 10),child:Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",style: TextStyle(color:Colors.black,fontSize: 20),textAlign: TextAlign.justify,))
      ],
    ));
  }
}