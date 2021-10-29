
import 'dart:async';

import 'package:flutter_bloc_provider/bloc/search_event.dart';
import 'package:flutter_bloc_provider/bloc/search_state.dart';

class SearchBloc{
  var state = SearchState(listLanguage: [
    "ANDROID",
    "IOS",
    "PHP",
    "JAVASCRIPT",
    "GOLANG",
    "DART",
    "FLUTTER",
    "VUEJS",
    "TYPESCRIPT"
  ]);

  StreamController<SearchEvent> eventController  = StreamController();
  StreamController<SearchState> stateController = StreamController();


  SearchBloc(){
    eventController.stream.listen((event) {
      if (event is QueryEvent){
        //..
      }
    });
  }


  void dispose(){
    eventController.close();
    stateController.close();
  }

}