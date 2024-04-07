import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lafyuu_app/cubits/comments/comments_cubit.dart';
import 'package:lafyuu_app/cubits/detail/detail/detail_cubit.dart';
import 'package:lafyuu_app/pages/comments/comments_page.dart';
import 'package:lafyuu_app/pages/product_detail/widgets/detail_color_box.dart';
import 'package:lafyuu_app/pages/product_detail/widgets/detail_img_box.dart';
import 'package:lafyuu_app/pages/product_detail/widgets/detail_size_box.dart';
import 'package:lafyuu_app/pages/product_detail/widgets/detail_specification_box.dart';
import 'package:lafyuu_app/pages/global_widgets/page_indicators.dart';
import 'package:lafyuu_app/pages/global_widgets/product_name.dart';
import 'package:lafyuu_app/pages/global_widgets/product_price.dart';
import 'package:lafyuu_app/pages/global_widgets/product_rating_bar.dart';
import 'package:lafyuu_app/pages/global_widgets/global_button.dart';
import 'package:lafyuu_app/pages/global_widgets/title_text.dart';
import 'package:lafyuu_app/utils/constants/app_colors.dart';
import 'package:lafyuu_app/utils/constants/app_texts.dart';
import 'package:lafyuu_app/utils/helpers/navigate.dart';

class DetailView extends StatelessWidget {
  DetailView({
    super.key,
  });
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<DetailCubit>();
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DetailImgBox(
            controller: pageController,
          ),
          16.verticalSpace,
          PageIndicators(
            controller: pageController,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 300,
                      child: ProductName(
                        name: cubit.details!.name,
                      ),
                    ),
                    const Icon(Icons.favorite_outline)
                  ],
                ),
                16.verticalSpace,
                ProductRatingBar(
                  rating: cubit.details!.rating!,
                ),
                16.verticalSpace,
                ProductPrice(
                  price: cubit.details!.price,
                ),
                16.verticalSpace,
                const DetailSizeBox(),
                16.verticalSpace,
                const DetailColorBox(),
                8.verticalSpace,
                const DetailSpecificationBox(),
                8.verticalSpace,
                ProductRatingBar(
                  rating: cubit.details!.rating!,
                ),
                84.verticalSpace,
                TitleText(
                  text: AppTexts.youMayAlsoLike,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: AppColors.neutralDark,
                ),
                84.verticalSpace,
                GlobalButton(
                  onTap: () {
                    Navigate.to(
                        context,
                        BlocProvider(
                          create: (context) => CommentsCubit()..getCommets(cubit.details!.id),
                          child: const CommentsPage(),
                        ));
                  },
                  text: 'Add To Cart',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
