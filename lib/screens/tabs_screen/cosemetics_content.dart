import 'package:elancer_fistproject/data/dummy_data.dart';
import 'package:elancer_fistproject/get/search_get_controller.dart';
import 'package:elancer_fistproject/widgets/cleanser_list.dart';
import 'package:elancer_fistproject/widgets/cosmetics_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CosmeticsContent extends StatefulWidget {

  final String categoryId;

  CosmeticsContent({required this.categoryId});

  @override
  _CosmeticsContentState createState() => _CosmeticsContentState();
}

class _CosmeticsContentState extends State<CosmeticsContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade50,
      body: GetX<SearchGetxController>(
        builder: (controller) {
          return ListView(
            padding: EdgeInsets.all(0),
            children: COSMETICS_DATA
                .where((element) => element.idCategory == widget.categoryId)
                .where((element) =>
                element.name.contains(controller.searchText))
                .map((cleanData) =>
                CosmeticsList(
                    id: cleanData.id,
                    name: cleanData.name,
                    brief: cleanData.brief,
                    info: cleanData.info,
                    mainImg: cleanData.mainImg,
                    idCategory: cleanData.idCategory,
                    img: cleanData.img))
                .toList(),
          );
        },
      ),
    );
  }
}
