import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class LibraryMain extends StatelessWidget {
  const LibraryMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                textDirection: TextDirection.rtl,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        IconButton(onPressed: null, icon: Icon(Icons.cast_outlined), color: Colors.black, iconSize: 25,),
                        IconButton(onPressed: null, icon: Icon(Icons.search_rounded), color: Colors.black, iconSize: 25,),
                        IconButton(onPressed: null, icon: Icon(Icons.more_vert), color: Colors.black, iconSize: 25,),
                      ],),
                  )
                ],
              ),

              ListTile(
                leading: Icon(Icons.settings_backup_restore_outlined, size: 35),
                title: AutoSizeText('History'),
                subtitle: AutoSizeText('This list has no videos.'),
                trailing: TextButton(
                  onPressed: (){},
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          )
                      )
                  ),
                  child: const AutoSizeText('View'),
                ),
              ),

              const Divider(color: Colors.black12, thickness: 2),

              ListTile(
                dense: true,
                leading: const Icon(Icons.playlist_play_sharp, size: 35,),
                title: const AutoSizeText('Playlists'),
                trailing: TextButton(
                  onPressed: (){},
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          )
                      )
                  ),
                  child: const AutoSizeText('View all'),
                ),
              ),

              const Divider(color: Colors.black12, thickness: 2),

              ListView(
                shrinkWrap: true,
                children: ListTile.divideTiles(
                    context: context,
                    tiles: const [
                      ListTile(
                        title: AutoSizeText('Your videos'),
                        leading: Icon(Icons.slow_motion_video_outlined),
                      ),
                      ListTile(
                        title: AutoSizeText('Downloads'),
                        subtitle: AutoSizeText('5 videos'),
                        leading: Icon(Icons.download),
                        trailing: Icon(Icons.verified),
                      ),
                      ListTile(
                        title: AutoSizeText('Your movies'),
                        leading: Icon(Icons.movie_sharp),
                      ),
                    ]).toList(),
              ),

              const Divider(color: Colors.black12, thickness: 2),

            ],
          ),
        ),
      ),
    );
  }
}
