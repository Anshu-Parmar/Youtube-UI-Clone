import 'package:flutter/material.dart';
import 'package:youtube_clone/subscriptions_screen/all_subscriptions.dart';
import 'package:youtube_clone/subscriptions_screen/user_avatar_list.dart';
import 'package:youtube_clone/sub_menu.dart';
import 'package:youtube_clone/video_card.dart';
import 'package:youtube_clone/video_model/video_list.dart';
import 'package:auto_size_text/auto_size_text.dart';


class SubscriptionMain extends StatelessWidget {
  const SubscriptionMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/youtube_symbol.png',
                        height: 50,
                        width: 100,
                      ),

                      const SizedBox(width: 80,),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            IconButton(onPressed: null, icon: Icon(Icons.cast)),
                            IconButton(onPressed: null, icon: Icon(Icons.notifications)),
                            IconButton(onPressed: null, icon: Icon(Icons.search)),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: CircleAvatar(radius: 13, backgroundColor: Colors.black,),
                            ),
                          ],),
                      )
                    ],
                  ),
                ),

                Row(
                  children: [
                    Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width * 0.90,
                      child: UserAvatars(),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.10,
                      child: TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => AllSubscriptions(),));
                        },
                        // style: ButtonStyle(
                        //     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        //         RoundedRectangleBorder(
                        //           borderRadius: BorderRadius.circular(20),
                        //         )
                        //     )
                        // ),
                        child: const AutoSizeText('All'),
                      ),
                    )
                  ],
                ),

                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: SubMenuList(),
                  ),
                ),

                const SizedBox(height: 10,),

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
                VideoCard(items[0]),
                VideoCard(items[1]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
