import 'package:flutter/material.dart';

class NavigationItem {
  final int parentId;
  final int childrenId;
  final String name;
  final Color color;
  NavigationItem({this.parentId, this.childrenId, this.name, this.color});
}