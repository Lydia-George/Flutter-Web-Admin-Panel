import 'package:ecommerce_admin_panel/common/widgets/layouts/templates/login_template.dart';
import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/text_strings.dart';

class ForgetPasswordScreenDesktopTablet extends StatelessWidget {
  const ForgetPasswordScreenDesktopTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return TLoginTemplate(
        child: Column(
      children: [
        /// Header
        IconButton(
            onPressed: () => Get.back(), icon: const Icon(Iconsax.arrow_left)),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Text(TTexts.forgetPasswordTitle , style: Theme.of(context).textTheme.headlineMedium,),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Text(TTexts.forgetPasswordSubTitle , style: Theme.of(context).textTheme.labelMedium,),
        const SizedBox(height: TSizes.spaceBtwSections * 2,),

        /// Form
        Form(child: TextFormField(
          decoration: const InputDecoration(
            labelText: TTexts.email,
            prefixIcon: Icon(Iconsax.direct_right),

          ),
        )),
        const SizedBox(height: TSizes.spaceBtwSections,),

      ],
    ));
  }
}
