import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'store.freezed.dart';
part 'store.g.dart';

@HiveType(typeId: 1)// unique id
@unfreezed
class Store with _$Store{
  factory Store({
    @HiveField(0)
    required final int id,
    @HiveField(1)
    required final String name
  }) = _Store;
  factory  Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);
}
