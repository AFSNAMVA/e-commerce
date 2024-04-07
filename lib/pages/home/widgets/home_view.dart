import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lafyuu_app/pages/home/widgets/gridview/my_grid_view.dart';
import 'package:lafyuu_app/pages/home/widgets/images/recommended_img.dart';
import 'package:lafyuu_app/pages/home/widgets/images/super_flash_sale_img.dart';
import 'package:lafyuu_app/pages/home/widgets/listviews/catagory_list.dart';
import 'package:lafyuu_app/pages/home/widgets/listviews/mega_sale_list.dart';
import 'package:lafyuu_app/pages/global_widgets/page_indicators.dart';
import 'listviews/flash_sale_list.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  final PageController homePageController = PageController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SuperFlashSaleImg(),
            8.verticalSpace,
            PageIndicators(
              controller: homePageController,
            ),
            8.verticalSpace,
            const CatagoryList(),
            8.verticalSpace,
            const FlashSaleList(),
            8.verticalSpace,
            const MegaSaleList(),
            const RecommendedImg(),
            const MyGridView(),
          ],
        ),
      ),
    );
  }
}
