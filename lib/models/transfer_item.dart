// Transfer item model

import 'package:meta/meta.dart';

@immutable
class TransferItem {
  final String id;
  final String filePath; // absolute path on sender device
  final String relativePath; // relative path to restore
  final int size;
  final String checksum; // SHA256 hex
  final int transferredBytes;
  final int retries;
  final String status; // pending, in_progress, completed, failed

  const TransferItem({
    required this.id,
    required this.filePath,
    required this.relativePath,
    required this.size,
    required this.checksum,
    this.transferredBytes = 0,
    this.retries = 0,
    this.status = 'pending',
  });

  TransferItem copyWith({
    String? id,
    String? filePath,
    String? relativePath,
    int? size,
    String? checksum,
    int? transferredBytes,
    int? retries,
    String? status,
  }) {
    return TransferItem(
      id: id ?? this.id,
      filePath: filePath ?? this.filePath,
      relativePath: relativePath ?? this.relativePath,
      size: size ?? this.size,
      checksum: checksum ?? this.checksum,
      transferredBytes: transferredBytes ?? this.transferredBytes,
      retries: retries ?? this.retries,
      status: status ?? this.status,
    );
  }
}
