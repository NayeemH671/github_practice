import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListView Practice/Dynamic List View"),
        ),
        body: BodyLayout(),
      ),
    );
  }
}

class BodyLayout extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}


Widget _myListView(BuildContext context){
  // return ListView(
  //   children: <Widget>[
  //     ListTile(title: Text("Antora"),),
  //     ListTile(title: Text("Half Boil"),),
  //     ListTile(title: Text("Dim Vaji"),),
  //     ListTile(title: Text("Pocha Dim"),),
  //     ListTile(title: Text("Akkaiccha"),),
  //     ListTile(title: Text("Akkaiccha"),),
  //     ListTile(title: Text("Akkaiccha"),),
  //   ],
  // );
  final ListItems= ['Bag','Shoe','Pant','Pakhi','KironMala'];
  return ListView.builder(
    itemCount: ListItems.length,
    itemBuilder: (context,index){
      return ListTile(title: Text(ListItems[index]),);
    }
  );
}
