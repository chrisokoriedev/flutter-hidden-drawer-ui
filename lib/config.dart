import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color primaryGreen = Color(0xff416d6d);
List<BoxShadow> shadowList = [
  BoxShadow(
    color: Colors.grey[300],
    blurRadius: 30,
    offset: Offset(0, 10),
  )
];
List<BoxShadow> shadowList2 = [
  BoxShadow(
    color: Color(0xff416d6d),
    blurRadius: 70,
    offset: Offset(0, 20),
  )
];
List<Map> categories = [
  {'name': 'Cats', 'iconPath': 'images/cat.png'},
  {'name': 'Dogs', 'iconPath': 'images/dog.png'},
  {'name': 'Bunnies', 'iconPath': 'images/rabbit.png'},
  {'name': 'Parrot', 'iconPath': 'images/parrot.png'},
  {'name': 'Horses', 'iconPath': 'images/horse.png'},
];
List<Map> drawerNavItems = [
  {
    'icon': FontAwesomeIcons.paw,
    'title': 'Adoption',
  },
  {
    'icon': Icons.mail,
    'title': 'Donation',
  },
  {
    'icon': FontAwesomeIcons.plus,
    'title': 'Add pet',
  },
  {
    'icon': Icons.favorite,
    'title': 'Favorite',
  },
  {
    'icon': Icons.mail_outlined,
    'title': 'Messages',
  },
  {
    'icon': FontAwesomeIcons.userAlt,
    'title': 'Profile',
  },

];
