import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Practice3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Hello',
            style: TextStyle(fontSize: 35.0),
          ),
          Theme.of(context).platform == TargetPlatform.iOS
              ? CupertinoSwitch(
                  value: true,
                  onChanged: (bool toggled) {},
                )
              : Switch(
                  value: true,
                  onChanged: (bool toggled) {},
                ),
        ],
      ),
    );
  }

/*  void _text() {
    Center(
      child: GestureDetector(
        onTap: _maketextEditable,
        onLongPress: _showAvailableActions,
        child: Text(
          'Hello!',
          style: TextStyle(fontSize: 40.0),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }*/

}
