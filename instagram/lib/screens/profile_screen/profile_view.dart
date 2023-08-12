import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  List<String> storyHighlights = [
    '',
    'assets/images/5.png',
    'assets/images/6.png',
    'assets/images/7.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text(
          'user_1',
          style: TextStyle(
              fontWeight: FontWeight.w600, color: Colors.black, fontSize: 22),
        ),
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0.5,
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 10),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                  size: 33,
                ),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Padding(padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0)),
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 39,
                  child: CircleAvatar(
                    radius: 37,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/3.png'),
                      radius: 34,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  child: Column(
                    children: [
                      Text(
                        '54',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text('Posts'),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  child: Column(
                    children: [
                      Text(
                        '834',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text('Followers'),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  child: Column(
                    children: [
                      Text(
                        '163',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text('Following'),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'User_1',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      // fontFamily: 'Helvetica_Neue'
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'This is the bio of profile.',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      // fontFamily: 'Helvetica_Neue'
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Text('Edit Profile'),
                    width: 370,
                    height: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        )),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  SingleChildScrollView(
                    child: Row(
                      children: List.generate(
                          4,
                          (index) => index == 0
                              ? Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Column(
                                    children: [
                                      Stack(children: [
                                        Container(
                                          child: CircleAvatar(
                                            radius: 38,
                                            backgroundColor: Colors.grey[500],
                                            child: CircleAvatar(
                                              radius: 36,
                                              backgroundColor: Colors.white,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          right: 14,
                                          top: 12,
                                          child: Container(
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.grey[800],
                                              size: 50,
                                            ),
                                          ),
                                        )
                                      ]),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text('New'),
                                    ],
                                  ),
                                )
                              : Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 38,
                                        backgroundColor: Colors.grey[500],
                                        child: CircleAvatar(
                                          radius: 36,
                                          backgroundColor: Colors.white,
                                          child: CircleAvatar(
                                            radius: 34,
                                            backgroundImage: AssetImage(
                                                storyHighlights[index]),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text('Story')
                                    ],
                                  ),
                                )),
                    ),
                  ),
                  // DefaultTabController(length: 2, child: TabBar)
                  // tabSection(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
