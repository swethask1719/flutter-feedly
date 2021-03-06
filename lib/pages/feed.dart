import 'package:feedly/pages/create.dart';
import 'package:feedly/widgets/compose_box.dart';
import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  _navigate() {
    Navigator.push(context, MaterialPageRoute(builder: (ctx) {
      return CreatePage();
    }));
  }

  _getItems() {
    List<Widget> _items = [];
    Widget _composebox = GestureDetector(
      child: ComposeBox(),
      onTap: _navigate,
    );
    _items.add(_composebox);
    return _items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.rss_feed),
        title: Text(
          "Your feed",
          textAlign: TextAlign.center,
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.exit_to_app), onPressed: () {})
        ],
      ),
      body: ListView(
        children: _getItems(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _navigate,
        child: Icon(Icons.add),
      ),
    );
  }
}
