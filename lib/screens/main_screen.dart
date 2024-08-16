
import 'package:flutter/material.dart';
import 'package:nomedoprojeto/screens/web_screen.dart';

import '../widgets/mycustombutton.dart';
import 'outrapag.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String labelText = "";

  void _incrementCounter() {

      _counter++;

  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times: ${_counter==1?"um":_counter.toString() }',
              ),
              Text(
                labelText,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              MyCustomButton(onPressed: ()async{
                var result = await Navigator.of(context).pushNamed(OutraPag.routeName);
                labelText = result.toString();
                setState(() {

                });
              }, text: "Ir para outra página",icon: Icons.add,),


              GestureDetector(
                onDoubleTap: (){
                  setState(() {
                    labelText = "Clicou duas vezes";
                    Navigator.of(context).pushNamed(WebScreen.routeName);
                  });
                },
                onLongPress: (){
                  setState(() {
                    labelText = "Clicou longo";
                  });
                },
                onTap: (){
                  _incrementCounter();
                },
                child: Card(
                  child: Text("teste"),
                ),
              )


            ],
          ),
        ),

      ),
    );
  }
}
