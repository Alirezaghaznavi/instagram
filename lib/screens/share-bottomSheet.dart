import 'dart:ui';

import 'package:flutter/material.dart';

class ShareBottomSheet extends StatelessWidget {
  ShareBottomSheet(this.inControler, {super.key});
  final ScrollController? inControler;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(36),
        topRight: Radius.circular(36),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
        child: Container(
          color: Color.fromRGBO(255, 255, 255, 0.3),
          padding: EdgeInsets.symmetric(horizontal: 34),
          height: 600,
          child: getCounts(),
        ),
      ),
    );
  }

  Widget getCounts() {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CustomScrollView(
          controller: inControler,
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    height: 5,
                    width: 67,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100)),
                    margin: EdgeInsets.only(bottom: 22, top: 8),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Share',
                        style: TextStyle(
                          fontFamily: 'GB',
                          fontSize: 24,
                        ),
                      ),
                      Image.asset(
                        'images/icon_share_bottomsheet.png',
                        width: 20,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 0.4),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    height: 46,
                    width: 340,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          Image.asset('images/icon_search.png'),
                          SizedBox(
                            width: 15,
                          ),
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
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                ],
              ),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                childCount: 40,
                (context, index) {
                  return getShareList();
                },
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 20,
                mainAxisSpacing: 10,
                mainAxisExtent: 108,
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.only(top: 50),
            ),
          ],
        ),
        Positioned(
          bottom: 20,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(13),
            child: Container(
              width: 129,
              height: 46,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Send',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget getShareList() {
    return Column(
      children: [
        Container(
          height: 65,
          width: 65,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset('images/profile.png'),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Alireza',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}
