import 'package:job_app_ui/models/job_model.dart';

class GetData {
  final instaLogo =
      "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Instagram_logo_2016.svg/2048px-Instagram_logo_2016.svg.png";

  final uberlogo =
      "https://helios-i.mashable.com/imagery/articles/03y6VwlrZqnsuvnwR8CtGAL/hero-image.fill.size_1248x702.v1623372852.jpg";

  final tiktokLogo =
      "https://img.freepik.com/premium-vector/tik-tok-logo_578229-290.jpg";

  List<JobModel> getJobData() {
    List<JobModel> jobs = [
      JobModel(
          title: "Senior UX Designer",
          salary: "LKR 80000 /month",
          companyName: "Instagram",
          logo: uberlogo,
          city: "Colombo",
          time: "27 Days Left"),
      JobModel(
          title: "Senior UI Designer",
          salary: "LKR 80000 /month",
          companyName: "Instagram",
          logo: uberlogo,
          city: "Kurunegala",
          time: "37 Days Left"),
      JobModel(
          title: "Senior Mobile Developer",
          salary: "LKR 80000 /month",
          companyName: "Instagram",
          logo: uberlogo,
          city: "Kandy",
          time: "57 Days Left"),
      JobModel(
          title: "Senior Web Developer",
          salary: "LKR 80000 /month",
          companyName: "Instagram",
          logo: uberlogo,
          city: "Jaffna",
          time: "47 Days Left"),
    ];
    return jobs;
  }
}
