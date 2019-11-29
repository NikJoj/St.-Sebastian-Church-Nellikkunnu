import 'package:church/timings.dart';
import 'package:church/about.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
 // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  MainOption op=MainOption(Text("Timing",style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize: 20),), Image.asset("assets/images/pg1.jpg"),TimingTable());
  MainOption op1=MainOption(Text("About",style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize: 20),), Image.asset("assets/images/pg1.jpg"),Aboutpage());


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(

      body:Center(
          child:
          Column(
            children: <Widget>[
              Container(
//                color: Colors.blue,
              margin: EdgeInsets.only(left:10,bottom: 20),
                height: MediaQuery.of(context).size.height*0.1,
                alignment: Alignment.bottomLeft,
                child:Text("St Sebastian's Church",style: TextStyle(color:Colors.black,fontSize: 30))),
            Container(
              height: MediaQuery.of(context).size.height*0.8,
            child:ListView(
              children: <Widget>[op1,op,op,op,op,op,op],scrollDirection: Axis.vertical,))],))
      );
//    );
  }
}


class MainOption extends StatelessWidget {
//   String name;
  Image bgImage;
  Text name;
  Widget next;
  MainOption(this.name,this.bgImage,this.next);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => next),
          );
        },
        child:Padding(
        padding: EdgeInsets.all(20),
        child:ClipRRect(
            borderRadius:BorderRadius.circular(20),
            child:Column(
                children:<Widget>[
                  Stack(children: <Widget>[
                    bgImage,
                    Positioned(
                        left:23,
                        bottom:23,
                        child:name
                    )
                  ])
                  ,])
        )
    ));
  }
}
