import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/video_model/video_model.dart';

Widget VideoCard(VideoModel model){
  return InkWell(child: Container(
    margin: const EdgeInsets.only(bottom: 20.0),
    child: Column(
      children: [
        Stack(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                  image: NetworkImage(model.thumbnail!),
                  fit: BoxFit.fill,
                ),
              ),
            ),

            Positioned(
              right: 20.0,
              bottom: 10.0,
              child: Container(
              padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.black87,
              ),
              child: AutoSizeText(model.videoDuration!, style: const TextStyle(
                color: Colors.white,
              ),),
            ))
          ],
        ),

        const SizedBox(height: 15.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                  image: DecorationImage(
                    image: NetworkImage(model.avatar!),
                  ),
                ),
              ),
            ),

            const SizedBox(width: 12.0,),
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(model.videoTitle!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  maxFontSize: 18,
                  minFontSize: 16,
                  wrapWords: true,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: AutoSizeText("${model.channel}  -  ${model.views} . ${model.date}"),
                ),
                ],
              )
            ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert), splashRadius: 20,),
          ],
        )
      ],
    ),
  ),);
}