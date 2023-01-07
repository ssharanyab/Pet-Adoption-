import 'package:flutter/material.dart';

import '../../controller/controller.dart';

class HistoryCard extends StatelessWidget {
  const HistoryCard({
    Key? key,
    required Controller controller,
    required this.index,
  })  : _controller = controller,
        super(key: key);

  final Controller _controller;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          // color: Colors.grey,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.orange,
            width: 1,
          ),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Hero(
                tag: 'pet_image' + index.toString(),
                child: Image.network(
                  _controller.historyList[index].image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${_controller.historyList[index].name}',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Age: ${_controller.historyList[index].age.toString()} years old',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Price: \$ ${_controller.historyList[index].price.toString()} ',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
