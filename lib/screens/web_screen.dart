
import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';


class WebScreen extends StatefulWidget {
  static const String routeName = '/webScreen';
  const WebScreen({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<WebScreen> createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  String labelText = "";
  late WebViewXController webviewController;



  @override
  void dispose() {
    webviewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(

        appBar: AppBar(title: const Text("Home Screen"),
          actions: [
            IconButton(onPressed: (){
              webviewController.loadContent('https://docs.flutter.dev/ui/adaptive-responsive/safearea-mediaquery');
            }, icon: const Icon(Icons.link))
          ],),
        body: WebViewX(width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height,
          initialContent: '<h2> Hello, world! </h2>',
          initialSourceType: SourceType.html,
          onWebViewCreated: (controller) {
            webviewController = controller;
            webviewController.loadContent('https://flutter.dev');
          },

        ),

      ),
    );
  }
}
