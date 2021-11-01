import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc_provider/bloc/search_bloc.dart';
import 'package:provider/provider.dart';

import 'bloc/search_state.dart';
class ItemResultWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //SearchBLoc => Consumer<SearchBloc>
    //StreamProvider<SearchState> => Consumer<SearchState>
    // Consumer => ListView

    return Consumer<SearchBloc>(
      builder: (blocContext , bloc , child){
        return StreamProvider<SearchState>.value(
          value: bloc.stateController.stream,
          initialData: SearchState(listLanguage: []),
          child: Consumer<SearchState>(
            builder: (stateContext , searchState , child){
              if (searchState.listLanguage.length <= 0){
                return Center(
                  child: Text("Empty list"),
                );
              }
              return ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: searchState.listLanguage.length,
                itemBuilder: (context , index){
                  return ListTile(
                    title: Text(searchState.listLanguage[index]),
                  );
                },
              );
            },
          ),
        );
      }
    );
  }
}
