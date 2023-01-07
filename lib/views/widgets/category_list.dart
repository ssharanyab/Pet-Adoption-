import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pet_adoption/models/category_model.dart';

import '../../controller/controller.dart';
import '../../models/pet_model.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({
    Key? key,
    required this.categoryList,
    required this.index,
    required this.notifyParent,
  }) : super(key: key);

  final List<CategoryModel> categoryList;
  final int index;
  final Function() notifyParent;

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  final _controller = Get.find<Controller>();
  Map<String, List<PetModel>> categoryPets = {};

  @override
  void initState() {
    super.initState();
    categoryPets = {
      'All': _controller.dogList +
          _controller.catList +
          _controller.fishList +
          _controller.rabbitList,
      'Dogs': _controller.dogList,
      'Cats': _controller.catList,
      'Fish': _controller.fishList,
      'Rabbit': _controller.rabbitList,
    };
  }

  @override
  Widget build(BuildContext context) {
    final _controller = Get.find<Controller>();
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.categoryList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: GestureDetector(
              onTap: () {
                print("Category: ${widget.categoryList[index].name}");
                setState(() {
                  String category = widget.categoryList[index].name;
                  _controller.petList = categoryPets[category]!;
                  widget.notifyParent();
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.orange[700],
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    // color: _controller.categoryList == index
                    //     ? Colors.orange[700]!
                    //     : Colors.white,
                    color: Colors.orange[700]!,
                    //: Colors.white,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.network(
                          widget.categoryList[index].image,
                          height: 24,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          widget.categoryList[index].name,
                          style: TextStyle(
                            fontSize: 16,
                            //fontWeight: FontWeight.bold,
                            // color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
