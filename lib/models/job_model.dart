class JobModel {
  String title;
  String type;
  String salary;
  String companyName;
  String logo;
  String city;
  String time;

  JobModel(
      {required this.title,
      this.type = "Full Time",
      required this.salary,
      required this.companyName,
      required this.logo,
      required this.city,
      required this.time});
}
