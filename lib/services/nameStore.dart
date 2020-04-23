import 'package:flutter/material.dart';

class Store extends StatelessWidget {
  final value;
  Store({this.value});
  @override
  Widget build(BuildContext context) {
    return Text(
            value
    );
  }
}