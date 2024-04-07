import 'package:flutter/material.dart';
import 'package:lafyuu_app/utils/constants/app_colors.dart';
import 'package:lafyuu_app/utils/constants/app_sized_box.dart';


class Search extends StatelessWidget implements PreferredSizeWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
   // final HiveResponse response = HiveController.localHiveResponse!;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: preferredSize,
        child: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                 // HiveController.clearHiveResponse();
                 // Navigate.removeAll(
                      // context,
                      // BlocProvider(
                      //   create: (context) => LoginCubit(),
                      //   child: const LoginPage(),
                      // ));
                },
                icon: const Icon(Icons.favorite_outline_rounded))
          ],
          backgroundColor: Colors.white,
          leading: null,
          centerTitle: true,
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(1.0), // Çizginin yüksekliği
            child: Divider(
              color: AppColors.neutralLight, // Çizgi rengi
              height: 1.0, // Çizgi kalınlığı
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 8),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: AppColors.white,
                    // width: MediaQuery.of(context).size.width ,
                    child: const TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: AppColors.neutralGrey,
                        ),
                        hintText:"ede",
                        fillColor: AppColors.neutralGrey,
                        // border: InputBorder.none,
                        contentPadding: EdgeInsets.zero,
                        //enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.primeryRed))
                      ),
                    ),
                  ),
                ),
                AppSizedBox.w16,
                Container(
                  color: AppColors.white,
                  child: GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        Icons.notifications_outlined,
                        color: AppColors.neutralGrey,
                      )),
                ),
                AppSizedBox.w16,
                Container(
                  color: AppColors.white,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_outline,
                      color: AppColors.neutralGrey,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      // body: Container(),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
