import 'package:flutter/material.dart.';

class CounterScreen extends StatefulWidget {
  static const String routeName = 'Counter';

  @override
  State<StatefulWidget> createState() {
    return CounterScreenState();
  }
}

class CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$counter',
              style: const TextStyle(
                fontSize: 24,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  counter++;
                  setState(() {
                    counter++;
                  });

                  print(counter);
                },
                child: const Icon(Icons.add))
          ],
        ),
      ),
    );
  }
}
