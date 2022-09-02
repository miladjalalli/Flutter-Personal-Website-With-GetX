import 'package:flutter/material.dart';

@immutable
class RoundedButtonByIcon extends StatelessWidget {
 final Color color;
 final IconData icon;
 final Function onTap;


  RoundedButtonByIcon(this.color,this.icon, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
        child: InkWell(
          onTap: () async {
            onTap();
          },
          child: FlatButton(
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(100.0),
                side: BorderSide(color: Colors.black)),
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "View Post",
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(width: 8.0),
                  Icon(icon, color: Colors.white),
                ],
              ),
            ),
            onPressed: () async{
              onTap();
            },
          ),
        ));
  }
}
