import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu_app/cubits/home/product/product_cubit.dart';
import 'package:lafyuu_app/pages/home/widgets/product_box/product_box.dart';

class MyGridView extends StatelessWidget {
  const MyGridView({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductCubit cubit = context.read<ProductCubit>();
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: cubit.recommendedSale!.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisExtent: 336,
          mainAxisSpacing: 10,
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index) {
          final product = cubit.recommendedSale![index];
          return ProductBox(
            product: product,
          );
        });
  }
}
