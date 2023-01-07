import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../controller/controller.dart';
import '../../models/pet_model.dart';
import '../widgets/category_list.dart';
import '../widgets/pet_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = Get.find<Controller>();

  List<PetModel> _allPets = [];
  @override
  void initState() {
    // at the beginning, all users are shown
    super.initState();
    _controller.petList = _controller.dogList +
        _controller.catList +
        _controller.fishList +
        _controller.rabbitList;
    _allPets = _controller.petList;
  }

  void _runFilter(String enteredKeyword) {
    List<PetModel> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _controller.petList;
    } else {
      results = _controller.petList
              .where((pet) => pet.breed.toLowerCase().contains(enteredKeyword))
              .toList() +
          _controller.petList
              .where((pet) => pet.name.toLowerCase().contains(enteredKeyword))
              .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _allPets = results;
    });
  }

  void refresh() {
    setState(() {
      _allPets = _controller.petList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // title: const Text(
        //   'Pet Adoption',
        // ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.dark_mode,
              color: Colors.orange[200],
              //  color: Colors.black,
              //color: Colors.white,
            ),
            onPressed: () {
              Get.isDarkMode
                  ? Get.changeTheme(
                      ThemeData(
                        iconTheme: IconThemeData(color: Colors.black),
                      ),
                    )
                  : Get.changeTheme(ThemeData.dark());
            },
          )
        ],
      ),
      // backgroundColor: Colors.grey[400],
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 15.0,
        ),
        child: Column(
          children: [
            Expanded(
              flex: 7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Find Your New Pet',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    onChanged: (value) => _runFilter(value),
                    decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.orange[700],
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.orange[700]!,
                          //width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.orange[700]!,
                          //width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.orange[700]!,
                          // width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      //fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Catergories',
                    style: TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CategoryList(
                    index: 0,
                    categoryList: _controller.categoryList,
                    notifyParent: refresh,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // Make a grid view that scrolls
                  Expanded(
                    child: _allPets.isNotEmpty
                        ? GridView.builder(
                            itemCount: _allPets.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                            ),
                            itemBuilder: (context, index) {
                              return PetCard(
                                context: context,
                                index: index,
                                petList: _allPets,
                              );
                            },
                          )
                        : Center(
                            child: Text(
                              'No pets found',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
