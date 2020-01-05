import 'package:church/map.dart';
import 'package:church/news.dart';
import 'package:church/timings.dart';
import 'package:church/about.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    imageCache.clear();
    return MaterialApp(
      title: 'St. Sebastian Church',
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
      home: MyHomePage(title: 'Home Page'),
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
  MainOption op=MainOption(Text("About",style: TextStyle(fontFamily:'avenir',color:Colors.white,fontSize: 24),), Image.asset("assets/images/church.jpg"),Aboutpage());
  MainOption op1=MainOption(Text("Mass Timings",style: TextStyle(fontFamily:'avenir',color:Colors.white,fontSize: 24),), Image.asset("assets/images/mass.jpg"),TimingTable());
  MainOption op2=MainOption(Text("Family Units",style: TextStyle(fontFamily:'avenir',color:Colors.white,fontSize: 24),), Image.asset("assets/images/holyfamily.jpg"),Aboutpage());
  MainOption op3=MainOption(Text("News",style: TextStyle(fontFamily:'avenir',color:Colors.white,fontSize: 24),), Image.asset("assets/images/news.jpg"),Newspage());
  MainOption op4=MainOption(Text("Location",style: TextStyle(fontFamily:'avenir',color:Colors.white,fontSize: 24),), Image.asset("assets/images/location.jpg"),Maps());

  

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
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top:60.0),
              // height: MediaQuery.of(context).size.height*0.1,
              child: SafeArea(
                top: true, bottom: true,
                minimum: const EdgeInsets.all(15.0),
                child: Center( 
                  child: Text(
                    "St Sebastian's Church",
                    style: TextStyle(fontFamily:'avenir',
                    color: Colors.black,
                    fontSize: 27)))
              )
            ),
            Container(
              child:  Expanded(
                child: ListView(
                children: <Widget>[
                op,
                op1,
                op2,
                op3,
                op4,
                ],
                scrollDirection: Axis.vertical
              )
              )
              // height: MediaQuery.of(context).size.height*0.85,
            )
          ],
        )
      )
    );
  }
}

class MainOption extends StatelessWidget {
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
        child:
        Padding(
        padding: EdgeInsets.all(8.0),
        
        child:ClipRRect(
            borderRadius:BorderRadius.circular(14),
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
