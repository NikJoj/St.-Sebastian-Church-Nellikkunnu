import 'package:flutter/material.dart';
import 'package:worm_indicator/shape.dart';
import 'package:worm_indicator/worm_indicator.dart';
class Aboutpage extends StatelessWidget
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
            Info("assets/images/nellikkunnu.jpg","St. Sebastian Church","St. Sebastian Church, Nellikkunnu, Thrissur was renovated with great grandeur not so long back. The foundation stone was laid by Mar Andrews Thazhath, Archbishop of Thrissur on 29-08-2010. The construction site was blessed on 16-11-2011 by Mar Raphael Thattil, Auxiliary Bishop of Thrissur and the construction started on 21-11-2011. The construction was completed and the church was blessed and opened on 28-12-2014 by Mar Andrews Thazhath in the presence of His Grace Archbishop, Enrico Dal Covolo from Rome. The then Vicar was Fr. Johnson Ainikal."),
            Info("assets/images/vicar.jpg","Vicar","Fr. Raphael Vadakkan\nPhone: 9447435557"),
            Info("assets/images/nellikkunnu.jpg","Assitant Vicar","Fr. Seejan Chakkalakkal\nPhone: 9567741060"),
            Info("assets/images/nellikkunnu.jpg","Trustees","Alant Antony \nBaiju \nJohnson \nFranko KD"),

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
        Container(alignment: Alignment.topCenter, padding:EdgeInsets.only(top: 0.0, left: 25.0, right: 25.0),  height: MediaQuery.of(context).size.height*0.3,
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