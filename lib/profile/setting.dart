import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text(
          "Setting",
          style: TextStyle(
            fontSize: 22,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Setting(),
              ),
            );
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              children: const [
                Icon(Icons.person, color: Colors.grey), // تعديل لون الرمز إلى الأبيض
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Account",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey, // تعديل لون النص إلى الأبيض
                  ),
                ),
              ],
            ),
            const Divider(
              height: 20,
              thickness: 1,
              color: Colors.grey, // تعديل لون الخط المنقطع إلى الأبيض
            ),
            const SizedBox(
              height: 10,
            ),
            buildAccountOption(context, "Change password"),
            buildAccountOption(context, "Content Settings"),
            buildAccountOption(context, "Social"),
            buildAccountOption(context, "Language"),
            buildAccountOption(context, "Privacy and Security"),
            const SizedBox(height: 40),
            Row(
              children: [
                Icon(Icons.volume_up_outlined, color: Colors.grey), // تعديل لون الرمز إلى الأبيض
                SizedBox(width: 10),
                Text(
                  "Notifications",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey, // تعديل لون النص إلى الأبيض
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector buildAccountOption(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(
                title,
                style: TextStyle(
                  color: Colors.orange, // تعديل لون العنوان إلى البرتقالي
                ),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text("Option 1"),
                  Text("Option 2"),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    "Close",
                    style: TextStyle(
                      color: Colors.orange, // تعديل لون النص إلى البرتقالي
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.grey, // تعديل لون النص إلى الأبيض
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey, // تعديل لون الرمز إلى الأبيض
            ),
          ],
        ),
      ),
    );
  }
}
