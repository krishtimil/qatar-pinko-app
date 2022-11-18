import 'package:flutter/cupertino.dart';

class TeamSelectionProvider extends ChangeNotifier {
  int _selectedTeam = -1;

  setSelectedTeam(int value) {
    _selectedTeam = value;
    notifyListeners();
  }

  int get selectedTeam => _selectedTeam;
}
