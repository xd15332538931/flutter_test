import 'package:flutter/material.dart';
import 'dynamic_item.dart';
class DynamicPage extends StatelessWidget {
  const DynamicPage({Key? key}):super(key:key);
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
     body: Container(
      child: ListView.builder(
        itemCount: 50,
        itemBuilder: (BuildContext context,int index){
           print('####index $index');
            return DynamicItem(
              '标题$index:这是一个列表标题，最多两行，多出部分将会被截取',
              'https://img0.baidu.com/it/u=3021883569,1259262591&fm=253&app=120&size=w931&n=0&f=JPEG&fmt=auto?sec=1693501200&t=af327262091e247f386e3ddd0f484e16',
              18
            );
          }
        ),
     ),
    );
  }
}