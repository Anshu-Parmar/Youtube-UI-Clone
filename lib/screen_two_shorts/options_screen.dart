import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/video_model/video_list.dart';
import 'package:youtube_clone/video_model/video_model.dart';

class OptionsScreen extends StatefulWidget {
  const OptionsScreen({Key? key}) : super(key: key);

  @override
  State<OptionsScreen> createState() => _OptionsScreenState();
}

class _OptionsScreenState extends State<OptionsScreen> {

  Color isSelected = Colors.red;
  String btnText = 'Subscribe';
  Color iconColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    VideoModel item = items[0];
    // Color _selectedIconColor = Colors.blue;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //this column contains dexscription on the screen
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 190,
                  ),

                  //Row that contains all the icon,avatar and subscribe button
                  Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey,
                          image: DecorationImage(
                            image: NetworkImage(item.avatar!),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: AutoSizeText(
                          '@${item.channel}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        height: 25,
                        child: OutlinedButton(
                          onPressed: () {
                            setState(() {
                              if (isSelected == Colors.red){
                                isSelected = Colors.grey.shade500;
                                btnText = 'Subscribed';
                              } else{
                                isSelected = Colors.red;
                                btnText = 'Subscribe';
                              }
                            });
                          },

                          style: OutlinedButton.styleFrom(
                            backgroundColor: isSelected,
                            foregroundColor: Colors.transparent,
                          ),
                          child: AutoSizeText(
                            btnText,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  //end of Row that contains all the icon,avatar and subscribe button

                  const Padding(
                    padding: EdgeInsets.only(left: 10,top: 10),
                    child: SizedBox(
                      width: 300,
                      child: AutoSizeText(
                        'fiahvchjbajnckjnajsbhnakjndbyusbckaiomiuibuekcmokniuxbcyuysdbkjkmsiojscuibusniomiueuuewbin',
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ), //end of this column contains dexscription on the screen

              Column(
                children: [
                  IconButton(
                    icon: Icon(
                        Icons.thumb_up_alt_rounded,
                        color: iconColor),
                    onPressed: () {
                      setState(() {
                        if(iconColor == Colors.white){
                          iconColor = Colors.blue;
                        }else{
                          iconColor = Colors.white;}
                      });
                    },
                  ),
                  const AutoSizeText(
                    '5.6 lakh',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Icon(
                    Icons.thumb_down_alt_rounded,
                    color: Colors.white,
                  ),
                  const AutoSizeText(
                    'Dislike',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Icon(
                    Icons.comment_rounded,
                    color: Colors.white,
                  ),
                  const AutoSizeText(
                    '14K',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Transform(
                      transform: Matrix4.rotationZ(5.8),
                      child: const Icon(
                        Icons.send,
                        color: Colors.white,
                      )),
                  const AutoSizeText(
                    'Share',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Icon(
                    Icons.wifi_protected_setup,
                    color: Colors.white,
                  ),
                  const AutoSizeText(
                    'Remix',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
