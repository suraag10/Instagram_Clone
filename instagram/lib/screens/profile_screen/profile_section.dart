import 'package:flutter/material.dart';
import 'package:instagram/screens/profile_screen/profile_view.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> gridPosts = [
      'assets/images/1.png',
      'assets/images/2.png',
      'assets/images/3.png',
      'assets/images/4.png',
      'assets/images/5.png',
      'assets/images/6.png',
      'assets/images/7.png',
      'assets/images/8.png',
      'assets/images/9.png',
      'assets/images/10.png',
      'assets/images/11.png',
      'assets/images/12.png',
      'assets/images/13.png',
      'assets/images/14.png',
      'assets/images/15.png',
      'assets/images/16.png',
    ];
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          physics: NeverScrollableScrollPhysics(),
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                // floating: true,
                collapsedHeight: 390,

                flexibleSpace: ProfileView(),
              ),
            ];
          },
          body: DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: TabBar(
                tabs: [
                  Tab(
                    icon: Image.asset('assets/images/Grid.png'),
                  ),
                  Tab(
                    icon: Image.asset('assets/images/Tags.png'),
                  )
                ],
              ),
              body: TabBarView(
                children: [1, 2]
                    .map((e) => GridView.count(
                          crossAxisCount: 3,
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 10,
                          children: gridPosts
                              .map((e) => Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                      image: AssetImage(e),
                                      fit: BoxFit.fill,
                                    )),
                                  ))
                              .toList(),
                        ))
                    .toList(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
