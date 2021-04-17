// import 'package:flutter/material.dart';
// import 'package:flutter_theme/UI/homepage.dart';
// import 'package:kf_drawer/kf_drawer.dart';
// class MainWidget extends StatefulWidget {
//   @override
//   _MainWidgetState createState() => _MainWidgetState();
// }
//
// class _MainWidgetState extends State<MainWidget> {
//   late KFDrawerController _drawerController;
//
//   @override
//   void initState() {
//     super.initState();
//     _drawerController = KFDrawerController(
//       initialPage: ClassBuilder.fromString('MainPage'),
//       items: [
//         KFDrawerItem.initWithPage(
//           text: Text('MAIN', style: TextStyle(color: Colors.white)),
//           icon: Icon(Icons.home, color: Colors.white),
//          // page: MainPage(),
//         ),
//         KFDrawerItem.initWithPage(
//           text: Text(
//             'CALENDAR',
//             style: TextStyle(color: Colors.white),
//           ),
//           icon: Icon(Icons.calendar_today, color: Colors.white),
//           //page: CalendarPage(),
//         ),
//         KFDrawerItem.initWithPage(
//           text: Text(
//             'SETTINGS',
//             style: TextStyle(color: Colors.white),
//           ),
//           icon: Icon(Icons.settings, color: Colors.white),
//           //page: ClassBuilder.fromString('SettingsPage'),
//         ),
//       ],
//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: KFDrawer(
//         controller: _drawerController,
//         header: Align(
//           alignment: Alignment.centerLeft,
//           child: Container(
//             padding: EdgeInsets.symmetric(horizontal: 16.0),
//             width: MediaQuery.of(context).size.width * 0.6,
//             child: Image.asset(
//               'assets/logo.png',
//               alignment: Alignment.centerLeft,
//             ),
//           ),
//         ),
//         footer: KFDrawerItem(
//           text: Text(
//             'SIGN IN',
//             style: TextStyle(color: Colors.white),
//           ),
//           icon: Icon(
//             Icons.input,
//             color: Colors.white,
//           ),
//           onPressed: () {
//           },
//         ),
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             colors: [Color.fromRGBO(255, 255, 255, 1.0), Color.fromRGBO(44, 72, 171, 1.0)],
//             tileMode: TileMode.repeated,
//           ),
//         ),
//       ),
//     );
//   }
// }