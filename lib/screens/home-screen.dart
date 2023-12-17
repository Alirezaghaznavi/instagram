import 'dart:ui';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:instagram/screens/share-bottomSheet.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      backgroundColor: Color.fromRGBO(28, 31, 46, 1),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              height: 100,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: 8,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return index == 0
                      ? getAddStory(context)
                      : Column(
                          children: [
                            getStoryBox(context),
                            Text(
                              'Alireza',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        );
                },
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 12,
              (context, index) {
                return Column(
                  children: [
                    getBody(),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget getBody() {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 12,
      itemBuilder: (context, index) {
        return Column(
          children: [
            SizedBox(
              height: 15,
            ),
            getHeaderPost(context),
            SizedBox(
              height: 16,
            ),
            getPost(),
          ],
        );
      },
    );
  }

  Widget getPost() {
    return Container(
      height: 430,
      width: 394,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            top: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'images/post_cover.png',
              ),
            ),
          ),
          Positioned(
            top: 15,
            right: 15,
            child: Image.asset(
              'images/icon_video.png',
            ),
          ),
          Positioned(
            bottom: 0,
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 20,
                  sigmaY: 20,
                ),
                child: Container(
                  height: 46,
                  width: 340,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color.fromRGBO(255, 255, 255, 0.5),
                        Color.fromRGBO(255, 255, 255, 0.2),
                      ],
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset('images/icon_hart.png'),
                            SizedBox(width: 5),
                            Text(
                              '2.6k',
                              style: TextStyle(
                                fontFamily: 'SM',
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset('images/icon_comments.png'),
                            SizedBox(width: 5),
                            Text(
                              '2.6k',
                              style: TextStyle(
                                fontFamily: 'SM',
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset('images/icon_share.png'),
                            SizedBox(width: 5),
                            Text(
                              '2.6k',
                              style: TextStyle(
                                fontFamily: 'SM',
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset('images/icon_save.png'),
                            SizedBox(width: 5),
                            Text(
                              '2.6k',
                              style: TextStyle(
                                fontFamily: 'SM',
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getHeaderPost(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 13,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border:
                  Border.all(color: Color.fromRGBO(243, 83, 131, 1), width: 3),
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset('images/profile.png'),
              ),
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Alirezaghaznavi',
                style: TextStyle(
                  fontFamily: 'SM',
                  fontSize: 13.5,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'برنامه نویس موبایل',
                style: TextStyle(
                  fontFamily: 'SM',
                  fontSize: 13.5,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Spacer(),
          Image.asset('images/icon_menu.png'),
          SizedBox(
            width: 6,
          ),
        ],
      ),
    );
  }

  Widget getStoryBox(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: DottedBorder(
            borderType: BorderType.RRect,
            radius: Radius.circular(17),
            padding: EdgeInsets.all(3),
            strokeWidth: 3,
            color: Color.fromRGBO(243, 83, 131, 1),
            dashPattern: [36, 16],
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                width: 55,
                height: 55,
                child: Image.asset('images/profile.png'),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget getAddStory(context) {
    return Padding(
      padding: const EdgeInsets.only(left: 9),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            height: 64,
            width: 64,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(3),
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(28, 31, 46, 1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset('images/icon_plus.png'),
              ),
            ),
          ),
          Text(
            'Your Story',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }

  AppBar appBar(context) {
    return AppBar(
      centerTitle: false,
      backgroundColor: Color.fromRGBO(28, 31, 46, 1),
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
          width: 126,
          height: 20,
          child: Image.asset('images/moodinger_logo.png'),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16, top: 10),
          child: Container(
            width: 50,
            height: 50,
            child: GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  barrierColor: Colors.transparent,
                  backgroundColor: Colors.transparent,
                  context: context,
                  isScrollControlled: true,
                  builder: (BuildContext context) {
                    return Padding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: DraggableScrollableSheet(
                        initialChildSize: 0.4,
                        maxChildSize: 0.7,
                        minChildSize: 0.2,
                        builder: (context, scrollController) {
                          return ShareBottomSheet(scrollController);
                        },
                      ),
                    );
                  },
                );
              },
              child: Image.asset(
                'images/icon_direct.png',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
