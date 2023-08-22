import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:youtube_clone/library_screen/library_main.dart';
import 'package:youtube_clone/subscriptions_screen/subscription_main.dart';
import 'package:youtube_clone/youtube_clone.dart';
import 'package:youtube_clone/screen_two_shorts/shorts_main.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({Key? key}) : super(key: key);

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int _currentIndex = 0;
  final tabs = <Widget>[
    const Youtube(),
    const Shorts(),
    const Center(
      child: Text('Account'),
    ),
    const SubscriptionMain(),
    const LibraryMain(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: SizedBox(
        height: 65,
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.grey.shade400,
          showUnselectedLabels: true,
          selectedItemColor: Colors.black,
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
                activeIcon: Icon(Icons.home)),
            const BottomNavigationBarItem(
                icon: Icon(Icons.video_collection_outlined),
                label: 'Shorts',
                activeIcon: Icon(Icons.video_collection)),
            BottomNavigationBarItem(//icon: SizedBox(), label: ''
                icon: Material(
                  type: MaterialType.transparency,
                  child: Ink(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(50.0)),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(100.0),
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: snackBarOptions(),
                            behavior: SnackBarBehavior.fixed,
                            duration: const Duration(minutes: 2),
                            backgroundColor: Colors.white,
                            showCloseIcon: true,

                          ),
                        );
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Icon(
                          Icons.add,
                          size: 32.8,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                label: ''
                ),
            const BottomNavigationBarItem(
                icon: Icon(Icons.subscriptions_outlined), label: 'Subscriptions'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.video_library), label: 'Library')
          ],
          onTap: _onItemTap,
        ),
      ),
      // floatingActionButton: FloatingActionButton(onPressed: null, child: Icon(Icons.add), ),
      //
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget snackBarOptions(){
    return ListView(
      shrinkWrap: true,
      children: const [
        ListTile(
          leading: AutoSizeText("Create", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),),
        ),
        ListTile(
          leading: Icon(Icons.video_collection_outlined),
          title: AutoSizeText('Create a Short'),
        ),
        ListTile(
          leading: Icon(Icons.upload),
          title: AutoSizeText('Upload a video'),
        ),
        ListTile(
          leading: Icon(Icons.wifi),
          title: AutoSizeText('Go live'),
        ),
        ListTile(
          leading: Icon(Icons.post_add_outlined),
          title: AutoSizeText('Create a post'),
        ),
      ],
    );
  }
}
