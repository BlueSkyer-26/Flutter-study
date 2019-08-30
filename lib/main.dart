import 'package:flutter/material.dart';
import 'model/post.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
    );
  }
}

class Home extends StatelessWidget{

  Widget _listItemBuilder(BuildContext context, int index){
    return Container(
      margin: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      child: Column(
        children: <Widget>[
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(8.0),topRight: Radius.circular(8.0)),
              child: FadeInImage.assetNetwork(
                placeholder: "images/ic_device_image_default.png",
                image: posts[index].imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 8.0),
          Text(posts[index].title,
            style: Theme.of(context).textTheme.title,
          ),
          Text(posts[index].author,
            style: Theme.of(context).textTheme.subhead,
          ),
          SizedBox(height: 8.0),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('Flutter-jdl'),
        elevation: 0.0,
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: _listItemBuilder,
      ),
    );
  }
}



class Hello extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(
        'welcome',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          color: Colors.orange,
          fontSize: 35.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}