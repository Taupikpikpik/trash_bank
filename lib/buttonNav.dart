import 'package:flutter/material.dart';
import 'package:trash_bank/home.dart';
import 'package:trash_bank/notifikasi.dart';
import 'package:trash_bank/profile.dart';

class HalamanUtama extends StatefulWidget {
  const HalamanUtama({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<HalamanUtama> {
  int _SelectedIndex = 0;

  void _onTap(int index) {
    setState(() {
      _SelectedIndex = index;
    });
  }

  List<Widget> pages = [
    home(),
    Notifikasi(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_SelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        iconSize: 30,
        selectedItemColor: Colors.amber,
        currentIndex: _SelectedIndex,
        onTap: _onTap,
        items: [
          BottomNavigationBarItem(
              icon: Icon(_SelectedIndex == 2
                  ? Icons.home_rounded
                  : Icons.home_rounded),
              label: 'Home'),
          // BottomNavigationBarItem(
          //   icon: Icon(_SelectedIndex ==1 ? Icons.description_outlined : Icons.description_outlined),
          // label:'Keterangan'
          // ),
          BottomNavigationBarItem(
              icon: Icon(_SelectedIndex == 2
                  ? Icons.notifications
                  : Icons.notifications),
              label: 'Notification'),
          BottomNavigationBarItem(
              icon: Icon(_SelectedIndex == 3 ? Icons.person : Icons.person),
              label: 'Profile'),
        ],
     ),
);
}
}