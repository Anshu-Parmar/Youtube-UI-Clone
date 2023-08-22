import 'package:auto_size_text/auto_size_text.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/screen_two_shorts/content_screen.dart';
import 'package:youtube_clone/screen_two_shorts/reels_list.dart';


class Shorts extends StatefulWidget {
  const Shorts({super.key});

  // const Shorts({Key? key}) : super(key: key);

  @override
  State<Shorts> createState() => _ShortsState();
}

class _ShortsState extends State<Shorts> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [

            Swiper(
              itemBuilder: (BuildContext context, int index){
                return ContentScreen(src: videos[index],);
              },
              itemCount: videos.length,
              scrollDirection: Axis.vertical,
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 8.0),
              child: Row(
                children: [
                  const AutoSizeText("Shorts", style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600, color: Colors.white),),
                  const SizedBox(width: 160,),
                  IconButton(
                    onPressed: (){},
                    icon: const Icon(Icons.search_outlined, color: Colors.white, size: 30,
                    ),
                    splashRadius: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: IconButton(
                      onPressed: (){},
                      icon: const Icon(Icons.camera_alt_outlined, color: Colors.white, size: 30,
                      ),
                      splashRadius: 10,
                    ),
                  ),
                  IconButton(
                    visualDensity: VisualDensity.comfortable,
                    onPressed: (){
                      showModalBottomSheet(
                        isDismissible: true,
                        isScrollControlled: true,
                        context: context,
                        builder: (context) => snackBarOptions(),
                      );
                      // ScaffoldMessenger.of(context).showSnackBar(
                      //   SnackBar(
                      //     content: snackBarOptions(),
                      //     behavior: SnackBarBehavior.fixed,
                      //     duration: const Duration(minutes: 2),
                      //     showCloseIcon: true,
                      //     backgroundColor: Colors.white,
                      //
                      //   ),
                      // );
                    },
                    icon: Icon(Icons.more_vert, color: Colors.white, size: 30,
                    ),
                    splashRadius: 10,
                    splashColor: Colors.white,
                  ),
              ],),
            )
          ],
        ),
      ),
    );
  }

  Widget snackBarOptions(){
    const double sizeOfIcon = 22.0;
    const double sizeOfText = 18.0;
    const Color iconColor = Colors.black;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: const [
        ListTile(
          dense: true,
          leading: Icon(Icons.short_text, size: sizeOfIcon, color: iconColor,),
          title: AutoSizeText('Description', style: TextStyle(fontSize: sizeOfText),),
        ),
        ListTile(
          dense: true,
          leading: Icon(Icons.library_add_check_outlined, size: sizeOfIcon,color: iconColor,),
          title: AutoSizeText('Save to playlist', style: TextStyle(fontSize: sizeOfText),),
        ),
        ListTile(
          dense: true,
          leading: Icon(Icons.closed_caption_outlined, size: sizeOfIcon,color: iconColor,),
          title: AutoSizeText('Captions', style: TextStyle(fontSize: sizeOfText),),
        ),
        ListTile(
          dense: true,
          leading: Icon(Icons.block, size: sizeOfIcon,color: iconColor,),
          title: AutoSizeText('Don\'t recommend this channel', style: TextStyle(fontSize: sizeOfText),),
        ),
        ListTile(
          dense: true,
          leading: Icon(Icons.flag_outlined, size: sizeOfIcon,color: iconColor,),
          title: AutoSizeText('Report', style: TextStyle(fontSize: sizeOfText),),
        ),
        ListTile(
          dense: true,
          leading: Icon(Icons.feedback_outlined, size: sizeOfIcon,color: iconColor,),
          title: AutoSizeText('Send feedback', style: TextStyle(fontSize: sizeOfText),),
        ),
      ],
    );
  }
}
