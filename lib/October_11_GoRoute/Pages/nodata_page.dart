import 'package:flutter/material.dart';

class NoDataPage extends StatelessWidget {
  const NoDataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text(
            'Sorry wrong place',
            style: TextStyle(
              color: Colors.redAccent[300],
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
