// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pre_check_answer.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PreCheckAnswerAdapter extends TypeAdapter<PreCheckAnswer> {
  @override
  final int typeId = 1;

  @override
  PreCheckAnswer read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PreCheckAnswer(
      questionAnswers: (fields[0] as List).cast<PreCheckAnswerList>(),
      note: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, PreCheckAnswer obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.questionAnswers)
      ..writeByte(1)
      ..write(obj.note);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PreCheckAnswerAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PreCheckAnswer _$$_PreCheckAnswerFromJson(Map<String, dynamic> json) =>
    _$_PreCheckAnswer(
      questionAnswers: (json['questionAnswers'] as List<dynamic>)
          .map((e) => PreCheckAnswerList.fromJson(e as Map<String, dynamic>))
          .toList(),
      note: json['note'] as String,
    );

Map<String, dynamic> _$$_PreCheckAnswerToJson(_$_PreCheckAnswer instance) =>
    <String, dynamic>{
      'questionAnswers': instance.questionAnswers,
      'note': instance.note,
    };
