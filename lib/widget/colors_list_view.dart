import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
final bool isActive;
final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive? CircleAvatar(
      radius: 39,
      backgroundColor: Colors.white,
       child: CircleAvatar
    (
      radius: 32,
      backgroundColor: color,
    ) 
    )
    :  CircleAvatar
    (
      radius: 38,
      backgroundColor: color,
    );
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView ({super.key, });

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex=0;
  List<Color>colors=const [
    Color(0xffD30C7B),
    Color(0xffFFE3DC),
    Color(0xffDBB4AD),
    Color(0xffA2AD91),
    Color(0xff3A2D32),
    
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38*2,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder:((context, index) {
          return  Padding(
            padding: const  EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: ()
              {
                currentIndex=index;
                setState(() {});
              },
              child: ColorItem(
                color: colors[index],
                isActive: currentIndex==index,
              ),
            ),
          );
        })
        ),
    );
  }
}
