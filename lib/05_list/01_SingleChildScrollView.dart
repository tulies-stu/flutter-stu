import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("图片"),
      ),
      body: SingleChildScrollViewDemo(),
    );
  }
}

class SingleChildScrollViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      // 水平方向的滚动
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        reverse: true,
        child: Row(
          children: List.generate(
            12,
            (index) =>
                OutlinedButton(onPressed: () {}, child: Text('按钮$index')),
          ),
        ),
      ),
      // 垂直方向的滚动
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(10),
        // reverse: true,
        // 弹性下拉
        physics: BouncingScrollPhysics(),
        child: Column(
          children: List.generate(
            20,
            (index) =>
                OutlinedButton(onPressed: () {}, child: Text('按钮$index')),
          ),
        ),
      )
    ]);
  }
}
