
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final myContainer =  Container(color: Colors.blue,
    height: 40,
    width: 40,);
  Widget bu(double height , double width, Color color){
    return Container(
      color: color,
      height:height ,
      width:width ,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Computer Science 3'),
        backgroundColor: Colors.cyan,
        centerTitle: true,

      ),
      body:SafeArea(
          child: SingleChildScrollView(
              child: Padding(padding: EdgeInsets.all(16),child:
              Column(children: [buildRow(),
                Padding(padding: EdgeInsets.all(16)),
                Row(children: [Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(color: Colors.brown,
                      height: 40,
                      width: 40,),

                    Padding(padding: EdgeInsets.all(16)),
                    Container(color: Colors.deepPurple,
                      height: 60,
                      width: 60,),

                    Padding(padding: EdgeInsets.all(16)),
                  ],
                )],),
                Container(color: Colors.red,
                  height: 20,
                  width: 20,),
                Divider(),
                Row(children:<Widget> [
                  CircleAvatar(
                    backgroundColor: Colors.lime,
                    radius: 100.0,
                    child: Stack(
                      children: <Widget>[
                        Container (color: Colors.greenAccent,
                          height: 100.0,
                          width: 100.0,),
                        Container(color: Colors.pink,
                          height: 60.0,
                          width: 60.0,),
                        Container(color: Colors.indigo,
                          height: 40.0,
                          width: 40.0,),
                      ],
                    ),
                  )
                ],),
                Divider(),
                Text('Hello World'),




              ]
              )))),
    );


  }

  Row buildRow() {
    return Row(children: [
      Container(color: Colors.blue,
        height: 40,
        width: 40,),
      Padding(padding: EdgeInsets.all(16)),
      Expanded(child: Container(color: Colors.blueGrey,
        height: 40,
        width: 40,)),
      Padding(padding: EdgeInsets.all(16)),
      Container(color: Colors.amber,
        height: 40,
        width: 40,),
    ],);
  }
}
