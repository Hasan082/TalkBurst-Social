import 'package:flutter/material.dart';

import '../../widgets/search_box.dart';
class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchController=TextEditingController();

  List<String> images=[
    "https://source.unsplash.com/featured/?nature",
    "https://source.unsplash.com/featured/?landscape",
    "https://source.unsplash.com/featured/?mountains",
    "https://source.unsplash.com/featured/?ocean",
    "https://source.unsplash.com/featured/?sunset",
    "https://source.unsplash.com/featured/?forest",
    "https://source.unsplash.com/featured/?waterfall",
    "https://source.unsplash.com/featured/?travel",
    "https://source.unsplash.com/featured/?clouds",
    "https://source.unsplash.com/featured/?beach",
    "https://source.unsplash.com/featured/?sunrise",
    "https://source.unsplash.com/featured/?lake",
    "https://source.unsplash.com/featured/?countryside",
    "https://source.unsplash.com/featured/?island",
    "https://source.unsplash.com/featured/?winter",
    "https://source.unsplash.com/featured/?spring",
    "https://source.unsplash.com/featured/?desert",
    "https://source.unsplash.com/featured/?urban"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const SearchBox(hintText: "Search "),
              const SizedBox(height: 10,),
              Expanded(
                child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                    ),
                    itemCount: images.length,
                    itemBuilder: (context, index){
                      return ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(images[index],fit: BoxFit.fill,)
                      );
                    }
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}




