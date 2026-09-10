import 'package:flutter/material.dart';
import 'package:jiosaavn_app/widgets/music_card.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return 
    SingleChildScrollView(child: 
    Column(
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
      SizedBox(height: 5,),
      Padding(padding: EdgeInsetsGeometry.only(left: 10),
      child:
      Row(
      children: [
      Text('Your Usuals',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),],),),
      SizedBox(height: 15,),
      Padding(padding: EdgeInsetsGeometry.only(left: 10,right: 10),
      child: 
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        MusicCard(),
        MusicCard(),
        MusicCard(),
      ],),),
      SizedBox(height: 15,),
      Padding(padding: EdgeInsetsGeometry.only(left: 10,right: 10),
      child: 
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        MusicCard(),
        MusicCard(),
        MusicCard(),
      ],),),
      SizedBox(height: 15,),
      Padding(padding: EdgeInsetsGeometry.only(left: 10,right: 10),
      child: 
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        MusicCard(),
        MusicCard(),
        MusicCard(),
      ],),),
      SizedBox(height: 20,),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: const Color.fromARGB(80, 0, 0, 0),
          child: 
          Padding(padding: EdgeInsetsGeometry.all(5),
          child: 
          Row(
            children: [
              Icon(Icons.music_note,color: Colors.white, size: 100,),
              SizedBox(width: 2,),
              Text('Unlimited JioTunes Available')
            ],
          ),
          ),
        ),
      ),
      SizedBox(height: 17,),
      Padding(padding: EdgeInsetsGeometry.only(left: 10),
      child:
      Row(
      children: [
      Text("It's Party Time!",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),],),),
      SizedBox(height: 5,),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MusicCard(),
              MusicCard(),
              MusicCard(),
              MusicCard(),
              MusicCard(),
            ],
          ),
        ),
      )
      ],
    ),
    );
  }
}