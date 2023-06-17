import 'package:flutter/material.dart';
import '../data.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  var _deviceHeight;
  var _devicesWitdh;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _devicesWitdh = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Stack(
      children: <Widget>[
        _feauterdGamersWidget(),
      ],
    ));
  }

  Widget _feauterdGamersWidget() {
    return SizedBox(
      height: _deviceHeight * 0.50,
      width: _devicesWitdh,
      child: PageView(
          scrollDirection: Axis.horizontal,
          children: featuredGames.map((_game) {
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(_game.coverImage.url),
                ),
              ) ,
            );
          }).toList(),
        ));
  }

}
