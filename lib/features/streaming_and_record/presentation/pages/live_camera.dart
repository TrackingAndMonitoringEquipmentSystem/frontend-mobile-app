import 'dart:convert';
import 'dart:ffi';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/features/streaming_and_record/domain/entities/camera.dart';

import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:frontend/core/utils/environment.dart' as environment;

class LiveCameraPage extends HookWidget {
  final int index;
  final int lockerId;
  final Camera camera;

  const LiveCameraPage({
    Key? key,
    required this.camera,
    required this.index,
    required this.lockerId,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final socket = useState(
      IO.io(
        '${environment.baseSchema}://${environment.baseApiUrl}:${environment.baseApiPort}/locker',
        IO.OptionBuilder().setTransports(['websocket']).build(),
      ),
    );
    final isFirstFrameArrived = useState(false);
    final byteImage = useState<Uint8List?>(null);
    useEffect(
      () {
        socket.value.onConnect((_) {
          print('connect');
        });
        socket.value.onDisconnect((_) => print('disconnect'));
        socket.value.on('locker/$lockerId/camera/$index', (data) {
          print('->data: come in');
          byteImage.value = base64Decode(data as String);
          isFirstFrameArrived.value = true;
        });
        socket.value.emit('locker/toggleLive', {
          'lockerId': lockerId,
          'cameraChannel': index,
          'state': true,
        });
        return () {
          socket.value.emit('locker/toggleLive', {
            'lockerId': lockerId,
            'cameraChannel': index,
            'state': false,
          });
        };
      },
      [],
    );
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          camera.name,
          style: Theme.of(context).primaryTextTheme.headline1,
        ),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(
          screenSize.width * 0.05,
          20,
          screenSize.width * 0.05,
          20,
        ),
        child: Column(
          children: [
            Expanded(
              child: isFirstFrameArrived.value
                  ? Image(
                      fit: BoxFit.cover,
                      image: MemoryImage(byteImage.value!),
                      gaplessPlayback: true,
                    )
                  : const Center(child: CircularProgressIndicator()),
            ),
          ],
        ),
      ),
    );
  }
}
