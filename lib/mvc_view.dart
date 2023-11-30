import 'package:flutter/material.dart';
import 'mvc_controller.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // Initialize the controller from the controller class
  final Controller _con = Controller();

  // Dump the builder into the view class with the MVC model and reference things accordingly
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
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${_con.counter}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _con.incrementCounter();
          });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),

      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}