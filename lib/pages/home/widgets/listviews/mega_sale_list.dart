import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu_app/cubits/home/product/product_cubit.dart';
import 'package:lafyuu_app/pages/home/widgets/product_box/product_box.dart';

class MegaSaleList extends StatelessWidget {
  const MegaSaleList({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ProductCubit>();
    return SizedBox(
      height: 336,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount: cubit.megaSale!.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            final product = cubit.megaSale![index];
            return ProductBox(
              product: product,
            );
          }),
    );
  }
}
