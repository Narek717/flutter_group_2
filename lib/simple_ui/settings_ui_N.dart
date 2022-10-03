import 'package:flutter/material.dart';

class SettUI extends StatelessWidget {
  const SettUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Settings UI'),
          backgroundColor: Colors.deepOrange,
        ),
        body: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Common',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: const [
                    Icon(Icons.language),
                    Text(
                      '   Language',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 10,
                color: Colors.black12,
                thickness: 2,
                indent: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: const [
                    Icon(Icons.cloud),
                    Text(
                      '   Environment',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(right: 200),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        'Account',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.deepOrange),
                      ),
                    ],
                  ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: const [
                    Icon(
                      Icons.phone,
                    ),
                    Text(
                      '   Phone number',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 10,
                color: Colors.black12,
                thickness: 2,
                indent: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: const [
                    Icon(
                      Icons.email,
                    ),
                    Text(
                      '   Email',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 10,
                color: Colors.black12,
                thickness: 2,
                indent: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: const [
                    Icon(
                      Icons.output,
                    ),
                    Text(
                      '   Sign out',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(right: 200),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        'Security',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.deepOrange),
                      ),
                    ],
                  ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.phonelink_lock_outlined,
                    ),
                    Text(
                      'Lock app in background',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                    Icon(
                      Icons.toggle_on_outlined,
                      color: Colors.deepOrange,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}
