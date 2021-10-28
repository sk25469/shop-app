import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profile-screen';
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 15.0,
              left: 25,
              bottom: 10,
            ),
            alignment: Alignment.centerLeft,
            child: Text(
              "My Profile",
              style: textTheme.headline3,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: const EdgeInsets.only(
                  left: 0,
                  top: 20,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(55),
                  border: Border.all(
                    color: Colors.purpleAccent,
                    width: 2,
                  ),
                ),
                child: const CircleAvatar(
                  radius: 55,
                  backgroundImage: AssetImage('assets/images/profile_pic.jpg'),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Sahil",
                    style: TextStyle(
                      fontSize: 55,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "Sarwar",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 70),
          _buildProfileTile(context, Icons.help, 'Edit Profile'),
          const SizedBox(height: 15),
          _buildProfileTile(context, Icons.account_circle, 'My Orders'),
          const SizedBox(height: 15),
          _buildProfileTile(context, Icons.settings, 'Settings'),
        ],
      ),
    );
  }
}

Widget _buildProfileTile(
  BuildContext context,
  IconData icon,
  String title,
) {
  var textTheme = Theme.of(context).textTheme;
  return SizedBox(
    width: 350,
    child: ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
        size: 35,
      ),
      title: Text(
        title,
        style: textTheme.headline5,
      ),
      trailing: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[200],
        ),
        child: IconButton(
          icon: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ),
    ),
  );
}
