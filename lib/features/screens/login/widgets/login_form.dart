import 'package:ecommerce_admin_panel/features/authentication/controllers/login_controller.dart';
import 'package:ecommerce_admin_panel/routes/routes.dart';
import 'package:ecommerce_admin_panel/utils/validators/validation.dart';
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
    final controller = Get.put(LoginController());
    return Form(
        key: controller.loginFormKey,
        child: Padding(
          padding:
              const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
          child: Column(
            children: [
              /// Email
              TextFormField(
                controller: controller.email,
                validator: TValidator.validateEmail,
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
              Obx(
                () => TextFormField(
                  controller: controller.password,
                  // here we don't want to check if the pass is strong or not , we want to check if it is a valid text or not
                  validator: (value) =>
                      TValidator.validateEmptyText('Password', value),
                  obscureText: controller.hidePassword.value,
                  decoration: InputDecoration(
                    // enabledBorder: const OutlineInputBorder(
                    //   borderSide: BorderSide(color: TColors.secondaryColor),
                    //   borderRadius: BorderRadius.all(Radius.circular(13))
                    // ),
                    floatingLabelStyle:
                        const TextStyle(color: TColors.primaryColor),
                    labelText: TTexts.password,
                    labelStyle: const TextStyle(color: TColors.primaryColor),
                    prefixIcon: const Icon(
                      Iconsax.password_check,
                      color: TColors.primaryColor,
                    ),
                    suffixIcon: IconButton(
                        onPressed: () => controller.hidePassword.value =
                            !controller.hidePassword.value,
                        icon: Icon(
                          controller.hidePassword.value
                              ? Iconsax.eye_slash
                              : Iconsax.eye,
                          color: TColors.primaryColor,
                        )),
                  ),
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
                      Obx(
                        () => Checkbox(
                          value: controller.rememberMe.value,
                          onChanged: (value) =>
                              controller.rememberMe.value = value!,
                          activeColor: TColors.primaryColor,
                          checkColor: TColors.white,
                          side: const BorderSide(color: TColors.primaryColor),
                        ),
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

              /// Sign In Button
              SizedBox(
                width: double.infinity,
                // child: ElevatedButton(
                //     style: ElevatedButton.styleFrom(
                //       backgroundColor: TColors.primaryColor,
                //       side: const BorderSide(color: Colors.transparent),
                //     ),
                //     onPressed: () => controller.emailAndPasswordSignIn(),
                //     child: const Text(
                //       TTexts.signIn,
                //       style: TextStyle(color: TColors.white),
                //     )),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: TColors.primaryColor,
                      side: const BorderSide(color: Colors.transparent),
                    ),
                    onPressed: () => controller.registerAdmin(),
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
