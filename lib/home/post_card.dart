import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key});

  @override
  Widget build(BuildContext context) {
    // Le thème de couleur de notre application
    final textTheme = Theme.of(context).textTheme;
    return Card(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            ListTile(
              leading: const CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage("assets/images/smile_bg.jpg"),
              ),
              title: Text(
                "Alyce Joyce",
                overflow: TextOverflow.ellipsis,
                style:
                    textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                "2 hours ago",
                style: textTheme.bodySmall!.copyWith(
                  color: const Color(0xff818BA8),
                ),
              ),
              trailing: OutlinedButton(
                onPressed: () {},
                child: const Text("Follow"),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 17.0),
              child: Text(
                "Reçoit ma reconnaissance Seigneur 1une année de plus pour te dire merci Seigneur 🙌❤️❤️ Joyeux anniversaire à moi 🎉🎉🎉",
                style: textTheme.bodyMedium,
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 5.0),
              height: 400,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                image: DecorationImage(
                  image: AssetImage("assets/images/smile_bg.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: const FaIcon(FontAwesomeIcons.heart),
                  label: const Text("800K"),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: const FaIcon(FontAwesomeIcons.message),
                  label: const Text("300M"),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: const FaIcon(FontAwesomeIcons.paperPlane),
                  label: const Text("Share"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
