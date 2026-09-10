import 'package:flutter/material.dart';

class MusicCard extends StatelessWidget{
  const MusicCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
    Card(
      child: 
      Stack(
        alignment: AlignmentGeometry.center,
        children: [
          Image.network('https://i.ebayimg.com/images/g/wI8AAeSwj19o7pK8/s-l1200.jpg' , height: 100, width: 100,),
          IconButton(onPressed: (){}, icon: Icon(Icons.play_arrow),iconSize: 35,),
        ],
      ),
    ),
    SizedBox(height: 2,),
    Text('Let It Happen',),
    ],
    );
  }
}