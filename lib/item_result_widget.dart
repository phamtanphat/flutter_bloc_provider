import 'package:flutter/material.dart';
class ItemResultWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context , index){
        return ListTile(
          title: Text("Android"),
        );
      },
    );
  }
}
