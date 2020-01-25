import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DrawScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Drawer(
          child: Column(
              children: <Widget>[
                 Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(20),
                    color: Theme.of(context).primaryColorLight,
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Container(
                                 width: 100,
                                 height: 100,
                                 margin: EdgeInsets.only(
                                   top: 30,
                                   bottom: 10,
                                 ),
                                 decoration: BoxDecoration(
                                   shape: BoxShape.circle,
                                   image: DecorationImage(image: AssetImage('assets/logos/imgicon7.png'),
                                   fit: BoxFit.fill
                                   ),
                                 ),
                          ),
                          Text('Username', style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                 ),
                 ListTile(
                      leading: Icon(Icons.home),
                      title: Text('Home', style: TextStyle(
                              fontSize: 18,
                      ),
                      ),
                      onTap: null,
                 ),
                  ListTile(
                      leading: Icon(Icons.person),
                      title: Text('Profile', style: TextStyle(
                              fontSize: 18,
                      ),
                      ),
                      onTap: null,
                 ),
                  ListTile(
                      leading: Icon(Icons.live_help),
                      title: Text('Help', style: TextStyle(
                              fontSize: 18,
                      ),
                      ),
                      onTap: null,
                 ),
              ],
          ),
    );
  }
}