import 'package:cartify/screens/flter.dart';
import 'package:cartify/utils/theme/app_colors.dart';
import 'package:cartify/widget/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Appbar extends StatelessWidget {
  const Appbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var searchBarSize = MediaQuery.sizeOf(context).width;
    return Row(
      children: [
        Container(
            width: 290,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40))),
            // margin: const EdgeInsets.only(top: 10, left: 21),
            child: GestureDetector(
                onTap: () {
                  Get.to(const Search());
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.lightCardColor,
                  ),
                  height: MediaQuery.sizeOf(context).height / 17,
                  width: 200,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Icon(
                          Icons.search,
                          size: 25,
                          color: AppColors.blackColor,
                        ),
                        Text(
                          'search here',
                          style: TextStyle(
                            color: Colors.grey[600],
                          ),
                        ),
                        const Icon(
                          Icons.mic_outlined,
                          size: 25,
                          color: AppColors.blackColor,
                        )
                      ]),
                ))),
        GestureDetector(
          onTap: () {
            Get.to(const Filter());
          },
          child: Container(
              width: MediaQuery.sizeOf(context).width / 9,
              margin:
                  EdgeInsets.only(left: MediaQuery.sizeOf(context).width / 34),
              height: MediaQuery.sizeOf(context).height / 18,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: SvgPicture.asset(
                "assets/images/filter.svg",
                width: 15,
              )),
        )
      ],
    );
  }
}
