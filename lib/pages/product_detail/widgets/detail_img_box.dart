import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lafyuu_app/cubits/detail/detail/detail_cubit.dart';

class DetailImgBox extends StatelessWidget {
   const DetailImgBox({super.key, required this.controller});
  final PageController controller ;
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<DetailCubit>();
     
    return SizedBox(
      height: 300.h,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
        controller: controller,
        physics: const BouncingScrollPhysics(),
           // shrinkWrap: true,
            itemCount: cubit.details!.images.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Image.network(
                cubit.details!.images[index].image,
                fit: BoxFit.fill,
              );
            }
            
            ),
      ),
    );
  }
}
