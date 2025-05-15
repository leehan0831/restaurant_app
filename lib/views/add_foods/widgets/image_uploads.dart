import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import '../../../common/app_style.dart';

import '../../../common/custom_button.dart';
import '../../../common/reusable_text.dart';
import '../../../constants/constants.dart';
import '../../../controllers/uploader_controller.dart';

class ImageUploads extends StatelessWidget {
  const ImageUploads({super.key, required this.back, required this.next});
  final Function back;
  final Function next;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UploaderController());
    return SizedBox(
      height: height,
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16.w, top: 12.h, bottom: 12.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ReusableText(
                  text: "Upload Images",
                  style: appStyle(10, kGray, FontWeight.w600),
                ),

                ReusableText(
                  text:
                      "You are required to upload at least 2 images to proceed",
                  style: appStyle(11, kGray, FontWeight.normal),
                ),
              ],
            ), // Column
          ),
          SizedBox(
            height: height * 0.8,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //image one
                      GestureDetector(
                        onTap: () {
                          controller.pickImage("one");
                        },
                        child: Obx(
                          () => Container(
                            height: 120.h,
                            width: width / 2.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(color: kGrayLight),
                            ), // BoxDecoration
                            child:
                                controller.imageOneUrl == ''
                                    ? Center(
                                      child: ReusableText(
                                        text: 'Upload Image',
                                        style: appStyle(
                                          16,
                                          kDark,
                                          FontWeight.w600,
                                        ),
                                      ),
                                    ) // Center
                                    : ClipRRect(
                                      borderRadius: BorderRadius.circular(10.r),
                                      child: Image.network(
                                        controller.imageOneUrl,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                          ),
                        ),
                      ),

                      //image two
                      GestureDetector(
                        onTap: () {
                          controller.pickImage("two");
                        },
                        child: Obx(
                          () => Container(
                            height: 120.h,
                            width: width / 2.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(color: kGrayLight),
                            ), // BoxDecoration
                            child:
                                controller.imageTwoUrl == ''
                                    ? Center(
                                      child: ReusableText(
                                        text: 'Upload Image',
                                        style: appStyle(
                                          16,
                                          kDark,
                                          FontWeight.w600,
                                        ),
                                      ),
                                    )
                                    : ClipRRect(
                                      borderRadius: BorderRadius.circular(10.r),
                                      child: Image.network(
                                        controller.imageTwoUrl,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          controller.pickImage("three");
                        },
                        child: Obx(
                          () => Container(
                            height: 120.h,
                            width: width / 2.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(color: kGrayLight),
                            ),
                            child:
                                controller.imageThreeUrl == ''
                                    ? Center(
                                      child: ReusableText(
                                        text: 'Upload Image',
                                        style: appStyle(
                                          16,
                                          kDark,
                                          FontWeight.w600,
                                        ),
                                      ),
                                    )
                                    : ClipRRect(
                                      borderRadius: BorderRadius.circular(10.r),
                                      child: Image.network(
                                        controller.imageThreeUrl,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                          ),
                        ),
                      ),

                      GestureDetector(
                        onTap: () {
                          controller.pickImage("four");
                        },
                        child: Obx(
                          () => Container(
                            height: 120.h,
                            width: width / 2.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(color: kGrayLight),
                            ),
                            child:
                                controller.imageFourUrl == ''
                                    ? Center(
                                      child: ReusableText(
                                        text: 'Upload Image',
                                        style: appStyle(
                                          16,
                                          kDark,
                                          FontWeight.w600,
                                        ),
                                      ),
                                    )
                                    : ClipRRect(
                                      borderRadius: BorderRadius.circular(10.r),
                                      child: Image.network(
                                        controller.imageFourUrl,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 25.h),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomButton(
                          text: "Back",
                          btnWidth: width / 2.3,
                          btnRadius: 9,
                          onTap: () {
                            back();
                          },
                        ),
                        CustomButton(
                          text: "Next",
                          btnWidth: width / 2.3,
                          btnRadius: 9,
                          onTap: () {
                            // if (controller.images.length > 1) {
                            next();
                            // } else {
                            // Get.snackbar(
                            //   colorText: kLightWhite,
                            //   backgroundColor: kPrimary,
                            //  snackPosition: SnackPosition.TOP,
                            //  "Upload required images", "Please upload at least 2 images");
                            //  }
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
