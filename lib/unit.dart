import 'package:flutter/material.dart';
import 'package:worm_indicator/shape.dart';
import 'package:worm_indicator/worm_indicator.dart';
class Familyunit extends StatelessWidget
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
            Info("assets/images/nellikkunnu.jpg","Ave Maria Unit","Information"),
            Info("assets/images/nellikkunnu.jpg","Don Bosco Unit","Information"),
            Info("assets/images/nellikkunnu.jpg","Holy Family Unit","Information"),
            Info("assets/images/nellikkunnu.jpg","Mary Matha Unit","Information"),
            Info("assets/images/nellikkunnu.jpg","St. George Unit","Information"),
            Info("assets/images/nellikkunnu.jpg","St. Jude Unit","Information"),
            Info("assets/images/nellikkunnu.jpg","St. Raphael Unit","Information"),
            Info("assets/images/nellikkunnu.jpg","Evuprasiamma Unit","Information"),
            Info("assets/images/nellikkunnu.jpg","Mother Theresa Unit","Information"),
            Info("assets/images/nellikkunnu.jpg","St. John Unit","Information"),
            Info("assets/images/nellikkunnu.jpg","Little Flower Unit","Information"),
            Info("assets/images/nellikkunnu.jpg","St. Sebastian Unit","Information"),
            Info("assets/images/nellikkunnu.jpg","St. Vincent De Paul Unit","Information"),
            Info("assets/images/nellikkunnu.jpg","Good Shepherd Unit","Information"),
            Info("assets/images/nellikkunnu.jpg","St. James Unit","Information"),
            Info("assets/images/nellikkunnu.jpg","St. Mary's Unit","Information"),
            Info("assets/images/nellikkunnu.jpg","Vimalanatha Unit","Information"),
            Info("assets/images/nellikkunnu.jpg","Sacred Heart Unit","Information"),
            Info("assets/images/nellikkunnu.jpg","St. Antony Unit","Information"),
            Info("assets/images/nellikkunnu.jpg","St. Clare Unit","Information"),
            Info("assets/images/nellikkunnu.jpg","St. Francis Unit","Information"),
            Info("assets/images/nellikkunnu.jpg","St. Paul Unit","Information"),
            Info("assets/images/nellikkunnu.jpg","St. Xaviers Unit","Information"),
            Info("assets/images/nellikkunnu.jpg","St. Thomas Unit","Information"),


          ]
          ),
          ),
          
          // Container(
          // height: MediaQuery.of(context).size.height*0.05,
          // child:   WormIndicator(
          //         length: 4 ,
          //         controller: controller,
          //         color: Colors.grey,
          //         indicatorColor: Colors.brown,
          //         shape: Shape(
          //         size: 7,
          //         spacing: 5,
          //         shape: DotShape.Circle,
          //         )
          //         ),
          // )
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