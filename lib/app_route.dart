import 'package:ecommerce_admin_panel/routes/app_routes.dart';
import 'package:ecommerce_admin_panel/routes/routes.dart';
import 'package:ecommerce_admin_panel/utils/constants/colors.dart';
import 'package:ecommerce_admin_panel/utils/constants/text_strings.dart';
import 'package:ecommerce_admin_panel/utils/device/web_material_scroll.dart';
import 'package:ecommerce_admin_panel/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppRoute extends StatelessWidget {
  const AppRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: TTexts.appName,
      themeMode: ThemeMode.light,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      initialRoute: TRoutes.firstScreen,
      unknownRoute: GetPage(
          name: '/page-not-found',
          page: () => const Scaffold(
                body: Center(
                  child: Text('Page Not Found'),
                ),
              )),
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      //home: const FirstScreen(), // we can't use the default key ('/') along with home
      getPages: TAppRoute.pages,
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'First Screen',
          style: TextStyle(color: TColors.white),
        ),
        centerTitle: true,
        backgroundColor: TColors.primaryColor,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Simple Navigation ",
                style: TextStyle(
                    color: TColors.primaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Text('Default Flutter Navigator VS GetX Navigation',
                style: TextStyle(
                    color: TColors.primaryColor,
                    fontSize: 15,
                    ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: TColors.primaryColor,
                      side: const BorderSide(color: Colors.transparent),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SecondScreen()));
                    },
                    child: const Text('Default Navigation')),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: TColors.primaryColor,
                      side: const BorderSide(color: Colors.transparent),
                    ),
                    onPressed: () => Get.to(() => const SecondScreen()),
                    child: const Text("GetX Navigation")),
              ),

              /// NAMED NAVIGATION
              const SizedBox(
                height: 50,
              ),
              const Divider(
                color: TColors.primaryColor,
              ),
              const Text(
                'Named Navigator  ',
                style: TextStyle(
                    color: TColors.primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              Text('Flutter Navigator VS GetX Named Navigation',
                style: TextStyle(
                  color: TColors.primaryColor,
                  fontSize: 15,
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              SizedBox(
                width: 250,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: TColors.primaryColor,
                        side: const BorderSide(color: Colors.transparent)),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/second-screen');
                    },
                    child: const Text('Default Named Navigator')),
              ),
              const SizedBox(
                height: 15,
              ),

              SizedBox(
                  width: 250,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: TColors.primaryColor,
                          side: const BorderSide(color: Colors.transparent)),
                      onPressed: () {
                        Get.toNamed(
                            '/second-screen'); // we are not using the context with GetX
                      },
                      child: const Text('GetX Named Navigator'))),
              const SizedBox(
                height: 50,
              ),
              const Divider(
                color: TColors.primaryColor,
              ),

              /// PASS DATA
              Text('PASS DATA & DEEP LINKING',
                style: TextStyle(
                  color: TColors.primaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
              ),
              const Text(
                'Pass Data between screens . GetX',
                style: TextStyle(
                  color: TColors.primaryColor,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 250,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: TColors.primaryColor,
                      side: const BorderSide(color: Colors.transparent),
                    ),
                    onPressed: () {
                      Get.toNamed('/second-screen',
                          arguments: 'Hello From First Screen');
                    },
                    child: const Text('GetX Pass Data')),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: TColors.primaryColor,
                      side: const BorderSide(color: Colors.transparent),
                    ),
                    onPressed: () {
                      Get.toNamed(
                          '/second-screen?device=phone&id=3456&name=Enzo');
                    },
                    child: const Text('Pass Data in URL')),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 400,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: TColors.primaryColor,
                      side: const BorderSide(color: Colors.transparent),
                    ),
                    onPressed: () {
                      Get.toNamed(
                          '/second-screen/1234'); // only passing the userId not adding ?
                    },
                    child: const Text('Pass Data in URL => url.com/second/1234')),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 400,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: TColors.primaryColor,
                        side: const BorderSide(color: Colors.transparent)),
                    onPressed: () {
                      Get.toNamed(
                          '/second-screen?device=Laptop&id=3456&name=Enzo',
                          arguments: 'Hello From First Screen *');
                    },
                    child: const Text('Pass Data in URL with Arguments')),
              ),
              const SizedBox(
                height: 20,
              ),
              // SizedBox(
              //   width: 400,
              //   child: ElevatedButton(onPressed: (){},
              //       child: Text('Pass Data in URL with Arguments')),
              // )
            ],
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Second Screen',
          style: TextStyle(color: TColors.primaryColor),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(Get.arguments ?? ''),
            // in case of they are null , we're going to use the default
            Text('Device = ${Get.parameters['device'] ?? ''}'),
            Text('ID = ${Get.parameters['id'] ?? ''}'),
            Text('Name = ${Get.parameters['name'] ?? ''}'),
            Text('Name = ${Get.parameters['userId'] ?? ''}'),
          ],
        ),
      ),
    );
  }
}
