import 'package:flutter/material.dart';
import 'package:flutter_bloc_provider/bloc/search_bloc.dart';
import 'package:flutter_bloc_provider/bloc/search_event.dart';
import 'package:provider/provider.dart';
class SearchBoxWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<SearchBloc>(
      builder: (blocContext , bloc , child){
        return TextField(
          onSubmitted: (text){
            bloc.eventController.sink.add(QueryEvent(query: text));
          },
          decoration: InputDecoration(
              suffixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))
              )
          ),
        );
      },
    );
  }
}
