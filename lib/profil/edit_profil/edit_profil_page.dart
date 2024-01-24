import 'package:flutter/material.dart';
import 'package:my_social_media/profil/edit_profil/edit_profil_controller.dart';

class EditProfilPage extends StatelessWidget {
  const EditProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Le thème de couleur de notre application
    final textTheme = Theme.of(context).textTheme;
    // créons une instance de notre controller
    var controller = EditProfilController();
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 72.0,
        title: const Text('Edit Informations'),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Text(
                "Save",
                style: textTheme.bodyLarge,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Form(
          key: controller.formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Column(
                children: [
                  Center(
                    child: Card(
                      elevation: 10,
                      child: Container(
                        width: 150.0,
                        height: 200.0,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/smile_bg.jpg"),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Colors.black12, BlendMode.darken),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: GestureDetector(
                          onTap: () {},
                          child: const Icon(
                            Icons.camera_alt_outlined,
                            size: 45.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text("Email"),
                      //border: InputBorder.none,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text("Phone"),
                      //border: InputBorder.none,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text("Gender"),
                      //border: InputBorder.none,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text("Date of birth"),
                      //border: InputBorder.none,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
