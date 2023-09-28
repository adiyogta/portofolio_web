class GetData {
  String nama;
  String image;
  String link;

  GetData(this.nama, this.image, this.link);

  factory GetData.fromJson(Map<String, dynamic> json) {
    return GetData(
      json['nama'] as String,
      json['image'] as String,
      json['link'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nama': nama,
      'image': image,
      'link': link,
    };
  }
}
