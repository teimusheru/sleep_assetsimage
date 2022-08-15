import 'package:flutter/material.dart';

import 'next_page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),


      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(

                child: Text("最高の睡眠+NFTで稼ぐことができます",style: TextStyle(fontSize: 30)),


              ),
              Container(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                  )

              ),


      Container(
          padding: const EdgeInsets.all(5.0),
          width: 200,
           height: 100,
          decoration: BoxDecoration(

            border: Border.all(color: Colors.red),
            borderRadius: BorderRadius.circular(10),

          ),


        child: RaisedButton(
          child: Text('はじまる　START'),


          onPressed: (){
            //ここ押したら反応する
            //画面遷移のコード

            Navigator . push (
              context ,
              MaterialPageRoute ( builder : ( context ) => NextPage(),
              ),
            );

          },

        ),
      ),






            ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
