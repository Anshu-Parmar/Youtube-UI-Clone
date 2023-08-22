import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/video_model/video_list.dart';
import 'package:youtube_clone/video_model/video_model.dart';

class AllSubscriptions extends StatelessWidget {
  const AllSubscriptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.black, size: 30),
        title: const AutoSizeText('All Subscriptions', style: TextStyle(color: Colors.black),),
        actions: const [
          IconButton(onPressed: null, icon: Icon(Icons.cast_outlined), color: Colors.black, iconSize: 25,),
          IconButton(onPressed: null, icon: Icon(Icons.search_rounded), color: Colors.black, iconSize: 25,),
          IconButton(onPressed: null, icon: Icon(Icons.more_vert), color: Colors.black, iconSize: 25,),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextButton(
                onPressed: (){},
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      AutoSizeText('A-Z', style: TextStyle(color: Colors.black),),
                      Icon(Icons.arrow_drop_down, color: Colors.black,),
                    ],
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) => tileBuilder(item: items[index]),
                itemCount: items.length,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget tileBuilder({required VideoModel item}) {
    return ListTile(
      title: AutoSizeText(item.channel!),
      leading:  Container(
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
    );
  }
}
