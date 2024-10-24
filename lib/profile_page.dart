import 'package:flutter/material.dart';
import 'package:uts_mobiledeveloper/login_page.dart';

class ProfilePage extends StatelessWidget{
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Center(child: CircleAvatar(
          radius: 60,
            backgroundImage: AssetImage(
                'assets/profile.jpg'),
          ),
              ),
              SizedBox(height: 20),
              Center(
                child: Container(
                  constraints: BoxConstraints(maxWidth: 300),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Nama: Dhafa Firjatullah Hikmal', style: TextStyle(fontSize: 18)),
                      SizedBox(height: 5),
                      Text('Email: dhafafirjatullahh@gmail.com', style: TextStyle(fontSize: 18)),
                      SizedBox(height: 5),
                      Text('Alamat: Banyuwangi, Jawa Timur', style: TextStyle(fontSize: 18)),
                      SizedBox(height: 5),
                      Text('No Telp: 08123456789', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50),
              Center(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                          (Route<dynamic> route) => false,
                      );
                    },
                    child: Text('Keluar'),
                ),
              ),
            ],
          ),
      ),
    );
  }
}