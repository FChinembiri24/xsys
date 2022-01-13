import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';

 class BtServices  {
//We're making these three things global so that we-
//can check the state and device later in this class
  BluetoothDevice? device;
  BluetoothState state =FlutterBlue.instance.state as BluetoothState ;

  BluetoothDeviceState? deviceState;

  ///Initialisation and listening to device state
  @override
  BState() {
    var state;
    FlutterBlue.instance.state.listen((event) {
      state = event;
    });
    return state;
  }

  initState() {
    //super.initState();

//checks bluetooth current state
    FlutterBlue.instance.state.listen((state) {
      if (state == BluetoothState.off) {
        SnackBar(content: Text("TurnOn bluetooth"));
      } else if (state == BluetoothState.on) {
//if bluetooth is enabled then go ahead.
//Make sure user's device gps is on.
        scanForDevices();
      }
    });
  }

  void scanForDevices() async {
    var scanSubscription = FlutterBlue.instance.scan().listen((
        scanResult) async {
      if (scanResult.device.name == "your_device_name") {
        print("found device");
//Assigning bluetooth device
        device = scanResult.device;
//After that we stop the scanning for device
        FlutterBlue.instance.stopScan();
      }
    });
    scanSubscription.cancel();
  }

  connectToDevice() async {
//flutter_blue makes our life easier
    await device!.connect();
//After connection start dicovering services
    discoverServices();
  }
// ADD YOUR OWN SERVICES & CHAR UUID, EACH DEVICE HAS DIFFERENT UUID
// device Proprietary characteristics of the ISSC service
   static const ISSC_PROPRIETARY_SERVICE_UUID = "49535343-*****";
//device char for ISSC characteristics
   static const UUIDSTR_ISSC_TRANS_TX = "49535343-4554-*****";
   static const UUIDSTR_ISSC_TRANS_RX = "49535343-8841-****";
// This characteristic to send command to device
   BluetoothCharacteristic? c;
//This stream is for taking characteristic's value
//for reading data provided by device
   late Stream<List<int>> listStream;
   discoverServices() async {
     List<BluetoothService>? services = await device?.discoverServices();
//checking each services provided by device
     services!.forEach((service) {
       if (service.uuid.toString() == ISSC_PROPRIETARY_SERVICE_UUID) {
         service.characteristics.forEach((characteristic) {
           if (characteristic.uuid.toString() == UUIDSTR_ISSC_TRANS_RX) {
//Updating characteristic to perform write operation.
             c = characteristic;
           } else if (characteristic.uuid.toString() == UUIDSTR_ISSC_TRANS_TX) {
//Updating stream to perform read operation.
             listStream = characteristic.value;
             characteristic.setNotifyValue(!characteristic.isNotifying);
           }
         });
       }
     });
   }

}