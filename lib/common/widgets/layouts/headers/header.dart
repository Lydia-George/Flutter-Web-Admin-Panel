import 'package:ecommerce_admin_panel/common/widgets/images/t_rounded_image.dart';
import 'package:ecommerce_admin_panel/utils/constants/colors.dart';
import 'package:ecommerce_admin_panel/utils/constants/enums.dart';
import 'package:ecommerce_admin_panel/utils/constants/image_strings.dart';
import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:ecommerce_admin_panel/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

/// Header Widget for the Application
class THeader extends StatelessWidget implements PreferredSizeWidget {
  const THeader({super.key,  this.scaffoldKey});

  /// GlobalKey to access the scaffold state
  final GlobalKey<ScaffoldState>? scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        border:
            Border(bottom: BorderSide(color: TColors.primaryColor, width: 1)),
      ),
      padding: const EdgeInsets.symmetric(
          horizontal: TSizes.md, vertical: TSizes.sm),
      child: AppBar(
        /// Mobile Menu
        leading: !TDeviceUtils.isDesktopScreen(context)
            ? IconButton(
                onPressed: () => scaffoldKey?.currentState?.openDrawer(),
                icon: const Icon(Iconsax.menu))
            : null,

        /// Search Field
        title: TDeviceUtils.isDesktopScreen(context)
            ? SizedBox(
                width: 400,
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.search_normal),
                    hintText: 'Search anything...',
                  ),
                ),
              )
            : null,

        /// Actions
        actions: [
          // Search Icon on Mobile
          if (!TDeviceUtils.isDesktopScreen(context))
            IconButton(
                onPressed: () {}, icon: const Icon(Iconsax.search_normal)),
          // Notification Icon
          IconButton(onPressed: () {}, icon: const Icon(Iconsax.notification)),

          // User Data
          const Row(
            children: [
              TRoundedImage(
                width: 40,
                padding: 2,
                height: 40,
                imageType: ImageType.asset,
                image: TImages.user,
              ),
            ],
          ),

          const SizedBox(
            width: TSizes.sm,
          ),

          // Name and Email
          if (!TDeviceUtils.isMobileScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lydia George',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  'lydiageorge42@gmail.com',
                  style: Theme.of(context).textTheme.labelMedium,
                )
              ],
            )
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize =>
      Size.fromHeight(TDeviceUtils.getAppBarHeight() + 15);
}
