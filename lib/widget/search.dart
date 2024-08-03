import 'package:cartify/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final TextEditingController _search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.grey[100],
          title: Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: AppColors.blackColor,
                  )),
              Container(
                margin: const EdgeInsets.only(left: 110),
                child: const Text(
                  "Search",
                  style: TextStyle(color: AppColors.blackColor),
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                height: 100,
                width: 380,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  autocorrect: true,
                  controller: _search,
                  style: const TextStyle(
                    height: 1,
                    wordSpacing: 2,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search_outlined),
                    suffixIcon: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.mic_outlined)),
                    // contentPadding: const EdgeInsets.all(10),
                    hintText: 'search here',
                    filled: true,
                    fillColor: AppColors.lightCardColor,
                    hintStyle: TextStyle(color: Colors.grey[700], fontSize: 20),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
