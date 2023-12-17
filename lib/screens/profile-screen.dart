import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder: (context, isSellected) {
              return [
                SliverAppBar(
                  toolbarHeight: 80,
                  actions: [
                    Padding(
                      padding: EdgeInsets.only(right: 17, top: 17, bottom: 17),
                      child: Icon(Icons.menu),
                    ),
                  ],
                  backgroundColor: Color(0xff1C1F2E),
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(10),
                    child: Container(
                      height: 17,
                      decoration: BoxDecoration(
                        color: Color(0xff1C1F2E),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  expandedHeight: 180,
                  surfaceTintColor: Color(0xffF35383),
                  flexibleSpace: FlexibleSpaceBar(
                    stretchModes: [
                      StretchMode.blurBackground,
                      StretchMode.zoomBackground,
                    ],
                    background: ClipRRect(
                      child: Image.asset(
                        'images/item9.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: getheader(),
                ),
                SliverPersistentHeader(
                  pinned: true,
                  floating: true,
                  delegate: GetTabbarDelegate(
                    TabBar(
                      indicatorColor: Color(0xffF35383),
                      indicatorPadding: EdgeInsets.symmetric(horizontal: 30),
                      tabs: [
                        Tab(
                          child: Container(
                              width: 23,
                              height: 23,
                              child: Image.asset(
                                'images/icon_tab_posts.png',
                                fit: BoxFit.cover,
                              )),
                        ),
                        Tab(
                          child: Container(
                              width: 20,
                              height: 22,
                              child: Image.asset('images/icon_save.png')),
                        ),
                      ],
                    ),
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: CustomScrollView(
                    slivers: [
                      SliverGrid(
                        delegate: SliverChildBuilderDelegate((context, index) {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              'images/item$index.png',
                              fit: BoxFit.cover,
                            ),
                          );
                        }, childCount: 9),
                        gridDelegate: SliverQuiltedGridDelegate(
                          crossAxisCount: 3,
                          mainAxisSpacing: 5,
                          crossAxisSpacing: 5,
                          pattern: [
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(2, 2),
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(1, 1),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: CustomScrollView(
                    slivers: [
                      SliverGrid(
                        delegate: SliverChildBuilderDelegate((context, index) {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              'images/item$index.png',
                              fit: BoxFit.cover,
                            ),
                          );
                        }, childCount: 9),
                        gridDelegate: SliverQuiltedGridDelegate(
                          crossAxisCount: 3,
                          mainAxisSpacing: 5,
                          crossAxisSpacing: 5,
                          pattern: [
                            QuiltedGridTile(2, 2),
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(1, 1),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget getheader() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Color(0xffF35383),
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(2),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(13)),
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Image.asset('images/profile.png'),
                ),
              ),
            ),
          ),
          SizedBox(width: 15),
          Container(
            height: 70,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'علیرضا غزنوی',
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'SM', fontSize: 14),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Alirezaghaznavi',
                    style: TextStyle(
                        color: Color(0xffC5C5C5),
                        fontFamily: 'GB',
                        fontSize: 12),
                  )
                ],
              ),
            ),
          ),
          Spacer(),
          Image.asset('images/icon_profile_edit.png')
        ],
      ),
    );
  }
}

class GetTabbarDelegate extends SliverPersistentHeaderDelegate {
  GetTabbarDelegate(this.tabBar);

  TabBar tabBar;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(color: Color(0xff1C1F2E), child: tabBar);
  }

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
