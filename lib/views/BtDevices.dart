import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:xsys/helpers/variable.dart';

class BtDevices extends StatefulWidget {
  const BtDevices({Key? key}) : super(key: key);

  @override
  _BtDevicesState createState() => _BtDevicesState();
}

class _BtDevicesState extends State<BtDevices> {
  FlutterBlue flutterBlue = FlutterBlue.instance;
  List<ScanResult> scanResultList = [];
  bool _isScanning = true;

  @override
  initState() {
    super.initState();
    initBluetoothScanning();
  }

//method to initiate Bluetooth scanning
  void initBluetoothScanning() {
    flutterBlue.isScanning.listen((isScanning) {
      _isScanning = isScanning;
      setState(() {});
    });
  }


  scan() async {
    if (!_isScanning) {

      scanResultList.clear();
      flutterBlue.startScan(timeout: Duration(seconds: 45));

      flutterBlue.scanResults.listen((results) {
        scanResultList = results;
        setState(() {});
      });
    } else {

      flutterBlue.stopScan();
    }
  }


  Widget deviceSignal(ScanResult r) {
    return Text(r.rssi.toString());
  }


  Widget deviceMacAddress(ScanResult r) {
    return Text(r.device.id.id);
  }


  Widget deviceName(ScanResult r) {
    String name = '';

    if (r.device.name.isNotEmpty) {

      name = r.device.name;
    } else if (r.advertisementData.localName.isNotEmpty) {

      name = r.advertisementData.localName;
    } else {

      name = 'N/A';
    }
    return Text(name);
  }


  Widget leading(ScanResult r) {
    return CircleAvatar(
      child: Icon(
        Icons.bluetooth,
        color: Colors.white,
      ),
      backgroundColor: Colors.cyan,
    );
  }
  sendTransparentData(String dataString) async {
//Encoding the string
    List<int> data = utf8.encode(dataString);
    if (flutterBlue.state == BluetoothDeviceState.connected) {
      await FlutterBlue.instance.connectedDevices.write(data);
    }
  }
  void onTap(ScanResult r) {
    print('${r.device.name}');
    r.device.connect().then(() async {
      Variabless user =Variabless();
      sendTransparentData(user.user);

    });
  }


  Widget listItem(ScanResult r) {
    return ListTile(
      onTap: () => onTap(r),
      leading: leading(r),
      title: deviceName(r),
      subtitle: deviceMacAddress(r),
      trailing: deviceSignal(r),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("bluetooth Devices"),
      ),
      body: Center(

        child: ListView.separated(
          itemCount: scanResultList.length,
          itemBuilder: (context, index) {
            return listItem(scanResultList[index]);
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider();
          },
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: scan,
        child: Icon(_isScanning ? Icons.stop : Icons.search),
      ),
    );
  }
}

