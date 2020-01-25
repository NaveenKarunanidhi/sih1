import 'package:flutter/material.dart';
import 'package:flutter_login_ui/screens/drive.dart';

import 'drawer.dart';

class CameraScreen extends StatefulWidget {
  @override
  _CameraScreenState createState() => new _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {

  @override
  Widget build(BuildContext context) {
    var spacecrafts = ["AREA1","AREA2","AREA3","AREA4","AREA5","AREA6","AREA7","AREA8","AREA9","AREA10"];
    var myGridView = new GridView.builder(
      itemCount: spacecrafts.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return new GestureDetector(
          child: new Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            elevation: 5.0,
            margin: EdgeInsets.all(8.0),
            child: new Container(
              
              alignment: Alignment.centerLeft,
              margin: new EdgeInsets.fromLTRB(65.0, 140.0, 16.0, 8.0),
              child: new Text(spacecrafts[index]),
              decoration: new BoxDecoration(
                image: DecorationImage(
                  image: new AssetImage('assets/logos/imgicon9.png'),
                  fit: BoxFit.contain,

                 )
              ),
            ),
          ),
            onTap: () {
             Navigator.of(context).push(MaterialPageRoute<Null>(builder: (BuildContext)
          {
            return new DriveScreen();
          }));
          },
        );
      },
    );
     return new Scaffold(
     appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            semanticLabel: 'menu',
          ),
         onPressed: ()
        {
          Navigator.of(context).push(MaterialPageRoute<Null>(builder: (BuildContext)
          {
            return new DrawScreen();
          }));
        },
        ),
        title: Text('CAMERAS'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              semanticLabel: 'search',
            ),
            onPressed: ()
            {
              print('search button');
            },
          ),
         IconButton(
            icon: Icon(
              Icons.add_call,
              semanticLabel: 'call',
            ),
            onPressed: ()
            {
              print('call');
            },
          ), 
        ],
      ),
      body: myGridView,
    );
  }
}
          


 


