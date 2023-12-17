// ignore_for_file: unused_import
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class AddPost extends StatelessWidget {
  const AddPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(28, 31, 46, 1),
      body: SafeArea(
        child: Stack(
          children: [
            getBody(),
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: getHeader(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: 428,
        height: 70,
        decoration: BoxDecoration(
          color: Color(0xff272B40),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Daraft',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: 'GB',
                ),
              ),
              Text(
                'Gallery',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: 'GB',
                ),
              ),
              Text(
                'Take',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xffF35383),
                  fontFamily: 'GB',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getBody() {
    return Padding(
      padding: EdgeInsets.only(top: 58),
      child: Container(
        height: 8000,
        width: 600,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: getSelectedPic(),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(
                horizontal: 17,
                vertical: 5,
              ),
              sliver: SliverGrid.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  crossAxisCount: 3,
                ),
                itemCount: 9,
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Image.asset(
                        'images/item$index.png',
                      ),
                    ),
                  );
                },
              ),
            ),
            SliverPadding(
              padding: EdgeInsetsDirectional.only(bottom: 20),
            ),
          ],
        ),
      ),
    );
  }

  Widget getHeader() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 17,
        right: 17,
        top: 24,
      ),
      child: Row(
        children: [
          Text(
            'Post',
            style: TextStyle(
              fontSize: 17.5,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(width: 9),
          Image.asset(
            'images/icon_arrow_down.png',
            height: 8,
            width: 19,
          ),
          Spacer(),
          Text(
            'Next',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(width: 15),
          Image.asset(
            'images/icon_next.png',
            height: 26,
            width: 26,
          ),
        ],
      ),
    );
  }

  Widget getSelectedPic() {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 17,
      ),
      child: Container(
        height: 428,
        width: double.infinity,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: FittedBox(
            fit: BoxFit.cover,
            child: Image.asset('images/item4.png'),
          ),
        ),
      ),
    );
  }
}
