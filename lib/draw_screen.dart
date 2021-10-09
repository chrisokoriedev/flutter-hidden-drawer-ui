import 'package:flutter/material.dart';
import 'package:hidden_drawer_ui/config.dart';

class DrawScreen extends StatefulWidget {
  @override
  _DrawScreenState createState() => _DrawScreenState();
}

class _DrawScreenState extends State<DrawScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryGreen,
      padding: EdgeInsets.only(top: 35.0, left: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(),
              SizedBox(
                width: 18.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ogunmuyiwa Adetoun',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20.0),
                  ),
                  Text(
                    'Active Status',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white30,
                        fontSize: 18.0),
                  ),

                ],
              )
            ],
          ),
          Column(
            children: drawerNavItems
                .map((element) => Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                        children: [
                          Icon(
                            element['icon'],
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(width: 10,),
                          Text(
                            element['title'],
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20),
                          )
                        ],
                      ),
                ))
                .toList(),
          ),
          Row(
            children: [
              IconButton(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.white30,
                    size: 25.0,
                  ),
                  onPressed: null),
              SizedBox(
                width: 5,
              ),
              Text(
                'Settings',
                style: TextStyle(
                    color: Colors.white30,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 2,
                height: 20,
                color: Colors.white30,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Log out',
                style: TextStyle(
                    color: Colors.white30,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
