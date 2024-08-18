import 'package:xml/xml.dart';

import '../siq_file/siq_file.dart';
import '../siq_file/siq_file_metadata.dart';

class ContentXmlParser {
  ContentXmlParser(String rawFile) {
    final document = XmlDocument.parse(rawFile);
    final package = document.getElement('package')!;
    final metadata = _parseMetadata(package);
    _siqFile = SiqFile(metadata: metadata);
  }

  SiqFileMetadata _parseMetadata(XmlElement package) {
    final packageAtributes =
        package.attributes.map((e) => MapEntry(e.localName, e.value));
    final Map<String, dynamic> json = Map.fromEntries(packageAtributes);

    final tagsElement = package.getElement('tags');
    final tags =
        tagsElement?.children.map((e) => e.innerText.trim()).toList() ?? [];

    final infoElement = package.getElement('info')?.getElement('authors');
    final authors =
        infoElement?.children.map((e) => e.innerText.trim()).toList() ?? [];

    json.addAll({'tags': tags, 'authors': authors});

    final metadata = SiqFileMetadata.fromJson(json);
    return metadata;
  }

  SiqFile? _siqFile;
  SiqFile get siqFile => _siqFile!;
}
