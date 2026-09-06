import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsetsGeometry.only(left: 5),
        child:
       Row(
        children: [
          Padding(padding: EdgeInsetsGeometry.all(5),
          child:
          OutlinedButton(onPressed: (){},style: OutlinedButton.styleFrom(textStyle: TextStyle(color: Colors.white,fontSize: 15)) ,child: Text('Music'),),),
          Padding(padding: EdgeInsetsGeometry.all(5),
          child: 
          OutlinedButton(onPressed: (){},style: OutlinedButton.styleFrom(textStyle: TextStyle(color: Colors.white,fontSize: 15)) , child: Text('Podcasts')),),
          Padding(padding: EdgeInsetsGeometry.all(5),
          child: 
          OutlinedButton(onPressed: (){},style: OutlinedButton.styleFrom(textStyle: TextStyle(color: Colors.white,fontSize: 15)) , child: Text('JioTunes')))
        ],
      ),),
      Row(children: [
        SizedBox(width: 12,),
       Text('Your Usuals',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),]),
      ],
    );
  }
}