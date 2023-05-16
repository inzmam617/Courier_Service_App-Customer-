class Order {
  final PickupLocation pickupLocation;
  final DropoffLocation dropoffLocation;
  final String id;
  final String packageSize;
  final String packageType;
  final String packageWeight;
  final String receiverName;
  final String receiverNumber;
  final String paymentMethod;
  final String status;
  final String userId;
  final String vehicleType;
  final DateTime createdAt;
  final int v;

  Order({
    required this.pickupLocation,
    required this.dropoffLocation,
    required this.id,
    required this.packageSize,
    required this.packageType,
    required this.packageWeight,
    required this.receiverName,
    required this.receiverNumber,
    required this.paymentMethod,
    required this.status,
    required this.userId,
    required this.vehicleType,
    required this.createdAt,
    required this.v,
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      pickupLocation: PickupLocation.fromJson(json['pickupLocation']),
      dropoffLocation: DropoffLocation.fromJson(json['dropoffLocation']),
      id: json['_id'],
      packageSize: json['packageSize'],
      packageType: json['packageType'],
      packageWeight: json['packageWeight'],
      receiverName: json['receiverName'],
      receiverNumber: json['receiverNumber'],
      paymentMethod: json['paymentMethod'],
      status: json['status'],
      userId: json['userId'],
      vehicleType: json['vehichleType'],
      createdAt: DateTime.parse(json['createdAt']),
      v: json['__v'],
    );
  }
}

class PickupLocation {
  final String type;
  final List<double> coordinates;

  PickupLocation({
    required this.type,
    required this.coordinates,
  });

  factory PickupLocation.fromJson(Map<String, dynamic> json) {
    return PickupLocation(
      type: json['type'],
      coordinates: (json['coordinates'] as List<dynamic>).map<double>((value) => value.toDouble()).toList(),
    );
  }
}

class DropoffLocation {
  final String type;
  final List<double> coordinates;

  DropoffLocation({
    required this.type,
    required this.coordinates,
  });

  factory DropoffLocation.fromJson(Map<String, dynamic> json) {
    return DropoffLocation(
      type: json['type'],
      coordinates: (json['coordinates'] as List<dynamic>).map<double>((value) => value.toDouble()).toList(),
    );
  }
}
