import 'package:flutter/material.dart';
import 'page/dynamic.dart';
import 'page/category.dart';
import 'page/message.dart';
import 'page/mine.dart';

class AppHomePage extends StatefulWidget  {
  AppHomePage({Key? key}) : super(key: key);

  @override
  _AppHomePageState createState()=>_AppHomePageState();
}

  class _AppHomePageState extends State<AppHomePage> {
      int _index=0;
      int _selectedIndex=0;
      List<Widget> _homeWidgets=[
        DynamicPage(),
        MessagePage(),
        CategoryPage(),
        MinePage(),
      ];

      void _onBottomNavigationBarTapped(index){
       print("输入index $index");
        setState(() {
          _index = index;

        });
      }

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('岛上码农'),
            brightness: Brightness.dark,
            centerTitle: true,
          ),
          body: IndexedStack(
            index:_index,
            children: _homeWidgets,
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _index,
            onTap: _onBottomNavigationBarTapped,
            selectedItemColor: Theme.of(context).primaryColor,
            items: [
              _getBottomNavItem(
                '动态','static/images/dynamic.png','static/images/dynamic-hover.png',0
              ),
              _getBottomNavItem(
                '消息','static/images/message.png','static/images/message-hover.png',1
              ),
              _getBottomNavItem(
                '分类浏览','static/images/category.png','static/images/category-hover.png',2
              ), _getBottomNavItem(
                '个人中心','static/images/mine.png','static/images/mine-hover.png',3
              )
            ],
            // selectedLabelStyle: TextStyle(color: Colors.blue),
            // unselectedLabelStyle: TextStyle(color: Colors.grey),
          ),
        ) ;
      }


    
      BottomNavigationBarItem  _getBottomNavItem(
        String title, String normalIcon, String pressedIcon, int index
      ){
        return BottomNavigationBarItem(
          icon: _index==index ? Image.asset(
              pressedIcon,
              width: 32,
              height: 28,
            )
            :Image.asset(
              normalIcon,
              width: 32,
              height: 28,
            ),
            label: title,
          );
      }


  }

