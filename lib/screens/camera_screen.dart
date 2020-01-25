import 'package:flutter/material.dart';

class CameraScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            semanticLabel: 'menu',
          ),
          onPressed: (){
            print('Menu');
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
      body: GridView.count(
  crossAxisCount: 2,
  padding: EdgeInsets.all(16.0),
  childAspectRatio: 8.0 / 9.0,
  children: <Widget>[
  Card(
    clipBehavior: Clip.antiAlias,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        AspectRatio(
          aspectRatio: 18.0 / 11.0,
          child: Image.asset('assets/logos/imgicon9.png'),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('AREA 1'),
              SizedBox(height: 8.0),
              Text('North East'),
              Card(
    clipBehavior: Clip.antiAlias,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        AspectRatio(
          aspectRatio: 18.0 / 11.0,
          child: Image.asset('assets/logos/imgicon9.png'),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(60.0, 7.0, 45.0, 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text('AREA 2'),
              SizedBox(height: 8.0),
              Text('South East'),
            ],
          ),
        ),
      ],
    ),

  )
],
),

),
      ],
    ),
  )
  ],
      ),
    );

}
}
