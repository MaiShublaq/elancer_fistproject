import 'package:elancer_fistproject/data/dummy_data.dart';
import 'package:elancer_fistproject/get/search_get_controller.dart';
import 'package:elancer_fistproject/models/blogs.dart';
import 'package:elancer_fistproject/screens/tabs_screen/cosemetics_content.dart';
import 'package:elancer_fistproject/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CosmeticsScreen extends StatefulWidget {
  const CosmeticsScreen({Key? key}) : super(key: key);

  @override
  _CosmeticsScreenState createState() => _CosmeticsScreenState();
}

class _CosmeticsScreenState extends State<CosmeticsScreen>
    with SingleTickerProviderStateMixin {

  SearchGetxController _searchGetxController = Get.put(SearchGetxController());

  late TabController _tabController;
  late TextEditingController _searchtextController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _searchtextController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    _searchtextController.dispose;
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink.shade50,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              AppTextField(
                controller: _searchtextController,
                prefixIcon: Icons.search,
                hint: 'Search for products',
                color: Colors.pinkAccent,
                radius: 30,
                prefixColor: Colors.pink.shade100,
                onChange:(value) {
                  _searchGetxController.changeSearchText(value);
                },
              ),
              const SizedBox(
                height: 10,
              ),
              TabBar(
                  isScrollable: true,
                  labelColor: Colors.pinkAccent,
                  indicatorColor: Colors.pink.shade900,
                  indicator: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  controller: _tabController,
                  tabs: const [
                    Tab(text: 'Cleanser'),
                    Tab(text: 'Moisturizer'),
                    Tab(text: 'Eye Cream'),
                    Tab(text: 'Sunscreen'),
                  ]),
              Expanded(
                child: TabBarView(
                  children: [
                    CosmeticsContent(categoryId: 'cleanser'),
                    CosmeticsContent(categoryId: 'moisturizer'),
                    CosmeticsContent(categoryId: 'eyeCream'),
                    CosmeticsContent(categoryId: 'sunScreen'),
                  ],
                  controller: _tabController,
                ),
              )
            ],
          ),
        ));
  }
}
