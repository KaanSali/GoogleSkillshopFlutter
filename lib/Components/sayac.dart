import 'package:flutter/material.dart';

class Sayac extends StatefulWidget {
  final int ilkDeger;
  const Sayac({super.key, this.ilkDeger=0});

  @override
  State<Sayac> createState() => _SayacState();
}

class _SayacState extends State<Sayac> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    _counter = widget.ilkDeger;
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _decrementCounter(){
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(onPressed: ()=>_decrementCounter(), child: const Icon(Icons.remove)),
        Text(
          '$_counter',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        ElevatedButton(onPressed: ()=>_incrementCounter(), child: const Icon(Icons.add)),
      ],
    );
  }
}
