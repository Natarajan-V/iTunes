import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:itunes/core/constants/enum.constants.dart';

final homeLogic = ChangeNotifierProvider<HomeLogic>((ref) => HomeLogic());

class HomeLogic extends ChangeNotifier {
  final TextEditingController _controller = TextEditingController();
  final List<ItunesCategory> _selectedCategories = [];

  late TabController _tabController;

  TextEditingController get controller => _controller;
  List<ItunesCategory> get selectedCategories => _selectedCategories;

  TabController get tabController => _tabController;

  set setTabController(TabController ctrl) => _tabController = ctrl;

  void onCategory(ItunesCategory category) {
    if (_selectedCategories.contains(category)) {
      _selectedCategories.remove(category);
    } else {
      _selectedCategories.add(category);
    }

    notifyListeners();
  }
}
