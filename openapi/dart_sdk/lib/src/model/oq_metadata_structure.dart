//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/oq_logo_file.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'oq_metadata_structure.g.dart';

/// OQMetadataStructure
///
/// Properties:
/// * [id]
/// * [title]
/// * [date]
/// * [publisher]
/// * [logo]
/// * [tags]
/// * [authors]
/// * [language]
/// * [restriction]
/// * [comment]
@BuiltValue()
abstract class OQMetadataStructure
    implements Built<OQMetadataStructure, OQMetadataStructureBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'date')
  String? get date;

  @BuiltValueField(wireName: r'publisher')
  String? get publisher;

  @BuiltValueField(wireName: r'logo')
  OQLogoFile? get logo;

  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  @BuiltValueField(wireName: r'authors')
  BuiltList<String>? get authors;

  @BuiltValueField(wireName: r'language')
  String? get language;

  @BuiltValueField(wireName: r'restriction')
  String? get restriction;

  @BuiltValueField(wireName: r'comment')
  String? get comment;

  OQMetadataStructure._();

  factory OQMetadataStructure([void updates(OQMetadataStructureBuilder b)]) =
      _$OQMetadataStructure;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OQMetadataStructureBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OQMetadataStructure> get serializer =>
      _$OQMetadataStructureSerializer();
}

class _$OQMetadataStructureSerializer
    implements PrimitiveSerializer<OQMetadataStructure> {
  @override
  final Iterable<Type> types = const [
    OQMetadataStructure,
    _$OQMetadataStructure
  ];

  @override
  final String wireName = r'OQMetadataStructure';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OQMetadataStructure object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.date != null) {
      yield r'date';
      yield serializers.serialize(
        object.date,
        specifiedType: const FullType(String),
      );
    }
    if (object.publisher != null) {
      yield r'publisher';
      yield serializers.serialize(
        object.publisher,
        specifiedType: const FullType(String),
      );
    }
    if (object.logo != null) {
      yield r'logo';
      yield serializers.serialize(
        object.logo,
        specifiedType: const FullType(OQLogoFile),
      );
    }
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.authors != null) {
      yield r'authors';
      yield serializers.serialize(
        object.authors,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.language != null) {
      yield r'language';
      yield serializers.serialize(
        object.language,
        specifiedType: const FullType(String),
      );
    }
    if (object.restriction != null) {
      yield r'restriction';
      yield serializers.serialize(
        object.restriction,
        specifiedType: const FullType(String),
      );
    }
    if (object.comment != null) {
      yield r'comment';
      yield serializers.serialize(
        object.comment,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OQMetadataStructure object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OQMetadataStructureBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.date = valueDes;
          break;
        case r'publisher':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.publisher = valueDes;
          break;
        case r'logo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OQLogoFile),
          ) as OQLogoFile;
          result.logo.replace(valueDes);
          break;
        case r'tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.tags.replace(valueDes);
          break;
        case r'authors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.authors.replace(valueDes);
          break;
        case r'language':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.language = valueDes;
          break;
        case r'restriction':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.restriction = valueDes;
          break;
        case r'comment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.comment = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OQMetadataStructure deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OQMetadataStructureBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
