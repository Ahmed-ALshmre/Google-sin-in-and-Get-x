import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_project/view/anmetsd.dart';


class GitXu extends StatefulWidget {
  @override
  _GitXuState createState() => _GitXuState();
}

class _GitXuState extends State<GitXu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text('Get'),
        centerTitle: true,

      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(onPressed: (){
              Get.to(GoogleSin());
            }, child: Text('click Me')),
            FlatButton(onPressed: (){
              Get.snackbar('test1', 'hi ther how are you',backgroundColor: Colors.yellow);
            }, child: Text('showSnackpar')),
            FlatButton(onPressed: (){
             Get.defaultDialog(backgroundColor: Colors.deepOrange,title: 'he', content: Text('ahmed'), actions: [
               Padding(
                 padding: const EdgeInsets.only(right: 50),
                 child: FlatButton(onPressed: (){
                   Navigator.pop(context);
                 }, child: Text('pro')),
               )
             ] );
            }, child: Text('delockobs')),
            FlatButton(onPressed: (){
              Get.bottomSheet(Container(
                color: Colors.white,
                child: Wrap(
                  children: [
                    ListTile(
                      leading: Icon(Icons.add_circle),
                      title: Text('ahmed'),
                    ),
                  ],
                ),

              ));
            }, child: Text('click Me6')),

          ],
        ),
      ) ,
    );
  }
}
