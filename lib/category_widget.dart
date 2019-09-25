import 'package:flutter/material.dart';
import 'package:udacity_flutter_app/converter_route.dart';
import 'package:udacity_flutter_app/unit.dart';

final _rowHeight = 100.0;
final _borderRadius = BorderRadius.circular(_rowHeight / 2);

class Category extends StatelessWidget {
  final String name;
  final ColorSwatch color;
  final IconData iconLocation;
  final List<Unit> units;

  const Category(
      {Key key,
      @required this.name,
      @required this.color,
      @required this.iconLocation,
      @required this.units})
      : assert(name != null),
        assert(color != null),
        assert(iconLocation != null),
        assert(units != null),
        super(key: key);

  // Navigates to the [ConverterRoute]
  void _navigateToConverter(BuildContext context) {
    if (Navigator.of(context).canPop()) {
      Navigator.of(context).pop();
    }
    Navigator.of(context).push(MaterialPageRoute<Null>(
      builder: (BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            elevation: 1.0,
            title: Text(
              name,
              style: Theme.of(context).textTheme.display1,
            ),
            centerTitle: true,
            backgroundColor: color[100],
          ),
          body: ConverterRoute(color: color, units: units),
        );
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Center(
        child: Container(
          height: _rowHeight,
          child: InkWell(
            borderRadius: _borderRadius,
            highlightColor: color,
            splashColor: color,
            onTap: () {
              print('I was tapped!');
              debugPrint('I was tapped! in debugPrint....');
              _navigateToConverter(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Icon(
                      iconLocation,
                      size: 60.0,
                    ),
                  ),
                  Center(
                    child: Text(
                      name,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.display1.copyWith(
                            color: Colors.grey[700],
                            fontSize: 24.0,
                            fontWeight: FontWeight.w700,
                          ), //Theme.of(context).textTheme.headline
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
