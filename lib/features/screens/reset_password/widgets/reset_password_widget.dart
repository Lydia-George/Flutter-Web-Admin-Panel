import 'package:ecommerce_admin_panel/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../routes/routes.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
class ResetPasswordWidget extends StatelessWidget {
  const ResetPasswordWidget({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final email = Get.parameters['email'] ?? '';
    return Column(
      children: [
        /// Header
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () => Get.offAllNamed(TRoutes.login),
                icon: const Icon(Icons.clear , color: TColors.primaryColor,)),
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),

        /// Image
        const Image(
          image: AssetImage(TImages.deliveredEmailIllustration),
          width: 300,
          height: 300,
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),

        /// Title & SubTitle
        Text(
          TTexts.changeYourPasswordTitle,
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Text(
          email,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.labelLarge,
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),

        Text(
          TTexts.changeYourPasswordSubTitle,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.labelMedium!.apply(color: TColors.primaryColor.withOpacity(0.9)),
        ),

        const SizedBox(
          height: TSizes.spaceBtwSections,
        ),

        /// Buttons
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: TColors.primaryColor,
              side: const BorderSide(
                color: Colors.transparent,
              )
            ),
              onPressed: () => Get.offAllNamed(TRoutes.login), child: const Text(TTexts.done)),
        ),

        const SizedBox(height: TSizes.spaceBtwItems,),

        SizedBox(
          width: double.infinity,
          child: TextButton(onPressed: () {}, child: const Text(TTexts.resendEmail , style: TextStyle(color: TColors.primaryColor),)),
        )
      ],
    );
  }
}
