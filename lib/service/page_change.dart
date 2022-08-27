import 'package:flutter/foundation.dart';


class PageChanger with ChangeNotifier {
  int _pageIndex = 0;


  set pageIndex(int index) {
    _pageIndex = index;
    notifyListeners();
  }

 int  get pageindexx => _pageIndex;
  @override
  notifyListeners();
}
