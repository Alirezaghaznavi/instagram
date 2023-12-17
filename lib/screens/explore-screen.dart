// ignore_for_file: unused_import
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram/screens/add-post-screen.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(28, 31, 46, 1),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: getSearchBox(),
            ),
            SliverToBoxAdapter(
              child: getFilterList(),
            ),
            getBody(),
          ],
        ),
      ),
    );
  }

  SliverPadding getBody() {
    return SliverPadding(
      padding: EdgeInsets.only(left: 17, right: 17, bottom: 17),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate((context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: FittedBox(
              fit: BoxFit.cover,
              child: Image.asset(
                'images/item$index.png',
              ),
            ),
          );
        }, childCount: 10),
        gridDelegate: SliverQuiltedGridDelegate(
          crossAxisCount: 3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          repeatPattern: QuiltedGridRepeatPattern.inverted,
          pattern: [
            QuiltedGridTile(2, 1),
            QuiltedGridTile(2, 2),
            QuiltedGridTile(1, 1),
            QuiltedGridTile(1, 1),
            QuiltedGridTile(1, 1),
          ],
        ),
      ),
    );
  }

  Widget getSearchBox() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(39, 43, 64, 1),
          borderRadius: BorderRadius.circular(13),
        ),
        height: 46,
        width: 394,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              Image.asset('images/icon_search.png'),
              SizedBox(width: 15),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    hintStyle: TextStyle(
                      fontSize: 16,
                      fontFamily: 'GB',
                      color: Colors.white,
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(width: 15),
              Image.asset('images/icon_scan.png'),
            ],
          ),
        ),
      ),
    );
  }

  Widget getFilterList() {
    return Container(
      height: 28,
      margin: EdgeInsets.only(left: 15, top: 18, bottom: 18),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 12,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 8, right: 8),
                width: 60,
                height: 23,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromRGBO(39, 43, 64, 1),
                ),
                child: Center(
                  child: Text(
                    'Filter $index',
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
