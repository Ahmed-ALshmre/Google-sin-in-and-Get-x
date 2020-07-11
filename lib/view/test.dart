import 'package:flutter/material.dart';
import 'package:new_project/model/class_test.dart';

class TestVaew extends StatefulWidget {
  @override
  _TestVaewState createState() => _TestVaewState();
}

class _TestVaewState extends State<TestVaew> {
  final List<String> _list = [
   'ahmed',
    'ahmre',
    'ahmed',
    'ahmre',
    'ahmed',
    'ahmre',
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: 200,
              color: Colors.teal,
              child: ListView.builder(
                  itemCount: _list.length,
                  itemBuilder: (context , index){
                return InkWell(
                  onTap: (){
                    String _ahmed ='ahmre';
                    _list.remove(_list[index]);
                    setState(() {

                    });
                  },
                  child: Column(
                    children: <Widget>[
                      Text(_list[index]),
                    ],
                  ),
                );
              }
      ),
        ),
            RaisedButton(
              child: Text('chfhh'),
             
            )

            ]
        )

    )
    );
  }
}
