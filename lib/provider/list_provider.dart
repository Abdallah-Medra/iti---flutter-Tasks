import 'package:flutter/material.dart';

import '../data.dart';

class listProvider with ChangeNotifier {
  List<Data> _datalist = [];

  List<Data> get datalist {
    return [..._datalist];
  }

  addtolist(String title) {
    var cont = _datalist.length;
    _datalist.add(Data(title: title, id: cont + 1));
    notifyListeners();
  }

  removefromlist(int id) {
    _datalist.removeWhere((e) => e.id == id);
    notifyListeners();
  }

  List<Data> _listcheacked = [];

  List<Data> get listcheacked {
    return [..._listcheacked];
  }

  addtolistchecked(Data item) {
    item.isdoen = true;
    _listcheacked.add(item);
    notifyListeners();
  }

  removefromlistchecked(int id) {
    _listcheacked.removeWhere((e) => e.id == id);
    notifyListeners();
  }
}
