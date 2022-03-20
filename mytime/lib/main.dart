import 'package:flutter/material.dart';

void main() {
  runApp(const DashBoard());
}

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyTime',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(title: 'MyTime'),
    );
  }
}

class PreviousData extends StatelessWidget {
  const PreviousData({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyTime"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
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
              "MY DASHBOARD",
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            const Text(
              "\n You used your phone this long today : \n \n",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            const Text(
              "\n You used you phone this long yesterday: \n \n",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            const Text(
              "\n You use you phone for an average of this long everyday:\n \n \n",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            ElevatedButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                primary: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PreviousData()));
              },
              child: const Text(
                "Show Previous Data",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
