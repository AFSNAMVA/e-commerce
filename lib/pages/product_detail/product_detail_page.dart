import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu_app/cubits/detail/detail/detail_cubit.dart';
import 'package:lafyuu_app/pages/product_detail/detail_view.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key, });
//final DetailResponse productDetail;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        actions: const [
          Icon(Icons.search_outlined),
          Icon(Icons.more_vert),
        ],
      ),
      body:  BlocBuilder<DetailCubit, DetailState>(
        builder: (context, state) {
         if (state is DetailLoading || state is DetailInitial) { 
            return const Center(child: CircularProgressIndicator.adaptive());
          } else if (state is DetailSuccess) {
            return  DetailView();
          }
          return const Text("dc");
        },
      ),
    );
  }
}
