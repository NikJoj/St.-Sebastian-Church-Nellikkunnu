import 'package:flutter/material.dart';

class TimingTable extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(body:Center(child:
    Column(

    children:[

      Container(
        margin: EdgeInsets.only(bottom: 50),
        height: MediaQuery.of(context).size.height*0.2,
        width:MediaQuery.of(context).size.width*0.8,
        alignment: Alignment.bottomLeft,
        child:Text("Timings",style: TextStyle(fontFamily: 'avenir',fontWeight: FontWeight.bold,color:Colors.black,fontSize: 30))),

      Container(
        padding: EdgeInsets.all(15.0),
        height: MediaQuery.of(context).size.height*0.45,
        width:MediaQuery.of(context).size.width*0.8,
        alignment: Alignment.center,
        decoration: BoxDecoration(
        borderRadius: new BorderRadius.all(new Radius.circular(7.0)),          
        boxShadow: [
            BoxShadow(
              blurRadius: 10.0,
              color: Colors.black.withOpacity(.3),
              offset: Offset(2.0, 3.0),
            ),
          ],
          color: Colors.white,
        ),
        child:DataTable(dataRowHeight: 110.0,
        columns:[
          DataColumn(label:Text('Day',style: TextStyle(fontFamily: 'gibson',fontSize: 15.0),)),
          DataColumn(label:Text('Timings',style: TextStyle(fontFamily: 'gibson',fontSize: 15.0),))
          ],
      rows:[
        DataRow(cells: [DataCell(Text("Monday\nto\nSaturday",style: TextStyle(fontFamily: 'gibson',fontSize: 15.0),)),DataCell(Text("Adoration: 6:00AM\nMass: 6:30AM, 5:15PM",style: TextStyle(fontFamily: 'gibson',fontSize: 15.0),))]),
        DataRow(cells: [DataCell(Text("Sunday",style: TextStyle(fontFamily: 'gibson',fontSize: 15.0),)),DataCell(Text("Mass: 6:00AM, 6:30AM, 5:15PM",style: TextStyle(fontFamily: 'gibson',fontSize: 15.0),))]),
        ],
    
    )
    ),
    ])
    )
    );
  }

}