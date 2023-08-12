import 'package:flutter/material.dart';
import 'package:instagram/screens/home_screen.dart';
import 'package:instagram/screens/profile_screen/profile_section.dart';
import 'package:instagram/screens/search_screen.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentScreen(),
      bottomNavigationBar: bottomNav(),
    );
  }

  Widget currentScreen() {
    switch (index) {
      case 0:
        return const HomeScreen();
      case 1:
        return const SearchScreen();
      case 4:
        return const ProfileSection();
      default:
        return Container();
    }
  }

  Widget bottomNav() {
    return Container(
        padding: const EdgeInsets.all(20),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          InkWell(
              onTap: () {
                index = 0;
                setState(() {});
              },
              child: index == 0
                  ? Image.asset('assets/icons/home_filled.png',
                      width: 25, height: 25)
                  : Image.asset('assets/icons/home.png',
                      width: 25, height: 25)),
          InkWell(
              onTap: () {
                index = 1;
                setState(() {});
              },
              child: index == 1
                  ? Image.asset('assets/icons/search_filled.png',
                      width: 25, height: 25)
                  : Image.asset(
                      'assets/icons/search.png',
                      width: 25,
                      height: 25,
                    )),
          InkWell(
              onTap: () {
                index = 2;
                setState(() {});
              },
              child: Image.asset('assets/icons/add_post.png',
                  width: 25, height: 25)),
          InkWell(
              onTap: () {
                index = 3;
                setState(() {});
              },
              child:
                  Image.asset('assets/icons/like.png', width: 25, height: 25)),
          InkWell(
            onTap: () {
              index = 4;
              setState(() {});
            },
            child: index == 4
                ? const CircleAvatar(
                    radius: 19,
                    backgroundColor: Color.fromARGB(255, 0, 0, 0),
                    child: CircleAvatar(
                      radius: 15,
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                    ),
                  )
                : const CircleAvatar(
                    radius: 17,
                    backgroundColor: Color.fromARGB(255, 0, 0, 0),
                    child: CircleAvatar(
                      radius: 15,
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                    ),
                  ),
          ),
        ]));
  }
}
