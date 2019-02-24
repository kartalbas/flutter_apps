import 'package:flutter/material.dart';
import '../models/navigation_item.dart';
import '../mocks/navigation_mocks.dart';
import '../styles/styles.dart';
import '../components/default_app_bar.dart';

class NavigationList extends StatelessWidget {

  final List<NavigationItem> navigationItems;
  final _listItemHeight = 100.0;

  NavigationList(this.navigationItems);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(),
      body: Column(children: [_renderProgressBar(), Expanded(child: _renderListView())])
    );
  }

  Widget _renderProgressBar() {
    return Container();
  }

  Widget _renderListView() {
    return ListView.builder(
      itemCount: this.navigationItems.length,
      itemBuilder: _listViewItemBuilder);
  }

  Widget _listViewItemBuilder(BuildContext context, int index) {
    return GestureDetector(
      onTap: () => _navigateToNext(context, index),
      child: Container (
      margin: EdgeInsets.symmetric(vertical: 0),
      height: _listItemHeight,
      child: _renderListViewItem(context, index)
    )
    );
  }

  Widget _renderListViewItem(BuildContext context, int index) {
    Color backgroundColor = this.navigationItems[index].color;
    var textName = '${this.navigationItems[index].name}'; 
    var radius =  Radius.circular(10.0);

    return Container(
      margin: EdgeInsets.all(2.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: radius, topRight: radius, bottomLeft: radius, bottomRight: radius
        )
      ),
      child: Center(child: Text(textName, style: Styles.textCTAButton))
    );
  }

  void _navigateToNext(BuildContext context, int index) {
    int childrenId = this.navigationItems[index].childrenId;
    var navigationList = NavigationMocks.fetchAllChildren(childrenId);
    var route = MaterialPageRoute(builder: (context) => NavigationList(navigationList));
    Navigator.push(context, route);
  }
}