import 'package:fancy_bar/fancy_bar.dart';
import 'package:flutter/material.dart';

class AnimatedBottomBar extends StatefulWidget {
  static String tag = 'animatedBottomBar';

  @override
  _AnimatedBottomBarState createState() => _AnimatedBottomBarState();
}

class _AnimatedBottomBarState extends State<AnimatedBottomBar> {
  int pos = 0;

  void setItem(int _pos) {
    setState(() {
      pos = _pos;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
//      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('ANIMATER BOTTOMBAR'),
      ),
      bottomNavigationBar: FancyBottomBar(
        items: [
          FancyItem(
            textColor: Colors.orange,
            title: 'Home',
            icon: Icon(Icons.home),
          ),
          FancyItem(
            textColor: Colors.red,
            title: 'Trending',
            icon: Icon(Icons.trending_up),
          ),
          FancyItem(
            textColor: Colors.green,
            title: 'Search',
            icon: Icon(Icons.search),
          ),
          FancyItem(
            textColor: Colors.brown,
            title: 'Settings',
            icon: Icon(Icons.settings),
          ),
        ],
        onItemSelected: (index) {
          print(index);
        },
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'TAP TO PLAY WITH ANIMATION',
            ),
          ],
        ),
      ),
    );
  }
}
