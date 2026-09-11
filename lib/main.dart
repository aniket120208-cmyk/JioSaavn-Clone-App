import 'package:flutter/material.dart';
import 'package:jiosaavn_app/screens/home_screen.dart';
import 'package:jiosaavn_app/screens/search_screen.dart';

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

class MainScreen extends StatefulWidget{
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _pageIndex = 0;
  void active(int index){
    setState(() {
      _pageIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    void create(){
    showModalBottomSheet(
    context: context,
    builder: (context) {
    return SizedBox(
      height: 550,
      width: 600,
      child: 
      Padding(padding: EdgeInsetsGeometry.only(left: 10,top: 2),
      child: 
      Column(children: [
        SizedBox(height: 8,),
      Row(
        children: [
          Text('Create New Playlist',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          SizedBox(width: 125,),
          IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.close)),
        ],
      ),],),
      ),
    );
  },
);
    }
    Widget activeScreen;
    if(_pageIndex == 0){
        activeScreen = HomeScreen();
    }else if(_pageIndex == 1){
        activeScreen = SearchScreen();
    }
    else if(_pageIndex == 3){
      activeScreen = HomeScreen();
    }
    else if(_pageIndex == 4){
      activeScreen = HomeScreen();
    }else{
      activeScreen = HomeScreen();
    }
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
      body: activeScreen, 
      bottomNavigationBar: BottomNavigationBar(
        onTap: active,
        currentIndex: _pageIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        items:[BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.white,),label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.white,),label: 'Search'),
              BottomNavigationBarItem(icon: IconButton(onPressed: create, icon: Icon(Icons.add)),label: 'Create'),
              BottomNavigationBarItem(icon: Icon(Icons.book,color: Colors.white,),label: 'Library'),
              BottomNavigationBarItem(icon: Icon(Icons.circle,color: Colors.white,),label: 'Pro')] 
        ),
    );
  }
}