// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveResponseAdapter extends TypeAdapter<HiveResponse> {
  @override
  final int typeId = 1;

  @override
  HiveResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveResponse()
      ..token = fields[0] as String?
      ..id = fields[1] as int?
      ..fullName = fields[2] as String?
      ..email = fields[3] as String?;
  }

  @override
  void write(BinaryWriter writer, HiveResponse obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.token)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.fullName)
      ..writeByte(3)
      ..write(obj.email);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
