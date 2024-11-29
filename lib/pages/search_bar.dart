import 'package:flutter/material.dart';

class MySearchBar extends StatefulWidget {
  const MySearchBar({super.key});

  @override
  State<MySearchBar> createState() => _MySearchBarState();
}

class _MySearchBarState extends State<MySearchBar> {
  final TextEditingController _searchTextController = TextEditingController();

  bool isSearchClicked = false;

  String searchText = "";
  List<String> items = [
    "Item 1",
    "Ronaldo",
    "Messi",
    "Neymar",
    "Marselo",
    "Pep",
    "Mark",
    "Salmon"
  ];

  List<String> filteredItems = [];

  @override
  void initState() {
    super.initState();
    filteredItems = List.from(items);
  }

  void _onSearchChanged(String value) {
    setState(() {
      searchText = value;
      myFilterItems();
    });
  }

  void myFilterItems() {
    if (searchText.isEmpty) {
      filteredItems = List.from(items);
    } else {
      filteredItems = items
          .where(
              (item) => item.toLowerCase().contains(searchText.toLowerCase()))
          .toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[200],
        title: isSearchClicked
            ? Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  onChanged: _onSearchChanged,
                  controller: _searchTextController,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 16, 12),
                      hintText: "Search",
                      fillColor: Colors.grey[200],
                      hintStyle: TextStyle(color: Colors.grey[600]),
                      border: InputBorder.none),
                ),
              )
            : Text("SearchBar"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  isSearchClicked = !isSearchClicked;
                  if (!isSearchClicked) {
                    _searchTextController.clear();
                    myFilterItems();
                  }
                });
              },
              icon: Icon(
                isSearchClicked ? Icons.close : Icons.search,
                size: 25,
              ))
        ],
      ),
      body: ListView.builder(
        itemCount: filteredItems.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(filteredItems[index]),
            );
          }
      ),
    );
  }
}
