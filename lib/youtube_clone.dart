import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/splash_screen/check_verified.dart';
import 'package:youtube_clone/splash_screen/just_variables.dart';
import 'package:youtube_clone/splash_screen/user_details.dart';
import 'package:youtube_clone/sub_menu.dart';
import 'package:youtube_clone/video_card.dart';
import 'package:youtube_clone/video_model/video_list.dart';

class Youtube extends StatefulWidget {
  const Youtube({Key? key}) : super(key: key);

  @override
  State<Youtube> createState() => _YoutubeState();
}

class _YoutubeState extends State<Youtube> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                //Top symbol and other options search, cast, account
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/youtube_symbol.png',
                        height: 50,
                        width: 100,
                      ),

                      const SizedBox(width: 70,),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            const IconButton(onPressed: null, icon: Icon(Icons.cast)),
                            const IconButton(onPressed: null, icon: Icon(Icons.notifications)),
                            const IconButton(onPressed: null, icon: Icon(Icons.search)),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: InkWell(
                                  splashColor: Colors.black12,
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => isCurrentUserLoggedIn
                                        ? const UserDetails()
                                        : const CheckVerified()
                                    ));
                                  },
                                  child: const CircleAvatar(radius: 15, backgroundColor: Colors.black,)),
                            ),
                          ],),
                      )
                    ],
                  ),
                ),

                //all the submenus on the top of the screen
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: SubMenuList(),
                  ),
                ),

                const SizedBox(height: 10,),

                // Container(
                //   child: CustomScrollView(
                //     slivers: [
                //       ListView.builder(
                //         scrollDirection: Axis.vertical,
                //         itemCount: items.length,
                //         itemBuilder: (context, index) => VideoCard(items[index]),
                //       ),
                //     ],
                //   ),
                // ),

            VideoCard(items[0]),
            VideoCard(items[1]),
            VideoCard(items[2]),
            VideoCard(items[3]),
            VideoCard(items[4]),
            VideoCard(items[5]),
            VideoCard(items[6]),
            VideoCard(items[7]),
            VideoCard(items[8]),
            VideoCard(items[9]),
            VideoCard(items[10]),
            VideoCard(items[11]),
              ],
            ),
          ),
        ),
      ),

      // bottomNavigationBar: BottomNavigator(),
    );
  }
}
