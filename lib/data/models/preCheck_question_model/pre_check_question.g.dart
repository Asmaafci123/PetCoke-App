// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pre_check_question.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PreCheckQuestionAdapter extends TypeAdapter<PreCheckQuestion> {
  @override
  final int typeId = 1;

  @override
  PreCheckQuestion read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PreCheckQuestion(
      questionId: fields[0] as int,
      questionName: fields[1] as String,
      questionAnswers: (fields[2] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, PreCheckQuestion obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.questionId)
      ..writeByte(1)
      ..write(obj.questionName)
      ..writeByte(2)
      ..write(obj.questionAnswers);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PreCheckQuestionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PreCheckQuestion _$$_PreCheckQuestionFromJson(Map<String, dynamic> json) =>
    _$_PreCheckQuestion(
      questionId: json['questionId'] as int,
      questionName: json['questionName'] as String,
      questionAnswers: (json['questionAnswers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_PreCheckQuestionToJson(_$_PreCheckQuestion instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'questionName': instance.questionName,
      'questionAnswers': instance.questionAnswers,
    };
