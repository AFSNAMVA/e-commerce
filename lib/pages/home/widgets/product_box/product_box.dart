import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lafyuu_app/cubits/detail/detail/detail_cubit.dart';
import 'package:lafyuu_app/pages/home/widgets/product_box/product_discount.dart';
import 'package:lafyuu_app/pages/home/widgets/product_box/product_images.dart';
import 'package:lafyuu_app/pages/global_widgets/product_name.dart';
import 'package:lafyuu_app/pages/global_widgets/product_price.dart';
import 'package:lafyuu_app/pages/global_widgets/product_rating_bar.dart';
import 'package:lafyuu_app/pages/product_detail/product_detail_page.dart';
import 'package:lafyuu_app/utils/constants/app_colors.dart';
import 'package:lafyuu_app/utils/helpers/navigate.dart';

import '../../../../data/models/products_response.dart';

class ProductBox extends StatelessWidget {
  const ProductBox({
    super.key,
    required this.product,
  });
 
   final ProductsResponse product;
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigate.to(
              context,
               BlocProvider(
                create: (context) => DetailCubit()..getDetail(product.id),
                child:const ProductDetailPage(),
              ));
        },
        child: Container(
          width: 180,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.neutralLight),
            borderRadius: BorderRadius.circular(5),
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductImages(img: product.image),
              8.verticalSpace,
              ProductName(name: product.name),
              8.verticalSpace,
             ProductRatingBar(rating: product.rating!),
              8.verticalSpace,
              ProductPrice(
                price: product.price,
              ),
              8.verticalSpace,
              ProductDiscount(
                disCount: product.discount,
                disCountPrice: product.discountedPrice,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
