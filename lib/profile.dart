import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  List<String> imageAssets = [
    'assets/1.JPG',
    'assets/2.jpg',
    'assets/3.jpg',
    'assets/4.jpg',
    'assets/5.jpg',
    'assets/6.jpg',
    'assets/7.jpg',
    'assets/8.jpg',
    'assets/9.jpg',
    // Tambahkan path file untuk gambar lainnya di sini
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mobile App')),
      body: SingleChildScrollView(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/4.jpg'),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Freshley Grisyuan Surya Kolim',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      '123200034',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text('Posts'),
                  Text('9'),
                ],
              ),
              Column(
                children: [
                  Text('Followers'),
                  Text('1106'),
                ],
              ),
              Column(
                children: [
                  Text('Following'),
                  Text('1021'),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: Text("Following"),
          ),
          SizedBox(height: 20),
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
            itemCount: imageAssets.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage(imageAssets[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ]),
      ),
    );
  }
}
