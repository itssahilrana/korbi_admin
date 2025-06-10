

class TotalCustomersModal {
  int? id;
  int? timestamp;
  String? name;
  String? email;
  String? mobileNumber;
  String? address;
  String? city;
  String? state;
  String? gstNumber;
  String? productId;
  String? batchNumber;
  String? batchQty;
  String? importDate;
  String? holderType;
  String? watt;
  String? size;
  String? carModel;
  String? guaranteeStart;
  String? guaranteeEnd;
  String? checkIn;
  String? checkOut;
  String? date;
  String? dealer;
  String? coustomer;
  void Function()? onTap;

  TotalCustomersModal(
      {
        this.id,
        this.timestamp,
        this.name,
        this.email,
        this.mobileNumber,
        this.onTap,
        this.gstNumber,
        this.state,
        this.city,
        this.address,
        this.productId,
        this.batchNumber,
        this.batchQty,
        this.carModel,
        this.holderType,
        this.importDate,
        this.guaranteeStart,
        this.size,
        this.watt,
        this.guaranteeEnd,
        this.checkIn,
        this.checkOut,
        this.date,
        this.dealer,
        this.coustomer,
      });

  TotalCustomersModal.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    timestamp = json['timestamp'];
    name= json['name'];
    email= json['email'];
    mobileNumber = json['mobileNumber'];
    city = json['city'];
    state = json['state'];
    address = json['address'];
    gstNumber = json['gstNumber'];
    onTap = json['onTap'];
    productId = json['productId'];
    batchNumber = json['batchNumber'];
    batchQty = json['batchQty'];
    carModel = json['carModel'];
    holderType = json['holderType'];
    importDate = json['importDate'];
    size = json['size'];
    watt = json['watt'];
    guaranteeStart = json["guaranteeStart"];
    guaranteeEnd = json["guaranteeEnd"];
    checkIn = json['checkIn'];
    checkOut = json['checkOut'];
    date = json['date'];
    dealer = json['dealer'];
    coustomer = json['coustomer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['timestamp'] = timestamp;
    data['name'] = name;
    data['email']= email;
    data['city'] = city;
    data['state'] = state;
    data['gstNumber'] = gstNumber;
    data['address'] = address;
    data['mobileNumber'] = mobileNumber;
    data['onTap'] = onTap;
    data['productId'] = productId;
    data['batchNumber'] = batchNumber;
    data['BatchQty'] = batchQty;
    data['carModel'] = carModel;
    data['HolderType'] = holderType;
    data['importDate'] = importDate;
    data['size'] = size;
    data['watt'] = watt;
    data["guaranteeStart"] = guaranteeStart;
    data['guaranteeEnd'] = guaranteeEnd;
    data['checkIn'] = checkIn;
    data['checkOut'] = checkOut;
    data['date'] = date;
    data['dealer'] = dealer;
    data['coustomer'] = coustomer;
    return data;
  }
}
