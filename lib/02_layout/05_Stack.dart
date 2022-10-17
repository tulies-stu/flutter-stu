import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("层叠布局"),
      ),
      body: StackDemo(),
    );
  }
}

class StackDemo extends StatelessWidget {
  const StackDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        // 声明未定位的子组件的排序方式
        textDirection: TextDirection.rtl,
        // 声明未定位的子组件的对其方式
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://p3-passport.byteimg.com/img/user-avatar/de26ece3b8301cbee0b3df10512d9cbb~64x64.png'),
            radius: 200,
          ),
          Positioned(
            top: 20,
            right: 20,
            child: Container(
                color: Colors.amber,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  "王嘉炀",
                  style: TextStyle(color: Colors.white),
                )),
          ),
          // 这是一个没有定位的层
          const Text("hello", style: TextStyle(color: Colors.red, fontSize: 40))
        ],
      ),
    );
  }
}
