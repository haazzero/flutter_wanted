import 'package:flutter/material.dart';

void main() {
  runApp(const TestLayoutApp());
}

class TestLayoutApp extends StatelessWidget {
  const TestLayoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TestLayoutHome(),
    );
  }
}

class TestLayoutHome extends StatelessWidget {
  const TestLayoutHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TitleBox(),
              IconBox(),
              CounterBox(),
            ],
          ),
        ),
      ),
    );
  }
}

class TitleBox extends StatelessWidget {
  const TitleBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      flex: 6,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Title',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 4.0),
            Text('Description'),
          ],
        ),
      ),
    );
  }
}

class IconBox extends StatelessWidget {
  const IconBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      flex: 2,
      child: Center(
        child: Icon(
          Icons.star,
          size: 80,
          color: Colors.red,
        ),
      ),
    );
  }
}

class CounterBox extends StatelessWidget {
  const CounterBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      flex: 2,
      child: Center(
        child: Text(
          '41',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}