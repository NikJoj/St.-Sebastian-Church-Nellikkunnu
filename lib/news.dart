import 'package:flutter/material.dart';
import 'package:worm_indicator/shape.dart';
import 'package:worm_indicator/worm_indicator.dart';
class Newspage extends StatelessWidget
{
  final controller=PageController(
  );
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        
    // floatingActionButton: FloatingActionButton(
    //   child: Icon(Icons.play_arrow),
    //   backgroundColor: Colors.brown,
      
    //   onPressed: () {},
    // ),

    // floatingActionButton: Stack(
    //   children: <Widget>[
    //     Padding(padding: EdgeInsets.only(left:31),
    //     child: Align(
    //       alignment: Alignment(0.6,1.0),
    //       child: FloatingActionButton(
    //         heroTag: "btn1",
    //         onPressed: () {},
    //         child: Icon(Icons.keyboard_arrow_left),
    //         backgroundColor: Colors.grey,
    //         mini: false,
    //         shape: RoundedRectangleBorder(
    //         borderRadius: BorderRadius.all(Radius.circular(10.0))
    //         ),       
    //         ),
    //     ),),





    body: Column(children: <Widget>[
          Container(
          height: MediaQuery.of(context).size.height*0.95,
          child:
          PageView(
          controller: controller,
            children: <Widget>[
            Info("assets/images/perunnal3.jpg","Perunnal","St. Sebastian Church, Nellikkunnu, Thrissur sets off with the 'Perunnal' celebrations!"),
            Info("assets/images/christmas.jpg","Christmas","Christmas was celebrated at the Nellikkunnu Church."),
            Info("assets/images/carol.jpg","Christmas Carol Competition","Christmas carol competition, Jingle Bells 2019."),
            Info("assets/images/nellikkunnu.jpg","News","Any other relevant news."),

          ]
          ),
          ),
          
          Container(
          height: MediaQuery.of(context).size.height*0.05,
          child:   WormIndicator(
                  length: 4 ,
                  controller: controller,
                  color: Colors.grey,
                  indicatorColor: Colors.brown,
                  shape: Shape(
                  size: 7,
                  spacing: 5,
                  shape: DotShape.Circle,
                  )
                  ),
          )
          ]
    )


  
  
  
    );
  
}
}

class Info extends StatelessWidget
{
  final String imgasst;
  final String txt;
  final String txt2;

  Info(this.imgasst,this.txt2, this.txt);
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children: <Widget>[
        Padding(
            padding: EdgeInsets.all(50),
              child: SafeArea(
                top: true,
                child:ClipRRect(
                    borderRadius:BorderRadius.circular(15),
                    child:Image.asset(imgasst,height: MediaQuery.of(context).size.height*0.4),
                    )
              )
            ),
        Container(
          alignment: Alignment.center,  
          margin: EdgeInsets.only(top: 10.0),
        child: Column(children: <Widget>[

        Container(alignment: Alignment.center,padding: EdgeInsets.all(0.0),child: Text(txt2,style: TextStyle(fontFamily: 'avenir', color:Colors.grey,fontSize: 25),textAlign: TextAlign.left,)),
        Container(alignment: Alignment.topCenter, padding:EdgeInsets.only(top: 25.0, left: 25.0, right: 25.0),  height: MediaQuery.of(context).size.height*0.3,
        child: SafeArea(
          bottom: true,
          minimum: EdgeInsets.only(bottom: 10),
          child: SingleChildScrollView(
          child:Align(alignment: Alignment.center  ,child: Text(txt,style: TextStyle(fontFamily: 'gibson',color:Colors.black,fontSize: 15),textAlign: TextAlign.left,)))
        )
        )

        ],)      
        
        )
        ],
      
      
      ) ,
);
  }
}