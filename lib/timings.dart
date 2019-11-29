import 'package:flutter/material.dart';

class TimingTable extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(body:Center(child:
    Column(

    children:[Container(
//                color: Colors.blue,
        margin: EdgeInsets.only(left:10,bottom: 20),
        height: MediaQuery.of(context).size.height*0.2,
        alignment: Alignment.bottomLeft,
        child:Text("Mass Timings",style: TextStyle(color:Colors.black,fontSize: 30))),
    Container(
        height: MediaQuery.of(context).size.height*0.6,
        width:MediaQuery.of(context).size.width*0.8,
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 5.0,
              color: Colors.black.withOpacity(.5),
              offset: Offset(2.0, 3.0),
            ),
          ],
          //shape: BoxShape.rectangle,
          //border: Border.all(),
          color: Colors.white,
        ),
        child:DataTable(
        columns:[
          DataColumn(label:Text('Day')),
          DataColumn(label:Text('Times'))
          ],
      rows:[
        DataRow(cells: [DataCell(Text("Monday")),DataCell(Text("6:30"))]),
        DataRow(cells: [DataCell(Text("Tuesday")),DataCell(Text("6:30"))]),
        DataRow(cells: [DataCell(Text("Tuesday")),DataCell(Text("6:30"))]),
        DataRow(cells: [DataCell(Text("Tuesday")),DataCell(Text("6:30"))]),
        DataRow(cells: [DataCell(Text("Tuesday")),DataCell(Text("6:30"))]),
        DataRow(cells: [DataCell(Text("Tuesday")),DataCell(Text("6:30"))]),
        DataRow(cells: [DataCell(Text("Wednesday")),DataCell(Text("6:30"))])
      ]

    ))
    ])
    )
    );
  }

}