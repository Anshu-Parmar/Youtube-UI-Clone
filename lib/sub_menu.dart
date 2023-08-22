import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class SubMenuList extends StatefulWidget {
  const SubMenuList({Key? key}) : super(key: key);

  @override
  State<SubMenuList> createState() => _SubMenuListState();
}

class _SubMenuListState extends State<SubMenuList> {
  List<String> items = const ['All', 'Gaming', 'Comedy', 'Music', 'Mixes', 'Trailer',
    'Live', 'Gadgets', "Characters", 'Animated films', 'Lessons'];

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: SizedBox(
          height: 250,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (context, index) => buildExploreList(item: items[index]),
            separatorBuilder: (context, _) => const SizedBox(width: 10,),
          ),
        ),
      );
    //);
  }

  Widget buildExploreList({required String item}) => OutlinedButton(
    onPressed: (){},
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) return Colors.black26;
        if (states.contains(MaterialState.pressed)) return Colors.grey.shade600;
        return Colors.grey.shade200;
      }),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        )
      )

    ),

    child: AutoSizeText(item, style: TextStyle(color: Colors.grey.shade800),),
  );
}

