import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("图片"),
      ),
      body: ListViewDemo(),
    );
  }
}

class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      child: Column(
        children: [
          ListViewBasic(),
          ListViewHorizontal(),
          ListViewBuilderDemo()
        ],
      ),
    );
  }
}

class ListViewBasic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      // TODO 这个地方需要用Material包裹一下 https://github.com/flutter/flutter/issues/86584#issuecomment-916407888
      child: Material(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            const ListTile(
              leading: Icon(
                Icons.access_alarm,
                size: 50,
              ),
              title: Text("access_alarm"),
              subtitle: Text("子标题"),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              leading: const Icon(
                Icons.access_alarm,
                size: 50,
              ),
              title: Text("access_alarm"),
              subtitle: Text("子标题"),
              trailing: Icon(Icons.keyboard_arrow_right),
              // selected: true,
              selectedTileColor: Colors.red[100],
            ),
            const ListTile(
              leading: Icon(
                Icons.access_alarm,
                size: 50,
              ),
              title: Text("access_alarm"),
              subtitle: Text("子标题"),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            const ListTile(
              leading: Icon(
                Icons.access_alarm,
                size: 50,
              ),
              title: Text("access_alarm"),
              subtitle: Text("子标题"),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              leading: const Icon(
                Icons.access_alarm,
                size: 50,
              ),
              title: Text("access_alarm"),
              subtitle: Text("子标题"),
              trailing: Icon(Icons.keyboard_arrow_right),
              // 为什么这个颜色一直在
              selected: true,
              selectedTileColor: Colors.red[100],
            ),
            const ListTile(
              leading: Icon(
                Icons.access_alarm,
                size: 50,
              ),
              title: Text("access_alarm"),
              subtitle: Text("子标题"),
              trailing: Icon(Icons.keyboard_arrow_right),
            )
          ],
        ),
      ),
    );
  }
}

class ListViewHorizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 160,
            color: Colors.amber,
          ),
          Container(
            width: 160,
            color: Colors.black26,
          ),
          Container(
            width: 160,
            color: Colors.blue,
          ),
          Container(
            width: 160,
            color: Colors.pink,
          ),
          Container(
            width: 160,
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}

class ListViewBuilderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 160,
            color: Colors.amber,
          ),
          Container(
            width: 160,
            color: Colors.black26,
          ),
        ],
      ),
    );
  }
}
