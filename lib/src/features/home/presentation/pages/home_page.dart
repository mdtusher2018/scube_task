import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scube_task/src/shared/themes/colors.dart';
import 'package:scube_task/src/shared/widgets/common_text.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 12.h),
              const _SearchBar(),
              SizedBox(height: 20.h),
              const _CategorySection(),
              SizedBox(height: 20.h),
              const _NewArrivalHeader(),
              SizedBox(height: 12.h),
              _ProductGrid(),
            ],
          ),
        ),
      ),
    );
  }
}

class _SearchBar extends StatelessWidget {
  const _SearchBar();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      margin: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        children: [
          const Icon(Icons.search, color: Colors.grey),
          SizedBox(width: 8.w),
          const Expanded(
            child: CommonText("Search products", color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

class _CategorySection extends StatelessWidget {
  const _CategorySection();

  @override
  Widget build(BuildContext context) {
    final categories = [
      ("Mobile", Icons.phone_android),
      ("Gaming", Icons.sports_esports),
      ("Images", Icons.camera_alt),
      ("Vehicles", Icons.directions_car),
    ];

    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CommonText("Categories", size: 16, isBold: true),
              CommonText("See all", size: 16, color: Colors.grey),
            ],
          ),
          SizedBox(height: 12.h),
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return _CategoryItem(
                  title: categories[index].$1,
                  icon: categories[index].$2,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _CategoryItem extends StatelessWidget {
  final String title;
  final IconData icon;

  const _CategoryItem({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Column(
        children: [
          Container(
            height: 60.r,
            width: 60.r,
            decoration: BoxDecoration(
              color: const Color(0xffFFF4DC),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, size: 26.sp),
          ),
          SizedBox(height: 6.h),
          CommonText(title, size: 12, color: AppColors.gray),
        ],
      ),
    );
  }
}

class _NewArrivalHeader extends StatelessWidget {
  const _NewArrivalHeader();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          CommonText("New Arrivals", size: 16, isBold: true),
          Icon(Icons.tune),
        ],
      ),
    );
  }
}

class _ProductGrid extends StatelessWidget {
  const _ProductGrid();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.only(bottom: 10.h),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 12.h,
          crossAxisSpacing: 12.w,
          childAspectRatio: 0.65,
        ),
        itemCount: 6,
        itemBuilder: (_, index) => const _ProductCard(),
      ),
    );
  }
}

class _ProductCard extends StatelessWidget {
  const _ProductCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.r),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Center(child: Icon(Icons.headphones, size: 80.sp)),
              ),
              SizedBox(height: 6.h),

              RatingBarIndicator(
                rating: 3.5,
                itemBuilder: (context, index) =>
                    const Icon(Icons.star, color: Colors.orange),
                itemCount: 5,
                itemSize: 18.sp,
                direction: Axis.horizontal,
              ),

              SizedBox(height: 6.h),
              const CommonText(
                "Samsung Galaxy 3 in 512GB",
                size: 13,
                isBold: true,
                maxline: 2,
              ),
              SizedBox(height: 4.h),
              Row(
                children: [
                  const CommonText(
                    "\$69",
                    size: 16,
                    color: AppColors.red,
                    isBold: true,
                  ),
                  SizedBox(width: 6.w),
                  CommonText("\$87", color: Colors.grey, haveLineThrow: true),
                ],
              ),
            ],
          ),
          Align(
            alignment: Alignment.topRight,
            child: Icon(
              Icons.favorite,
              size: 18.sp,
              color: AppColors.gray.withOpacity(0.5),
            ),
          ),
        ],
      ),
    );
  }
}
