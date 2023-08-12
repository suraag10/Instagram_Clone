import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Icon currentLikeStatus = Icon(Icons.favorite_border_rounded);
  Icon unlike = Icon(Icons.favorite_border_rounded);
  Icon like = Icon(
    Icons.favorite_outlined,
    color: Colors.pink,
  );
  List<String> profile = [
    'assets/images/1.png',
    'assets/images/2.png',
    'assets/images/3.png',
    'assets/images/4.png',
    'assets/images/5.png',
    'assets/images/6.png',
    'assets/images/7.png',
    'assets/images/8.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppbar(),
      body: Padding(
        padding: EdgeInsets.all(5),
        child: SingleChildScrollView(
          // STORY
          child: Column(children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    8,
                    (index) => Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 39,
                                backgroundImage:
                                    AssetImage('assets/images/gradient.png'),
                                child: CircleAvatar(
                                  radius: 36,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage(profile[index]),
                                    radius: 34,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'username',
                                style: TextStyle(
                                  // fontFamily: 'Helvetica_Neue',
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        )),
              ),
            ),
            Divider(
              height: 20,
              thickness: 0.5,
            ),

            // POST FEED
            Column(
              children: List.generate(
                  7,
                  (index) => Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                padding: EdgeInsets.all(10),
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/images/gradient.png'),
                                  radius: 16,
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage(profile[index]),
                                    radius: 14,
                                  ),
                                ),
                              ),
                              Text(
                                'UserName',
                                style: TextStyle(fontFamily: 'Helvetica_Neue'),
                              ),
                              Spacer(),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.more_vert)),
                            ],
                          ),
                          Image.asset(profile[index]),
                          // children: strings.map((index) => new Text(index)).toList());

                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  currentLikeStatus == unlike
                                      ? currentLikeStatus = like
                                      : currentLikeStatus = unlike;

                                  setState(() {});
                                },
                                icon: currentLikeStatus,
                                iconSize: 28,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.mode_comment_outlined),
                                iconSize: 25,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.share),
                              ),
                              Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.bookmark_border),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(15, 10, 0, 30),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage:
                                          AssetImage(profile[index]),
                                      radius: 10,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    RichText(
                                      text: TextSpan(
                                          style: TextStyle(color: Colors.black),
                                          children: [
                                            TextSpan(text: 'Liked by'),
                                            TextSpan(
                                                text: ' User_1',
                                                style: TextStyle(
                                                    fontFamily:
                                                        'Helvetica_Neue')),
                                            TextSpan(text: ' and '),
                                            TextSpan(
                                                text: ' 40 others ',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ]),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: RichText(
                                    text: TextSpan(
                                        style: TextStyle(color: Colors.black),
                                        children: [
                                          TextSpan(
                                              text: 'User_1',
                                              style: TextStyle(
                                                  fontFamily:
                                                      'Helvetica_Neue')),
                                          TextSpan(
                                              text:
                                                  '   lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eius. '),
                                        ]),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
            )
          ]),
        ),
      ),
    );
  }

  AppBar showAppbar() {
    return AppBar(
      leading: const Padding(
        padding: EdgeInsets.all(14),
        child: Icon(
          Icons.camera_alt_outlined,
          size: 35,
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.grey[100],
      title: const Text(
        'Instagram',
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'FontSpring',
          fontSize: 30,
          // fontWeight: FontWeight.normal,
        ),
      ),
      centerTitle: true,
      elevation: 1,
      actions: [
        // SizedBox(width:,)
        Image.asset(
          'assets/icons/messenger.png',
          width: 25,
          height: 25,
        ),
        SizedBox(
          width: 15,
        ),
        Image.asset(
          'assets/icons/share.png',
          width: 25,
          height: 25,
        ),
        SizedBox(
          width: 10,
        ),
        // Padding(
        //   padding: const EdgeInsets.all(10),
        //   // child: SizedBox(
        //   //   height: 100,
        //   //   width: 100,
        //   child: Stack(
        //     children: [

        //     ],
        //   ),
        //   // ),
        // ),
      ],
    );
  }
}
