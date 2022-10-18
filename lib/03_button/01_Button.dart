import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("层叠布局"),
        leading: Icon(Icons.menu),
        actions: [Icon(Icons.settings)],
      ),
      body: ButtonDemo(),
      // 浮动按钮
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "++++",
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
        // 去掉阴影
        // elevation: 0,
      ),
    );
  }
}

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Wrap(
        children: [
          TextButton(
              onPressed: () {
                // ignore: avoid_print
                print("点击 TextButton");
              },
              onLongPress: () {
                print("长按 TextButton");
              },
              child: const Text("TextButton")),
          ElevatedButton(
              onPressed: () {
                // ignore: avoid_print
                print("点击 ElevatedButton");
              },
              onLongPress: () {
                print("长按 ElevatedButton");
              },
              child: const Text("ElevatedButton")),
          OutlinedButton(
              onPressed: () {
                // ignore: avoid_print
                print("点击 OutlinedButton");
              },
              onLongPress: () {
                print("长按 OutlinedButton");
              },
              child: const Text("OutlinedButton")),
          OutlinedButton(
            style: ButtonStyle(
                textStyle:
                    MaterialStateProperty.all(const TextStyle(fontSize: 28)),
                //前景色
                foregroundColor: MaterialStateProperty.resolveWith((states) {
                  // 按下按钮时的前景色
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.red;
                  }
                  return Colors.blue;
                }),
                // 按下按钮时的背景色
                backgroundColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.yellow;
                  }
                  return Colors.white;
                }),
                shadowColor: MaterialStateProperty.all(Colors.yellow),
                elevation: MaterialStateProperty.all(20),
                // 边框
                side: MaterialStateProperty.all(
                    const BorderSide(color: Colors.green, width: 2)),
                shape: MaterialStateProperty.all(const StadiumBorder(
                    // 这个下面的side配置不知道干嘛用的 不知道起到了啥作用
                    side: BorderSide(color: Colors.green, width: 2))),
                minimumSize: MaterialStateProperty.all(const Size(200, 100)),
                overlayColor: MaterialStateProperty.all(Colors.purple)),
            onPressed: () {
              // ignore: avoid_print
              print("点击 轮廓按钮");
            },
            onLongPress: () {
              print("长按 轮廓按钮");
            },
            child: const Text("轮廓按钮"),
          ),
          IconButton(
            onPressed: () {
              print("点击 IconButton");
            },
            icon: const Icon(Icons.add_alarm),
            color: Colors.red,
            // 水波纹
            splashColor: Colors.lightBlue,
            // 高亮
            highlightColor: Colors.purple,
            tooltip: "怎么了",
          ),
          TextButton.icon(
            onPressed: () {
              print("点击了 TextButton");
            },
            icon: Icon(Icons.add_circle),
            label: Text("文本按钮"),
          ),
          ElevatedButton.icon(
            onPressed: () {
              print("点击了 ElevatedButton");
            },
            icon: Icon(Icons.add_circle),
            label: Text("凸起按钮"),
          ),
          OutlinedButton.icon(
            onPressed: () {
              print("点击了 OutlinedButton");
            },
            icon: Icon(Icons.add_circle),
            label: Text("轮廓按钮"),
          ),
          // 按钮组
          Container(
            child: ButtonBar(
              children: [
                ElevatedButton(onPressed: () {}, child: Text("按钮1")),
                ElevatedButton(onPressed: () {}, child: Text("按钮2")),
                ElevatedButton(onPressed: () {}, child: Text("按钮3")),
                ElevatedButton(onPressed: () {}, child: Text("按钮4")),
              ],
            ),
          ),
          BackButton(
            color: Colors.red,
          ),
          CloseButton(
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
