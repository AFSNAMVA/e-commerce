import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu_app/pages/home/widgets/home_view.dart';
import 'package:lafyuu_app/pages/global_widgets/navbar.dart';

import '../../cubits/home/product/product_cubit.dart';
import '../../utils/constants/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        toolbarHeight: 80,
        backgroundColor: AppColors.white,
        title: const TextField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.search_outlined),
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                color: AppColors.neutralDark,
                
              ))),
        ),
        actions: [
          IconButton(
              onPressed: () {
          
              },
              icon: const Icon(Icons.favorite_outline_rounded))
        ],
      ),
      body: BlocBuilder<ProductCubit, ProductState>(
        builder: (context, state) {
          if (state is ProductLoading || state is ProductInitial) {
            return const Center(child: CircularProgressIndicator.adaptive());
          } else if (state is ProductSuccess) {
            return HomeView();
          }
          return const Text("dc");
        },
      ),
      bottomNavigationBar: const Navbar(),
    );
  }
}
