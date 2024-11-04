class GardenPackageDetails {
  final String packageId;
  final String packageName;
  final String description;
  final String price;
  final String photo;

  GardenPackageDetails({
    required this.packageId,
    required this.packageName,
    required this.description,
    required this.price,
    required this.photo,
  });

  factory GardenPackageDetails.fromJson(Map<String, dynamic> json) {
    return GardenPackageDetails(
        packageId: json['package_id'],
        packageName: json['package_name'],
        description: json['description'],
        price: json['price'],
        photo: json['photo']);
  }
}
