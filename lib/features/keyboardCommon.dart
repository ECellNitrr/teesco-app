import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';



//Custom Keyboard To Enter Numbers Assign on Pressed Modify as will



class keyBoard extends StatelessWidget {

  final GestureTapCallback onPressed1;
  final GestureTapCallback onPressed2;
  final GestureTapCallback onPressed3;
  final GestureTapCallback onPressed4;
  final GestureTapCallback onPressed5;
  final GestureTapCallback onPressed6;
  final GestureTapCallback onPressed7;
  final GestureTapCallback onPressed8;
  final GestureTapCallback onPressed9;
  final GestureTapCallback onPressed0;
  final GestureTapCallback onPressedDel;
  final GestureTapCallback onPressedSubmit;
  final Widget widgetDel;
  final Widget widgetSubmit;

  keyBoard({
    @required this.onPressed1,
    @required this.onPressed2,
    @required this.onPressed3,
    @required this.onPressed4,
    @required this.onPressed5,
    @required this.onPressed6,
    @required this.onPressed7,
    @required this.onPressed8,
    @required this.onPressed9,
    @required this.onPressed0,
    @required this.onPressedDel,
    @required this.onPressedSubmit,
    @required this.widgetSubmit,
    @required this.widgetDel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

        Container(
          child: Padding(
            padding: const EdgeInsets.only(
                left: 8.0, top: 16.0, right: 8.0, bottom: 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                MaterialButton(

                  onPressed: onPressed1,
                  child: Text("1",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w400,
                    ),textAlign: TextAlign.center,
                  ),
                ),
                MaterialButton(

                  onPressed: onPressed2,
                  child: Text("2",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w400,
                    ),textAlign: TextAlign.center,
                  ),
                ),
                MaterialButton(

                  onPressed: onPressed3,
                  child: Text("3",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w400,
                    ),textAlign: TextAlign.center,
                  ),
                )
                ,
              ],
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.only(
                left: 8.0, top: 16.0, right: 8.0, bottom: 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                MaterialButton(

                  onPressed: onPressed4,
                  child: Text("4",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w400,
                    ),textAlign: TextAlign.center,
                  ),
                ),
                MaterialButton(

                  onPressed: onPressed5,
                  child: Text("5",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w400,
                    ),textAlign: TextAlign.center,
                  ),
                ),
                MaterialButton(

                  onPressed: onPressed6,
                  child: Text("6",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w400,
                    ),textAlign: TextAlign.center,
                  ),
                )
                ,
              ],
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.only(
                left: 8.0, top: 16.0, right: 8.0, bottom: 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                MaterialButton(

                  onPressed: onPressed7,
                  child: Text("7",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w400,
                    ),textAlign: TextAlign.center,
                  ),
                ),
                MaterialButton(

                  onPressed: onPressed8,
                  child: Text("8",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w400,
                    ),textAlign: TextAlign.center,
                  ),
                ),
                MaterialButton(

                  onPressed: onPressed9,
                  child: Text("9",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w400,
                    ),textAlign: TextAlign.center,
                  ),
                )
                ,
              ],
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.only(
                left: 8.0, top: 16.0, right: 8.0, bottom: 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                MaterialButton(

                  onPressed: onPressedDel,
                  child: widgetDel,
                ),
                MaterialButton(

                  onPressed: onPressed0,
                  child: Text("0",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w400,
                    ),textAlign: TextAlign.center,
                  ),
                ),
                MaterialButton(

                  onPressed: onPressedSubmit,
                  child: widgetSubmit,
                )
                ,
              ],
            ),
          ),
        ),

      ],
    );
  }
}
