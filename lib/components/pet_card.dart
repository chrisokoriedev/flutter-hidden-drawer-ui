import 'package:flutter/material.dart';

import '../config.dart';

class PetCard extends StatelessWidget {
  final String name;
  final String imageId;
  final String year;
  final Color colorType;
  final IconData iconTypeForGender;

  const PetCard({Key key, this.name, this.imageId, this.year, this.colorType, this.iconTypeForGender})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Expanded(
              child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 50),
                decoration: BoxDecoration(
                  color: colorType,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: shadowList,
                ),
              ),
              Align(
                child: Image.asset(imageId),
              )
            ],
          )),
          Expanded(
              child: Container(
            margin: EdgeInsets.only(
              top: 60,
              bottom: 1,
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: shadowList,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(10),
                )),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '$name',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                       iconTypeForGender,
                        color: Colors.grey,
                        size: 30,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Abyssinian cat',
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        '$year',
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: primaryGreen,
                        size: 20,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        'Distance: 3.6 km',
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )),
        ],
      ),
    );
  }
}
