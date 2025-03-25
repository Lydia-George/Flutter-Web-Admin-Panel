import 'package:ecommerce_admin_panel/common/widgets/images/t_circular_image.dart';
import 'package:ecommerce_admin_panel/routes/routes.dart';
import 'package:ecommerce_admin_panel/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import 'menu/menu_item.dart';

class TSidebar extends StatelessWidget {
  const TSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // shape: BeveledRectangleBorder(),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          border:
              Border(right: BorderSide(color: TColors.primaryColor, width: 1)),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Image
              const TCircularImage(
                width: 200,
                height: 200,
                image: TImages.ladyHandDark,
                backgroundColor: Colors.transparent,
              ),

              Padding(
                padding: const EdgeInsets.all(TSizes.md),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'MENU',
                      style: Theme.of(context).textTheme.bodySmall!.apply(
                          letterSpacingDelta: 1.2, color: TColors.primaryColor),
                    ),

                    /// Menu Items
                      const TMenuItem(route: TRoutes.firstScreen, icon: Iconsax.status, itemName: 'Dashboard',),
                     const TMenuItem(route: TRoutes.secondScreen, icon: Icons.image, itemName: 'Media',),
                    const TMenuItem(route: TRoutes.responsiveDesignScreen, icon: Iconsax.picture_frame, itemName: 'Banners',),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

