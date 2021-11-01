import 'package:flutter/material.dart';
import 'package:flutter_bloc_provider/bloc/search_bloc.dart';
import 'package:flutter_bloc_provider/bloc/search_event.dart';
import 'package:flutter_bloc_provider/item_result_widget.dart';
import 'package:flutter_bloc_provider/search_box_widget.dart';
import 'package:provider/provider.dart';
class SearchPage extends StatefulWidget {

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => SearchBloc()..eventController.sink.add(QueryEvent(query: "")),
      child: Container(
        constraints: BoxConstraints.expand(),
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SearchBoxWidget(),
            Expanded(child: ItemResultWidget())
          ],
        ),
      ),
    );
  }
}
