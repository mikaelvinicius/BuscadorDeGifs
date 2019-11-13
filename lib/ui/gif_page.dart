import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:transparent_image/transparent_image.dart';

class GifPage extends StatelessWidget {

  final Map _gifData;

  GifPage(this._gifData);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: (){
              Share.share(_gifData["images"]
                  ["fixed_height"]["url"]);
            }
          )
        ],
        title: Text(_gifData["title"]),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: FadeInImage.memoryNetwork(placeholder: kTransparentImage,
        image: _gifData["images"]["fixed_height"]["url"],
        height: 300.0,
        fit: BoxFit.cover,
      ),
      )
    );
  }
}

