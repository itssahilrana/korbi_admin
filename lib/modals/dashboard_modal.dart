class DashboardModal {
  int? id;
  int? timestamp;
  String? text;
  String? numbers;
  void Function()? onTap;

  DashboardModal(
      {
        this.id,
        this.timestamp,
        this.text,
        this.numbers,
        this.onTap,
      });

  DashboardModal.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    timestamp = json['timestamp'];
    text= json['text'];
    numbers= json['numbers'];
    onTap = json['onTap'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['timestamp'] = timestamp;
    data['text'] = text;
    data['numbers'] = numbers;
    data['onTap'] = onTap;
    return data;
  }
}
