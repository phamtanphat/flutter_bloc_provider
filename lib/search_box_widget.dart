import 'package:flutter/material.dart';
class SearchBoxWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        suffixIcon: Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))
        )
      ),
    );
  }
}
