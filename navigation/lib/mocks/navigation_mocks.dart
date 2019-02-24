import 'package:flutter/material.dart';
import '../models/navigation_item.dart';
import '../styles/styles_tools.dart';

class NavigationMocks extends NavigationItem {

  static final Color _red = StylesTools.hexToColor('FF0000');
  static final Color _green = StylesTools.hexToColor('00FF00');
  static final Color _blue = StylesTools.hexToColor('0000FF');

  static final List<NavigationItem> items = 
    [
      NavigationItem(parentId: 0, childrenId: 100, name: 'ROOT 100', color: _green),
        NavigationItem(parentId: 100, childrenId: 110, name: 'CHILDREN 110 OF 100', color: _blue),
          NavigationItem(parentId: 110, childrenId: 111, name: 'CHILDREN 111 OF 110', color: _red),
        NavigationItem(parentId: 100, childrenId: 120, name: 'CHILDREN 120 OF 100', color: _blue),
          NavigationItem(parentId: 120, childrenId: 121, name: 'CHILDREN 121 OF 120', color: _red),
        NavigationItem(parentId: 100, childrenId: 130, name: 'CHILDREN 130 OF 100', color: _blue),
          NavigationItem(parentId: 130, childrenId: 131, name: 'CHILDREN 131 OF 130', color: _red),
        NavigationItem(parentId: 100, childrenId: 140, name: 'CHILDREN 140 OF 100', color: _blue),
          NavigationItem(parentId: 140, childrenId: 141, name: 'CHILDREN 141 OF 140', color: _red),
      
      NavigationItem(parentId: 0, childrenId: 200, name: 'ROOT 200', color: _green),
        NavigationItem(parentId: 200, childrenId: 210, name: 'CHILDREN 210 OF 200', color: _blue),
          NavigationItem(parentId: 210, childrenId: 211, name: 'CHILDREN 211 OF 210', color: _red),
        NavigationItem(parentId: 200, childrenId: 220, name: 'CHILDREN 220 OF 200', color: _blue),
          NavigationItem(parentId: 220, childrenId: 221, name: 'CHILDREN 221 OF 220', color: _red),
        NavigationItem(parentId: 200, childrenId: 230, name: 'CHILDREN 230 OF 200', color: _blue),
          NavigationItem(parentId: 230, childrenId: 231, name: 'CHILDREN 231 OF 230', color: _red),
        NavigationItem(parentId: 200, childrenId: 240, name: 'CHILDREN 240 OF 200', color: _blue),
          NavigationItem(parentId: 240, childrenId: 241, name: 'CHILDREN 241 OF 240', color: _red),

      NavigationItem(parentId: 0, childrenId: 300, name: 'ROOT 300', color: _green),
        NavigationItem(parentId: 300, childrenId: 310, name: 'CHILDREN 310 OF 300', color: _blue),
          NavigationItem(parentId: 310, childrenId: 311, name: 'CHILDREN 311 OF 310', color: _red),
        NavigationItem(parentId: 300, childrenId: 320, name: 'CHILDREN 320 OF 300', color: _blue),
          NavigationItem(parentId: 320, childrenId: 321, name: 'CHILDREN 321 OF 320', color: _red),
        NavigationItem(parentId: 300, childrenId: 330, name: 'CHILDREN 330 OF 300', color: _blue),
          NavigationItem(parentId: 330, childrenId: 331, name: 'CHILDREN 331 OF 330', color: _red),
        NavigationItem(parentId: 300, childrenId: 340, name: 'CHILDREN 340 OF 300', color: _blue),
          NavigationItem(parentId: 340, childrenId: 341, name: 'CHILDREN 341 OF 340', color: _red),
    ];

    static List<NavigationItem> fetchAllRoot() {
      return items.where((n) => n.parentId == 0).toList();
    }

    static List<NavigationItem> fetchAllChildren(int childrenId) {
      return items.where((n) => n.parentId == childrenId).toList();
    }

  }