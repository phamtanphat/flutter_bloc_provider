abstract class SearchEvent{

}

class QueryEvent extends SearchEvent{
  late String query;

  QueryEvent({required this.query});
}