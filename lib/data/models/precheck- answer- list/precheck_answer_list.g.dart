// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'precheck_answer_list.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PreCheckAnswerListAdapter extends TypeAdapter<PreCheckAnswerList> {
  @override
  final int typeId = 1;

  @override
  PreCheckAnswerList read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PreCheckAnswerList(
      questionId: fields[0] as int,
      questionAnswer: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, PreCheckAnswerList obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.questionId)
      ..writeByte(1)
      ..write(obj.questionAnswer);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PreCheckAnswerListAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PreCheckAnswerList _$$_PreCheckAnswerListFromJson(
        Map<String, dynamic> json) =>
    _$_PreCheckAnswerList(
      questionId: json['questionId'] as int,
      questionAnswer: json['questionAnswer'] as String?,
    );

Map<String, dynamic> _$$_PreCheckAnswerListToJson(
        _$_PreCheckAnswerList instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'questionAnswer': instance.questionAnswer,
    };
