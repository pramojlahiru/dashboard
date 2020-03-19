class StatResult {
  int id;
  String recordDate;
  int count;
  String type;
  String category;

  StatResult({this.id, this.recordDate, this.count, this.type, this.category});

  StatResult.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    recordDate = json['recordDate'];
    count = json['count'];
    type = json['type'];
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['recordDate'] = this.recordDate;
    data['count'] = this.count;
    data['type'] = this.type;
    data['category'] = this.category;
    return data;
  }
}