import 'package:ecommerce_admin_panel/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
      child: Column(
        children: [
          /// Email
          TextFormField(
            decoration: const InputDecoration(
              floatingLabelStyle: TextStyle(color: TColors.primaryColor),
              prefixIcon:
                  Icon(Iconsax.direct_right, color: TColors.primaryColor),
              labelText: TTexts.email,
              labelStyle: TextStyle(color: TColors.primaryColor),
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          /// Password
          TextFormField(
            decoration: InputDecoration(
              // enabledBorder: const OutlineInputBorder(
              //   borderSide: BorderSide(color: TColors.secondaryColor),
              //   borderRadius: BorderRadius.all(Radius.circular(13))
              // ),
              floatingLabelStyle: const TextStyle(color: TColors.primaryColor),
              labelText: TTexts.password,
              labelStyle: const TextStyle(color: TColors.primaryColor),
              prefixIcon: const Icon(
                Iconsax.password_check,
                color: TColors.primaryColor,
              ),
              suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Iconsax.eye_slash,
                    color: TColors.primaryColor,
                  )),
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields / 2,
          ),

          /// Remember Me
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// Remember Me
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                    activeColor: TColors.primaryColor,
                    checkColor: TColors.white,
                    side: const BorderSide(color: TColors.primaryColor),
                  ),
                  const Text(
                    TTexts.rememberMe,
                    style: TextStyle(color: TColors.primaryColor),
                  )
                ],
              ),

              /// Forget Password
              TextButton(
                  onPressed: () => Get.toNamed(TRoutes.forgetPassword),
                  child: const Text(
                    TTexts.forgetPassword,
                    style: TextStyle(color: TColors.primaryColor),
                  ))
            ],
          ),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),

          /// Login Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: TColors.primaryColor,
                  side: const BorderSide(color: Colors.transparent),
                ),
                onPressed: () {},
                child: const Text(
                  TTexts.signIn,
                  style: TextStyle(color: TColors.white),
                )),
          )
        ],
      ),
    ));
  }
}
