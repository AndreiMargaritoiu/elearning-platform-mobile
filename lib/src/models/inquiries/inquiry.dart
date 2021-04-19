part of inquiries_models;

abstract class Inquiry implements Built<Inquiry, InquiryBuilder> {
  factory Inquiry([void Function(InquiryBuilder b) updates]) = _$Inquiry;

  factory Inquiry.fromJson(dynamic json) =>
      serializers.deserializeWith(serializer, json);

  Inquiry._();

  String get id;

  String get inquirerEmail;

  String get mentorId;

  bool get read;

  int get createdAt;

  Map<String, dynamic> get json =>
      serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<Inquiry> get serializer => _$inquirySerializer;
}
