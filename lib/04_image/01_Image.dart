import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("图片"),
      ),
      body: ImageDemo(),
    );
  }
}

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.asset(
        "assets/images/horse.png",
        width: 200,
        height: 200,
        fit: BoxFit.cover,
      ),
      Image.network(
        "https://www.wangjiayang.cn/stc/files/2022/04/620c619b-490a-4c08-9282-663845f8344e.png",
        width: 200,
        height: 200,
      )
    ]);
  }
}
