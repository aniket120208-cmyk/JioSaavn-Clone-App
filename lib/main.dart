import 'package:flutter/material.dart';
import 'package:jiosaavn_app/screens/home_screen.dart';

final theme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: const Color(0xFF0D0D0D),
  colorScheme: const ColorScheme.dark(
    primary: Color.fromARGB(255, 250, 245, 246),
    secondary: Color.fromARGB(255, 237, 235, 235),
    surface: Color(0xFF151515),
    background: Color(0xFF0D0D0D),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF0D0D0D),
    foregroundColor: Colors.white,
    elevation: 0,
  ),
  cardTheme: const CardThemeData(
    color: Color(0xFF181818),
  ),
);

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
      theme: theme,
  )
 );
}

class MainScreen extends StatelessWidget{
  const MainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
      AppBar(
        title: Row(
          children: [
            Icon(Icons.circle,color: Colors.lightGreen,),
            Text('JioSaavn',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            Text('PRO',style: TextStyle(color: const Color.fromARGB(255, 21, 198, 21),fontWeight: FontWeight.bold),),
            const SizedBox(width: 100,),
            Icon(Icons.settings),
            const SizedBox(width: 15,),
            InkWell(child: Icon(Icons.circle,color: Colors.orange,),)
          ],
        ),
      ),
      body: HomeScreen(),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.home,color: Colors.white,size: 30,),),
          SizedBox(width: 10,),
          IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.white,size: 30,)),
          SizedBox(width: 10,),
          IconButton(onPressed: (){}, icon: Icon(Icons.add,color: Colors.white,size: 30,)),
          SizedBox(width: 10,),
          IconButton(onPressed: (){}, icon: Icon(Icons.book,color: Colors.white,size: 30,)),
          SizedBox(width: 10,),
          IconButton(onPressed: (){}, icon: Icon(Icons.circle,color: Colors.white,size: 30,))
        ],
      ),
    );
  }
}