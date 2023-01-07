import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../controller/controller.dart';
import '../../models/pet_model.dart';

class Details extends StatefulWidget {
  const Details({
    Key? key,
    required this.index,
    required this.petList,
    required this.pageName,
  }) : super(key: key);

  final int index;
  final List<PetModel> petList;
  final String pageName;

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool _isPressed = false;

  void myCallback() {
    setState(() {
      _isPressed = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _controller = Get.find<Controller>();
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                alignment: Alignment.topCenter,
                child: Hero(
                  tag: 'pet_image' + widget.index.toString(),
                  child: Image.network(
                    widget.petList[widget.index].image,
                  ),
                ),
              ),
              Positioned(
                child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.arrow_back_ios),
                ),
                top: 20,
                left: 10,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${widget.petList[widget.index].name}',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Chip(
              backgroundColor: Colors.orange[200],
              label: Text('Age: ${widget.petList[widget.index].age} years'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              widget.petList[widget.index].description,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              'Price: \$${widget.petList[widget.index].price}',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          if (_controller.historyList
              .contains(widget.petList[widget.index])) ...[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed: null,
                    child: Text('Already Adopted'),
                  ),
                ],
              ),
            ),
          ] else ...[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange[700],
                ),
                onPressed: () {
                  _controller.addToHistory(_controller.petList[widget.index]);
                  myCallback();
                  final snackBar = SnackBar(
                    duration: const Duration(seconds: 1),
                    content: Text(
                        'Yay! You just adopted ${widget.petList[widget.index].name}'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: const Text('Adopt Me'),
              ),
            ),
          ],
          // if (widget.pageName == 'Home') ...[
          //   Padding(
          //     padding: const EdgeInsets.all(30.0),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         ElevatedButton(
          //           onPressed: () {
          //             _controller
          //                 .addToHistory(_controller.petList[widget.index]);
          //             _myCallback();
          //           },
          //           child: Text('Adopt'),
          //         ),
          //         if (_isPressed) Text('Adopted'),
          //       ],
          //     ),
          //   )
          // ] else ...[
          //   Padding(
          //     padding: const EdgeInsets.all(30.0),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         ElevatedButton(
          //           onPressed: () {},
          //           child: Text('Already Adopted'),
          //         ),
          //         if (_isPressed) Text('Adopted'),
          //       ],
          //     ),
          //   ),
          // ],
          // Padding(
          //   padding: const EdgeInsets.all(30.0),
          //   child: ElevatedButton(
          //     style: ElevatedButton.styleFrom(
          //       primary: Colors.black,
          //       shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(20),
          //       ),
          //     ),
          //     onPressed: () {},
          //     // onPressed: _isPressed == false
          //     //     ? _myCallback
          //     //     : _controller.addToHistory(_controller.petList[widget.index]),
          //     child: Text(
          //       'Adopt Me',
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
