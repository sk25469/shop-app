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
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                  _buildProfileTile(context, 'edit', 'Edit Profile'),
                  const SizedBox(height: 15),
                  _buildProfileTile(context, 'user', 'My Orders'),
                  const SizedBox(height: 15),
                  _buildProfileTile(context, 'settings', 'Settings'),
                  const SizedBox(height: 15),
                  Container(
                    width: 170,
                    margin: const EdgeInsets.only(
                      top: 10,
                      left: 30,
                    ),
                    child: RaisedButton(
                      color: Colors.black,
                      onPressed: () {},
                      child: Ink(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[Colors.purpleAccent, Colors.purple],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 2.0,
                                  bottom: 2.0,
                                ),
                                child: Image.asset(
                                  'assets/images/logout.png',
                                  width: 40,
                                  height: 40,
                                ),
                              ),
                              Text(
                                'Sign out',
                                style: textTheme.bodyText1,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildProfileTile(
  BuildContext context,
  String icon,
  String title,
) {
  var textTheme = Theme.of(context).textTheme;
  return Container(
    width: 350,
    padding: const EdgeInsets.only(
      left: 30,
    ),
    child: ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image(
          image: AssetImage('assets/images/animated_$icon.gif'),
          width: 40,
          height: 40,
        ),
      ),
      title: Text(
        title,
        style: textTheme.headline5,
      ),
      trailing: Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[200],
        ),
        child: IconButton(
          icon: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.black,
            size: 20,
          ),
          onPressed: () {},
        ),
      ),
    ),
  );
}
