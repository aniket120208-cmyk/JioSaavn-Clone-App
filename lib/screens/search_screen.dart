import 'package:flutter/material.dart';
import 'package:jiosaavn_app/widgets/search_bar.dart';

class SearchScreen extends StatelessWidget{
  const SearchScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      actions: [Searchbar()],
    ),
    );
  }
}