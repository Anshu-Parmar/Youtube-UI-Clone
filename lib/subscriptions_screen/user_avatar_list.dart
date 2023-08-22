import 'package:flutter/material.dart';
import 'package:youtube_clone/video_model/video_list.dart';


import '../video_model/video_model.dart';

class UserAvatars extends StatelessWidget {
  const UserAvatars({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => buildCard(item: items[index]),
        separatorBuilder: (context, _) => const SizedBox(width: 5.0,),
        itemCount: items.length),
    );
  }

  Widget buildCard({required VideoModel item}) {
    return Container(
      width: 80,
      child: InkWell(
        onTap: () {},
        child: Column(
          children: [
            Expanded(
              child: Material(
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                      image: DecorationImage(
                        image: NetworkImage(item.avatar!),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Text(
              item.channel!,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
