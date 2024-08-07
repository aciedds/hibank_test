import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hibank_test/presentation/home/home_controller.dart';
import 'package:hibank_test/presentation/routes.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
import 'package:shimmer/shimmer.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          IconButton(
            onPressed: () {
              Get.bottomSheet(
                Container(
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 20,
                    right: 20,
                    bottom: 40,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: TextField(
                              controller: controller.filterTEC,
                              focusNode: controller.filterFN,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                                LengthLimitingTextInputFormatter(3),
                              ],
                              decoration:
                                  const InputDecoration(hintText: "Search"),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              Get.back();
                              controller.getPostData();
                              controller.isFiltered.value = true;
                              controller.filterTEC.clear();
                              controller.filterFN.unfocus();
                            },
                            icon: Icon(
                              Icons.search,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
            icon: const Icon(Icons.sort),
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.person),
          onPressed: () => Get.offNamed(Routes.PROFILE),
        ),
      ),
      body: SmartRefresher(
        controller: controller.refreshController,
        onRefresh: () {
          controller.getListPostData();
          controller.isFiltered.value = false;
          controller.refreshController.refreshCompleted();
        },
        onLoading: () {
          controller.getListPostData();
          controller.isFiltered.value = false;
          controller.refreshController.loadComplete();
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Obx(() {
              return controller.userData.value.maybeWhen(
                orElse: () => loadingCard(),
                success: (data) => Card(
                  margin: const EdgeInsets.only(right: 50, left: 8, top: 10),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Welcome",
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        userSuccessCard(
                          context,
                          firstName: data.firstName,
                          lastName: data.lastName,
                          email: data.email,
                          isEmailVerified: data.isEmailVerified,
                        ),
                      ],
                    ),
                  ),
                ),
                error: (message) => errorCard(),
              );
            }),
            Obx(() {
              if (!controller.isFiltered.value) {
                return const SizedBox(
                  height: 10,
                );
              }
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Filtered",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              );
            }),
            Obx(() {
              return controller.listPostData.value.maybeWhen(
                orElse: () => loadingCard(),
                error: (message) => const Center(child: Text("DATA NOT FOUND")),
                success: (data) => ListView.separated(
                  itemBuilder: (context, index) => Card(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: successCard(
                        context,
                        id: data[index].id,
                        userId: data[index].userId,
                        title: data[index].title,
                        description: data[index].body,
                      ),
                    ),
                  ),
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 8),
                  itemCount: data.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                ),
              );
            })
          ],
        ),
      ),
    );
  }

  Widget successCard(
    BuildContext context, {
    required String title,
    required String description,
    required int id,
    required int userId,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Theme.of(context).primaryColor),
          textAlign: TextAlign.start,
        ),
        Text(
          description,
          textAlign: TextAlign.start,
        ),
      ],
    );
  }

  Widget userSuccessCard(
    BuildContext context, {
    required String firstName,
    required String lastName,
    required String email,
    required bool isEmailVerified,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "$firstName $lastName",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 5),
        Row(
          children: [
            Text(email),
            isEmailVerified
                ? Icon(
                    Icons.verified,
                    size: 12,
                    color: Theme.of(context).primaryColor,
                  )
                : const SizedBox.shrink(),
          ],
        ),
      ],
    );
  }

  Widget loadingCard() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Shimmer.fromColors(
              baseColor: Colors.black12,
              highlightColor: Colors.white12,
              child: Container(
                width: 200.0,
                height: 10.0,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Shimmer.fromColors(
              baseColor: Colors.black12,
              highlightColor: Colors.white12,
              child: Container(
                width: 200.0,
                height: 10.0,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget errorCard() {
    return const Card(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("-"),
            Text("-"),
          ],
        ),
      ),
    );
  }
}
