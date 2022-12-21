import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:strangerschat/widgets/online_users.dart';

import 'package:strangerschat/widgets/favorite_contacts.dart';
import 'package:strangerschat/widgets/recent_chats.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  Timer? _timer;
  
  @override
  void initState() {
    super.initState();
    EasyLoading.addStatusCallback((status) {
      print('EasyLoading Status $status');
      if (status == EasyLoadingStatus.dismiss) {
        _timer?.cancel();
      }
    });
    EasyLoading.showSuccess('Use in initState');
  }
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text(
            'Strangers',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          elevation: 0.0,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              iconSize: 24.0,
              color: Colors.white,
              onPressed: () {},
            ),
          ],
          bottom:const TabBar(
            // isScrollable: true,
            indicatorColor: Colors.red,
            indicator: BoxDecoration(color: Colors.redAccent),
            tabs:[
              Tab(text:"Message"),
              Tab(text:"Online"),
            ],
            labelStyle: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.red,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const <Widget>[
                    CircleAvatar(
                      radius: 35.0,
                      backgroundImage:
                      AssetImage('assets/images/vivek.png'),
                    ),
                    SizedBox(height: 8.0),
                    Text("Vivek Kumar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text("vivek.kumar.cipl@gmail.com",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                )
              ),
              ListTile(
                iconColor: Colors.redAccent,
                title: Row(
                  children: const [
                    Icon(Icons.person,
                        size: 20.0),
                    SizedBox(width: 8.0),
                    Text('Profile',
                      style: TextStyle(
                      fontSize: 16.0,
                        color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),),
                  ],
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                iconColor: Colors.redAccent,
                title: Row(
                  children: const [
                    Icon(Icons.settings,
                        size: 20.0),
                    SizedBox(width: 8.0),
                    Text('Setting',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),),
                  ],
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                iconColor: Colors.redAccent,
                title: Row(
                  children: const [
                    Icon(Icons.logout,
                    size: 20.0),
                    SizedBox(width: 8.0),
                    Text('Logout',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),),
                  ],
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: <Widget>[
                // const CategorySelector(),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color:  Color(0XFFC0392B),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                    ),
                    child: Column(
                      children: const <Widget>[
                        FavoriteContacts(),
                        RecentChats(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const OnlineUsers(),
          ],
        ),
      ),
    );
  }
}