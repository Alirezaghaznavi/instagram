// ignore_for_file: constant_pattern_never_matches_value_type

import 'package:flutter/material.dart';
import 'package:instagram/model/enums/activity-type.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 68,
              color: Color(0xff1C1F2E),
              child: TabBar(
                controller: tabController,
                indicatorColor: Color(0xffF35383),
                indicatorPadding: EdgeInsets.symmetric(horizontal: 22),
                tabs: [
                  Tab(
                    child: Text(
                      'Following',
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'GB',
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'You',
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'GB',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  getBody(),
                  getTab2Count(ActivityStatus.follow),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  CustomScrollView getBody() {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 17, top: 20),
            child: Text(
              'New',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'GB',
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => getTab1Count(ActivityStatus.follow),
            childCount: 2,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 17, top: 20),
            child: Text(
              'Toady',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'GB',
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => getTab1Count(ActivityStatus.followback),
            childCount: 2,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 17, top: 20),
            child: Text(
              'This Week',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'GB',
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => getTab1Count(ActivityStatus.like),
            childCount: 2,
          ),
        ),
      ],
    );
  }

  Widget getTab1Count(status) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 17, vertical: 20),
      child: Row(
        children: [
          Container(
            width: 6,
            height: 6,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffF35383),
            ),
          ),
          SizedBox(width: 8),
          Container(
            width: 40,
            height: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(13),
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset('images/item2.png'),
              ),
            ),
          ),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Alireza',
                    style: TextStyle(
                      fontFamily: 'GB',
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Started Following',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xffC5C5C5),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'you',
                    style: TextStyle(
                      fontFamily: 'G',
                      fontSize: 13.5,
                      color: Color(0xffC5C5C5),
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    '3 min',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xffC5C5C5),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          activityActionTAbBarView(status),
        ],
      ),
    );
  }

  Widget getTab2Count(status) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 17, top: 20),
            child: Text(
              'New',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'GB',
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 17, vertical: 20),
                child: Row(
                  children: [
                    Container(
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffF35383),
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      width: 40,
                      height: 40,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(13),
                        child: FittedBox(
                          fit: BoxFit.cover,
                          child: Image.asset('images/item8.png'),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Alireza',
                              style: TextStyle(
                                fontFamily: 'GB',
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Liked',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xffC5C5C5),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'you',
                              style: TextStyle(
                                fontFamily: 'G',
                                fontSize: 13.5,
                                color: Color(0xffC5C5C5),
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              '3 min',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xffC5C5C5),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    activityActionTAbBarView(status),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget activityActionTAbBarView(status) {
    switch (status) {
      case ActivityStatus.follow:
        return Container(
          width: 40,
          height: 40,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset('images/profile.png'),
          ),
        );
      case ActivityStatus.followback:
        return ElevatedButton(
          onPressed: () {},
          child: Text(
            'Follow',
            style: TextStyle(
              fontSize: 12,
              fontFamily: 'GB',
              color: Colors.white,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xffF35383),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            minimumSize: Size(70, 36),
          ),
        );

      case ActivityStatus.like:
        return ElevatedButton(
          onPressed: () {},
          child: Text(
            'Message',
            style: TextStyle(
              fontSize: 12,
              fontFamily: 'GB',
              color: Color(0xffC5C5C5),
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xff1C1F2E),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            minimumSize: Size(70, 36),
            side: BorderSide(
              color: Color(0xffC5C5C5),
              width: 2.5,
            ),
          ),
        );
      default:
        return ElevatedButton(
          onPressed: () {},
          child: Text(
            'Follow',
            style: TextStyle(
              fontSize: 12,
              fontFamily: 'GB',
              color: Colors.white,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xffF35383),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            minimumSize: Size(70, 36),
          ),
        );
    }
  }
}
