import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/features/category/ui/category_page.dart';
import 'package:news_app/features/common/palette/palette.dart';
import 'package:news_app/features/common/widgets/reusable_text.dart';

class CategoryTile extends StatelessWidget {
  final String name;
  final String picture;
  final String icon;
  const CategoryTile(
      {super.key,
      required this.name,
      required this.picture,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CategoryPage(name: name))
        );
      },
      child: Container(
        margin: EdgeInsets.only(right: 10.h),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.w),
              child: CachedNetworkImage(
                imageUrl: picture,
                height: 80,
                width: 140,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 80,
              width: 140,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.w),
                  color: Palette.blackText.withOpacity(0.8)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    icon,
                    width: 30.w,
                    height: 30.h,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  ReusableText(
                    text: name,
                    style: appStyle(14.sp, FontWeight.bold, Palette.whiteText),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
