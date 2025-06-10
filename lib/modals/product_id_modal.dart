

class ProductIdModal {
  int? id;
  int? timestamp;
  String? productId;
  String? batchNumber;
  String? batchQty;
  String? importMonth;
  String? holderType;
  String? watt;
  String? size;
  String? carModel;
  void Function()? onPressConsumerDetail;
  void Function()? onPressProductDetail;

  ProductIdModal(
      {
        this.id,
        this.timestamp,
        this.productId,
        this.batchNumber,
        this.batchQty,
        this.carModel,
        this.holderType,
        this.importMonth,
        this.size,
        this.watt,
        this.onPressConsumerDetail,
        this.onPressProductDetail,
      });

  ProductIdModal.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    timestamp = json['timestamp'];
    productId= json['productId'];
    batchNumber= json['batchNumber'];
    batchQty= json['batchQty'];
    carModel= json['carModel'];
    holderType= json['holderType'];
    importMonth= json['importMonth'];
    size= json['size'];
    watt= json['watt'];
    onPressConsumerDetail = json['onPressConsumerDetail'];
    onPressProductDetail = json['onPressProductDetail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['timestamp'] = timestamp;
    data['productId'] = productId;
    data['batchNumber'] = batchNumber;
    data['BatchQty'] = batchQty;
    data['carModel'] = carModel;
    data['HolderType'] = holderType;
    data['importMonth'] = importMonth;
    data['size'] = size;
    data['watt'] = watt;
    data['onPressConsumerDetail'] = onPressConsumerDetail;
    data['onPressProductDetail'] = onPressProductDetail;
    return data;
  }
}
