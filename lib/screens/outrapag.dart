import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:nomedoprojeto/widgets/mycustombutton.dart';
//atalho stful
class OutraPag extends StatefulWidget {
  static const String routeName = '/outrapag';
  const OutraPag({super.key});

  @override
  State<OutraPag> createState() => _OutraPagState();
}

class _OutraPagState extends State<OutraPag> {
  StreamController<int> selected = StreamController<int>();


  @override
  Widget build(BuildContext context) {
    final items = <String>[
      'Grogu',
      'Mace Windu',
      'Obi-Wan Kenobi',
      'Han Solo',
      'Luke Skywalker',
      'Darth Vader',
      'Yoda',
      'Ahsoka Tano',
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Outra Pagina"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
        ],
      ),//ctrl+space para ver os metodos
      body: Center(
        child: Card(
          elevation: 30,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("linha 1"),
                Text("texto grandetexto grandetexto grandetexto grandetexto grandetexto grande"),
                SizedBox(height: 50,),


                MyCustomButton(onPressed: (){
                  showLicensePage(
                    context: context,
                    // applicationIcon: Image.asset(name)
                    // applicationName: "App Name"
                    // Other parameters
                  );
                }, text: "Botão",icon: Icons.touch_app_outlined,),
                MyCustomButton(onPressed: (){
                  Navigator.of(context).pop("Hello screen 1");

                }, text: "Botão2",icon: Icons.add,),
                
                Expanded(child: FortuneWheel(
                  selected: selected.stream,
                  items: [
                    for (var it in items) FortuneItem(child: Text(it)),
                  ],
                ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
