// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_db.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserDBAdapter extends TypeAdapter<UserDB> {
  @override
  final int typeId = 0;

  @override
  UserDB read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserDB(
      firstName: fields[0] as String?,
      lastName: fields[1] as String?,
      password: fields[2] as String?,
      confirmPassword: fields[3] as String?,
      emailOrPhoneNumber: fields[6] as String?,
      phoneNumber: fields[4] as String?,
      email: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, UserDB obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.firstName)
      ..writeByte(1)
      ..write(obj.lastName)
      ..writeByte(2)
      ..write(obj.password)
      ..writeByte(3)
      ..write(obj.confirmPassword)
      ..writeByte(4)
      ..write(obj.phoneNumber)
      ..writeByte(5)
      ..write(obj.email)
      ..writeByte(6)
      ..write(obj.emailOrPhoneNumber);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserDBAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
