class Data {
  int id;
  String title;
  DateTime date = DateTime.now();
  bool isdoen = false;
  Data({required this.title, required this.id});
}

List<Data> dataList = [];
