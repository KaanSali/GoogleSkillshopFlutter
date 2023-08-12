import 'package:flutter/material.dart';

class Yazi extends StatelessWidget {
  final String text;
  const Yazi(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(this.text,style: const TextStyle(color: Colors.black45,fontSize: 18,fontWeight: FontWeight.w600));
  }
}
