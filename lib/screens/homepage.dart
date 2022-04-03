import 'package:flutter/material.dart';
import 'package:healthapp_ui/widgets/emoji.dart';
import 'package:healthapp_ui/widgets/excercises_tile.dart';
import 'package:intl/intl.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        enableFeedback: true,
        unselectedLabelStyle: const TextStyle(fontSize: 1),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.data_saver_off_sharp), label: 'Menu'),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle_outlined),
              label: 'Profile'),
        ],
      ),
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.all(30),
                  title: const Text(
                    'Hi, Mayank!',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Text(
                      DateFormat("yMMMd").format(
                        DateTime.now(),
                      ),
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.5), fontSize: 16),
                    ),
                  ),
                  trailing: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.blue[700]),
                      child: const Icon(
                        Icons.notifications_rounded,
                        color: Colors.white,
                      )),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.blue[700]),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(children: const [
                      Icon(Icons.search, color: Colors.white),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Search',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )
                    ]),
                  ),
                ),
                ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    horizontalTitleGap: 100,
                    title: const Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Text('How do you feel?',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500)),
                    ),
                    trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_horiz_rounded,
                          color: Colors.white,
                        ))),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: const [
                      Emoticon(
                        emojiName: 'Badly',
                        emojiType: '😔',
                      ),
                      Emoticon(
                        emojiName: 'Fine',
                        emojiType: '😊',
                      ),
                      Emoticon(
                        emojiName: 'Well',
                        emojiType: '😁',
                      ),
                      Emoticon(
                        emojiName: 'Excellent',
                        emojiType: '😃',
                      )
                    ],
                  ),
                ),
              ],
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.40,
              minChildSize: 0.40,
              maxChildSize: 0.8,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  controller: scrollController,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.7,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: const [
                        ListTile(
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 30, vertical: 4),
                          title: Text('Excercises',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          trailing: Icon(Icons.more_horiz_rounded),
                        ),
                        ExcercisesTile(
                            iconType: Icons.favorite,
                            subtitle: '16 Excercises',
                            title: 'Speaking Skills',
                            backgroundColor: Colors.red),
                        ExcercisesTile(
                            iconType: Icons.supervised_user_circle,
                            subtitle: '8 Excercises',
                            title: 'Reading Skills',
                            backgroundColor: Colors.blue),
                        ExcercisesTile(
                            iconType: Icons.stadium,
                            subtitle: '6 Excercises',
                            title: 'Writing Skills',
                            backgroundColor: Colors.deepPurple),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
