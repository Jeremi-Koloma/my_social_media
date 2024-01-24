import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:my_social_media/profil/edit_profil/edit_profil_page.dart';
import 'package:my_social_media/profil/profil_menu.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Le thème de couleur de notre application
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Column(
              children: [
                Column(
                  children: [
                    const SizedBox(height: 15.0),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 110.0,
                          height: 120.0,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/smile_bg.jpg"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                        ),
                        const SizedBox(width: 25.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Alyce JOYCE",
                              style: textTheme.headlineMedium!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            const Text("@canaldev"),
                            OutlinedButton(
                              onPressed: () {
                                Get.to(() => const EditProfilPage());
                              },
                              child: const Text("Edit profile"),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 25.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text("128",
                                style: textTheme.headlineSmall!
                                    .copyWith(fontWeight: FontWeight.bold)),
                            Text("Following", style: textTheme.bodySmall),
                          ],
                        ),
                        Column(
                          children: [
                            Text("3120",
                                style: textTheme.headlineSmall!
                                    .copyWith(fontWeight: FontWeight.bold)),
                            Text("Followers", style: textTheme.bodySmall),
                          ],
                        ),
                        Column(
                          children: [
                            Text("5054",
                                style: textTheme.headlineSmall!
                                    .copyWith(fontWeight: FontWeight.bold)),
                            Text("Likes", style: textTheme.bodySmall),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 25.0),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                      decoration: BoxDecoration(
                          color: Theme.of(context).hoverColor,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10.0))),
                      child: Column(
                        children: [
                          ProfilMenu(
                            titleMenu: "My live stream",
                            iconMenu: Icons.stream_outlined,
                            iconColor: const Color(0xffFF2C55),
                            onPress: () {},
                          ),
                          Divider(color: Theme.of(context).highlightColor),
                          ProfilMenu(
                            titleMenu: "Messages",
                            iconMenu: Icons.message_outlined,
                            iconColor: const Color(0xff48E3BD),
                            onPress: () {},
                          ),
                          Divider(color: Theme.of(context).highlightColor),
                          ProfilMenu(
                            titleMenu: "Groupes",
                            iconMenu: Icons.group_add_outlined,
                            iconColor: Colors.deepPurple,
                            onPress: () {},
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                      decoration: BoxDecoration(
                          color: Theme.of(context).hoverColor,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10.0))),
                      child: Column(
                        children: [
                          ProfilMenu(
                            titleMenu: "My wallet",
                            iconMenu: Icons.wallet_outlined,
                            iconColor: const Color(0xffFCCC0E),
                            onPress: () {},
                          ),
                          Divider(color: Theme.of(context).highlightColor),
                          ProfilMenu(
                            titleMenu: "My level",
                            iconMenu: Icons.network_cell_rounded,
                            iconColor: const Color(0xff58C8F7),
                            onPress: () {},
                          ),
                          Divider(color: Theme.of(context).highlightColor),
                          ProfilMenu(
                            titleMenu: "Find friends",
                            iconMenu: Icons.person_add_alt_1_outlined,
                            iconColor: const Color(0xff97D945),
                            onPress: () {},
                          ),
                          Divider(color: Theme.of(context).highlightColor),
                          ProfilMenu(
                            titleMenu: "Blacklist",
                            iconMenu: Icons.list_alt_rounded,
                            iconColor: const Color(0xffFE8C01),
                            onPress: () {},
                          ),
                          Divider(color: Theme.of(context).highlightColor),
                          ProfilMenu(
                            titleMenu: "Settings",
                            iconMenu: Icons.settings,
                            iconColor: const Color(0xff020202),
                            onPress: () {},
                          ),
                          const SizedBox(height: 15.0),
                          ProfilMenu(
                            titleMenu: "Logout",
                            iconMenu: Icons.logout_rounded,
                            iconColor: Colors.red,
                            endIcon: false,
                            onPress: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
