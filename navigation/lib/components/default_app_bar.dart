import 'package:flutter/material.dart';
import '../styles/styles.dart';
import '../styles/styles_tools.dart';

class DefaultAppBar extends AppBar {
  @override
  final Widget title = Text("Navigation Test App".toUpperCase(), style: Styles.navBarTitle);

  @override
  final IconThemeData iconTheme =IconThemeData(color: StylesTools.hexToColor("000000"));

  @override
  final Color backgroundColor = StylesTools.hexToColor("FFFFFF");

  @override
  final bool centerTitle = true;

  @override
  final double elevation = 0.5;
}
