import 'package:eshop_app/src/components/categoryComponent.dart';
import 'package:eshop_app/src/components/productComponent.dart';
import 'package:eshop_app/src/pages/productFavoritePage.dart';
import 'package:eshop_app/src/widgets/kText.dart';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              onTap: () {
                Get.to(ProductFavoritePage());
              },
              title: KText(
                text: 'Favorite Products',
                fontSize: 20,
              ),
              leading: Icon(
                EvaIcons.heart,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.format_align_center),
        ),
        title: Row(
          children: [
            SizedBox(
              width: 110,
            ),
            Text(
              'X',
              style: TextStyle(
                color: Colors.blue.shade900,
                fontFamily: 'Lato Regular',
                fontSize: 25,
              ),
            ),
            Text(
              'E',
              style: TextStyle(
                color: Colors.lightBlue,
                fontFamily: 'Lato Regular',
                fontSize: 25,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(ProductFavoritePage());
            },
            icon: Icon(
              EvaIcons.heart,
              color: Colors.red,
              size: 23,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              EvaIcons.searchOutline,
              size: 23,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CategoryComponent(),
            ProductComponent(),
          ],
        ),
      ),
    );
  }
}
