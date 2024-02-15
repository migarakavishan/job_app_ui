import 'package:flutter/material.dart';
import 'package:job_app_ui/screens/job_view/job_view.dart';
import 'package:job_app_ui/services/get_data.dart';

class PopularRow extends StatelessWidget {
  const PopularRow({
    super.key,
    required this.data,
    required this.size,
  });

  final GetData data;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(data.getJobData().length, (index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      JobViewPage(model: data.getJobData()[index]),
                ));
          },
          child: JobCard(
            size: size,
            data: data,
            index: index,
          ),
        );
      })),
    );
  }
}

class JobCard extends StatelessWidget {
  const JobCard(
      {super.key, required this.size, required this.data, required this.index});

  final Size size;
  final GetData data;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        width: size.width * 0.75,
        height: size.height * 0.2,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.grey.shade900,
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Row(
              children: [
                Text(data.getJobData()[index].title,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600)),
                const Spacer(),
                Icon(
                  Icons.bookmark_add_rounded,
                  color: Colors.grey.shade700,
                )
              ],
            ),
            Row(
              children: [
                Text(
                  data.getJobData()[index].salary,
                  style: const TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  width: 8,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade700,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    data.getJobData()[index].type,
                    style: TextStyle(color: Colors.grey.shade300),
                  ),
                )
              ],
            ),
            const Spacer(),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(data.getJobData()[index].logo),
                  radius: 25,
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data.getJobData()[index].companyName,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      data.getJobData()[index].city,
                      style: TextStyle(
                          color: Colors.grey.shade200,
                          fontSize: 14,
                          fontWeight: FontWeight.w300),
                    )
                  ],
                ),
                const Spacer(),
                Text(
                  data.getJobData()[index].time,
                  style: const TextStyle(
                      color: Colors.red,
                      fontSize: 14,
                      fontWeight: FontWeight.w300),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
