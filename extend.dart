class Television {
  void turnOn() {
    _illuminateDisplay();
    _activateIrSensor();
  }

  void _illuminateDisplay() {
    print("Television display is illuminated.");
  }

  void _activateIrSensor() {
    print("Television IR sensor is activated.");
  }
}

class SmartTelevision extends Television {
  @override
  void turnOn() {
    super.turnOn();
    _bootNetworkInterface();
    _initializeMemory();
    _upgradeApps();
  }

  void _bootNetworkInterface() {
    print("Smart Television network interface is booting.");
  }

  void _initializeMemory() {
    print("Smart Television memory is being initialized.");
  }

  void _upgradeApps() {
    print("Smart Television apps are being upgraded.");
  }
}

class A {
  @override
  void noSuchMethod(Invocation invocation) {
    print('You tried to use a non-existent member: '
        '${invocation.memberName}');
  }
}

void main() {
  // Create a regular Television object and turn it on.
  Television television = Television();
  television.turnOn();

  // Create a Smart Television object and turn it on.
  SmartTelevision smartTelevision = SmartTelevision();
  smartTelevision.turnOn();

  // Create an A object and attempt to call a non-existent method.
  A a = A();
  a.someNonExistentMethod(); // This will trigger noSuchMethod.
}