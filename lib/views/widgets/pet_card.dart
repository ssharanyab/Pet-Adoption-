import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../controller/controller.dart';
import '../../models/pet_model.dart';
import '../screens/details.dart';

class PetCard extends StatefulWidget {
  PetCard({
    Key? key,
    required this.index,
    required this.petList,
    required this.context,
  }) : super(key: key);

  final List<PetModel> petList;
  final int index;
  final BuildContext context;
  List<int> _selected = [];

  @override
  State<PetCard> createState() => _PetCardState();
}

class _PetCardState extends State<PetCard> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 300)).then((value) => setState(() {
          widget._selected = [];
        }));
  }

  @override
  Widget build(BuildContext context) {
    final _controller = Get.find<Controller>();
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: Colors.transparent,
      child: InkWell(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Details(
                index: widget.index,
                petList: widget.petList,
                pageName: 'Home',
              ),
            )).then((_) => setState(() {})),
        child: Container(
          height: MediaQuery.of(widget.context).size.height * 0.4,
          width: MediaQuery.of(widget.context).size.width * 0.4,
          decoration: BoxDecoration(
            // color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.orange[700]!,
              width: 2,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (_controller.historyList
                  .contains(widget.petList[widget.index])) ...[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  child: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      Colors.grey,
                      BlendMode.saturation,
                    ),
                    child: Hero(
                      tag: 'pet_image_1' + widget.index.toString(),
                      child: Image.network(
                        widget.petList[widget.index].image,
                        // height: 140,
                      ),
                    ),
                  ),
                ),
              ] else ...[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  child: Hero(
                    tag: 'pet_image' + widget.index.toString(),
                    child: SizedBox(
                      //height: MediaQuery.of(widget.context).size.height * 0.19,
                      width: MediaQuery.of(widget.context).size.width,
                      child: Image.network(
                        widget.petList[widget.index].image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
              const SizedBox(
                height: 10,
              ),
              Text(
                '${widget.petList[widget.index].name}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  //color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
