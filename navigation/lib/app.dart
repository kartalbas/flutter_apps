import 'package:flutter/material.dart';
import 'screens/navigation_list.dart';
import 'mocks/navigation_mocks.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navigationItems = NavigationMocks.fetchAllRoot();
    return MaterialApp(home: NavigationList(navigationItems));
  }
}
