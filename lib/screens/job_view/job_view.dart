import 'package:flutter/material.dart';

class JobViewPage extends StatefulWidget {
  const JobViewPage({super.key});

  @override
  State<JobViewPage> createState() => _JobViewPageState();
}

class _JobViewPageState extends State<JobViewPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Column(
        children: [
          Container(
            height: 250,
            width: size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://img.freepik.com/free-vector/flat-employment-agency-search-new-employees-hire_88138-802.jpg"))),
            child: Stack(
              children: [
                SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                                        backgroundColor: Colors.black.withOpacity(0.5),
                                        child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                                        ),
                                      ),
                    ))
              ],
            ),
          ),
          Container(
            width: size.width,
            height: 200,
            decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15))),
          )
        ],
      ),
    );
  }
}
