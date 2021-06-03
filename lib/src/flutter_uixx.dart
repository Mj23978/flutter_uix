import 'package:flutter/material.dart';

mixin Fx {
  static const List<int> _validShadeValues = [
    100,
    200,
    300,
    400,
    500,
    600,
    700,
    800,
    900
  ];

  static const String _blackHex = "#000000";
  static const String _whiteHex = "#ffffff";

  ///colors
  static Color black = hexToColor(_blackHex);
  static Color white = hexToColor(_whiteHex);

  static const String _grayHex100 = "#F7FAFC";
  static const String _grayHex200 = "#EDF2F7";
  static const String _grayHex300 = "#E2E8F0";
  static const String _grayHex400 = "#CBD5E0";
  static const String _grayHex500 = "#A0AEC0";
  static const String _grayHex600 = "#718096";
  static const String _grayHex700 = "#4A5568";
  static const String _grayHex800 = "#2D3748";
  static const String _grayHex900 = "#1A202C";

  ///Gray Colors
  static Color gray([int shade = 400]) {
    assert(_validShadeValues.contains(shade),
        "Provide a valid shade with this values : $_validShadeValues");
    if (shade == 100) {
      return hexToColor(_grayHex100);
    } else if (shade == 200) {
      return hexToColor(_grayHex200);
    } else if (shade == 300) {
      return hexToColor(_grayHex300);
    } else if (shade == 400) {
      return hexToColor(_grayHex400);
    } else if (shade == 500) {
      return hexToColor(_grayHex500);
    } else if (shade == 600) {
      return hexToColor(_grayHex600);
    } else if (shade == 700) {
      return hexToColor(_grayHex700);
    } else if (shade == 800) {
      return hexToColor(_grayHex800);
    } else if (shade == 900) {
      return hexToColor(_grayHex900);
    } else {
      return hexToColor(_grayHex400);
    }
  }

  static const String _redHex100 = "#FFF5F5";
  static const String _redHex200 = "#FED7D7";
  static const String _redHex300 = "#FEB2B2";
  static const String _redHex400 = "#FC8181";
  static const String _redHex500 = "#F56565";
  static const String _redHex600 = "#E53E3E";
  static const String _redHex700 = "#C53030";
  static const String _redHex800 = "#9B2C2C";
  static const String _redHex900 = "#742A2A";

  ///Red Colors
  static Color red([int shade = 400]) {
    assert(_validShadeValues.contains(shade),
        "Provide a valid shade with this values : $_validShadeValues");
    if (shade == 100) {
      return hexToColor(_redHex100);
    } else if (shade == 200) {
      return hexToColor(_redHex200);
    } else if (shade == 300) {
      return hexToColor(_redHex300);
    } else if (shade == 400) {
      return hexToColor(_redHex400);
    } else if (shade == 500) {
      return hexToColor(_redHex500);
    } else if (shade == 600) {
      return hexToColor(_redHex600);
    } else if (shade == 700) {
      return hexToColor(_redHex700);
    } else if (shade == 800) {
      return hexToColor(_redHex800);
    } else if (shade == 900) {
      return hexToColor(_redHex900);
    } else {
      return hexToColor(_redHex400);
    }
  }

  static const String _orangeHex100 = "#FFFAF0";
  static const String _orangeHex200 = "#FEEBC8";
  static const String _orangeHex300 = "#FBD38D";
  static const String _orangeHex400 = "#F6AD55";
  static const String _orangeHex500 = "#ED8936";
  static const String _orangeHex600 = "#DD6B20";
  static const String _orangeHex700 = "#C05621";
  static const String _orangeHex800 = "#9C4221";
  static const String _orangeHex900 = "#7B341E";

  ///Orange Colors
  static Color orange([int shade = 400]) {
    assert(_validShadeValues.contains(shade),
        "Provide a valid shade with this values : $_validShadeValues");
    if (shade == 100) {
      return hexToColor(_orangeHex100);
    } else if (shade == 200) {
      return hexToColor(_orangeHex200);
    } else if (shade == 300) {
      return hexToColor(_orangeHex300);
    } else if (shade == 400) {
      return hexToColor(_orangeHex400);
    } else if (shade == 500) {
      return hexToColor(_orangeHex500);
    } else if (shade == 600) {
      return hexToColor(_orangeHex600);
    } else if (shade == 700) {
      return hexToColor(_orangeHex700);
    } else if (shade == 800) {
      return hexToColor(_orangeHex800);
    } else if (shade == 900) {
      return hexToColor(_orangeHex900);
    } else {
      return hexToColor(_orangeHex400);
    }
  }

  static const String _yellowHex100 = "#FFFFF0";
  static const String _yellowHex200 = "#FEFCBF";
  static const String _yellowHex300 = "#FAF089";
  static const String _yellowHex400 = "#F6E05E";
  static const String _yellowHex500 = "#ECC94B";
  static const String _yellowHex600 = "#D69E2E";
  static const String _yellowHex700 = "#B7791F";
  static const String _yellowHex800 = "#975A16";
  static const String _yellowHex900 = "#744210";

  ///Yellow Colors
  static Color yellow([int shade = 400]) {
    assert(_validShadeValues.contains(shade),
        "Provide a valid shade with this values : $_validShadeValues");
    if (shade == 100) {
      return hexToColor(_yellowHex100);
    } else if (shade == 200) {
      return hexToColor(_yellowHex200);
    } else if (shade == 300) {
      return hexToColor(_yellowHex300);
    } else if (shade == 400) {
      return hexToColor(_yellowHex400);
    } else if (shade == 500) {
      return hexToColor(_yellowHex500);
    } else if (shade == 600) {
      return hexToColor(_yellowHex600);
    } else if (shade == 700) {
      return hexToColor(_yellowHex700);
    } else if (shade == 800) {
      return hexToColor(_yellowHex800);
    } else if (shade == 900) {
      return hexToColor(_yellowHex900);
    } else {
      return hexToColor(_yellowHex400);
    }
  }

  static const String _greenHex100 = "#F0FFF4";
  static const String _greenHex200 = "#C6F6D5";
  static const String _greenHex300 = "#9AE6B4";
  static const String _greenHex400 = "#68D391";
  static const String _greenHex500 = "#48BB78";
  static const String _greenHex600 = "#38A169";
  static const String _greenHex700 = "#2F855A";
  static const String _greenHex800 = "#276749";
  static const String _greenHex900 = "#22543D";

  ///Green Colors
  static Color green([int shade = 400]) {
    assert(_validShadeValues.contains(shade),
        "Provide a valid shade with this values : $_validShadeValues");
    if (shade == 100) {
      return hexToColor(_greenHex100);
    } else if (shade == 200) {
      return hexToColor(_greenHex200);
    } else if (shade == 300) {
      return hexToColor(_greenHex300);
    } else if (shade == 400) {
      return hexToColor(_greenHex400);
    } else if (shade == 500) {
      return hexToColor(_greenHex500);
    } else if (shade == 600) {
      return hexToColor(_greenHex600);
    } else if (shade == 700) {
      return hexToColor(_greenHex700);
    } else if (shade == 800) {
      return hexToColor(_greenHex800);
    } else if (shade == 900) {
      return hexToColor(_greenHex900);
    } else {
      return hexToColor(_greenHex400);
    }
  }

  static const String _tealHex100 = "#E6FFFA";
  static const String _tealHex200 = "#B2F5EA";
  static const String _tealHex300 = "#81E6D9";
  static const String _tealHex400 = "#4FD1C5";
  static const String _tealHex500 = "#38B2AC";
  static const String _tealHex600 = "#319795";
  static const String _tealHex700 = "#2C7A7B";
  static const String _tealHex800 = "#285E61";
  static const String _tealHex900 = "#234E52";

  ///Teal Colors
  static Color teal([int shade = 400]) {
    assert(_validShadeValues.contains(shade),
        "Provide a valid shade with this values : $_validShadeValues");
    if (shade == 100) {
      return hexToColor(_tealHex100);
    } else if (shade == 200) {
      return hexToColor(_tealHex200);
    } else if (shade == 300) {
      return hexToColor(_tealHex300);
    } else if (shade == 400) {
      return hexToColor(_tealHex400);
    } else if (shade == 500) {
      return hexToColor(_tealHex500);
    } else if (shade == 600) {
      return hexToColor(_tealHex600);
    } else if (shade == 700) {
      return hexToColor(_tealHex700);
    } else if (shade == 800) {
      return hexToColor(_tealHex800);
    } else if (shade == 900) {
      return hexToColor(_tealHex900);
    } else {
      return hexToColor(_tealHex400);
    }
  }

  static const String _blueHex100 = "#EBF8FF";
  static const String _blueHex200 = "#BEE3F8";
  static const String _blueHex300 = "#90CDF4";
  static const String _blueHex400 = "#63B3ED";
  static const String _blueHex500 = "#4299E1";
  static const String _blueHex600 = "#3182CE";
  static const String _blueHex700 = "#2B6CB0";
  static const String _blueHex800 = "#2C5282";
  static const String _blueHex900 = "#2A4365";

  ///Blue Colors
  static Color blue([int shade = 400]) {
    assert(_validShadeValues.contains(shade),
        "Provide a valid shade with this values : $_validShadeValues");
    if (shade == 100) {
      return hexToColor(_blueHex100);
    } else if (shade == 200) {
      return hexToColor(_blueHex200);
    } else if (shade == 300) {
      return hexToColor(_blueHex300);
    } else if (shade == 400) {
      return hexToColor(_blueHex400);
    } else if (shade == 500) {
      return hexToColor(_blueHex500);
    } else if (shade == 600) {
      return hexToColor(_blueHex600);
    } else if (shade == 700) {
      return hexToColor(_blueHex700);
    } else if (shade == 800) {
      return hexToColor(_blueHex800);
    } else if (shade == 900) {
      return hexToColor(_blueHex900);
    } else {
      return hexToColor(_blueHex400);
    }
  }

  static const String _indigoHex100 = "#EBF4FF";
  static const String _indigoHex200 = "#C3DAFE";
  static const String _indigoHex300 = "#A3BFFA";
  static const String _indigoHex400 = "#7F9CF5";
  static const String _indigoHex500 = "#667EEA";
  static const String _indigoHex600 = "#5A67D8";
  static const String _indigoHex700 = "#4C51BF";
  static const String _indigoHex800 = "#434190";
  static const String _indigoHex900 = "#3C366B";

  ///Indigo Colors
  static Color indigo([int shade = 400]) {
    assert(_validShadeValues.contains(shade),
        "Provide a valid shade with this values : $_validShadeValues");
    if (shade == 100) {
      return hexToColor(_indigoHex100);
    } else if (shade == 200) {
      return hexToColor(_indigoHex200);
    } else if (shade == 300) {
      return hexToColor(_indigoHex300);
    } else if (shade == 400) {
      return hexToColor(_indigoHex400);
    } else if (shade == 500) {
      return hexToColor(_indigoHex500);
    } else if (shade == 600) {
      return hexToColor(_indigoHex600);
    } else if (shade == 700) {
      return hexToColor(_indigoHex700);
    } else if (shade == 800) {
      return hexToColor(_indigoHex800);
    } else if (shade == 900) {
      return hexToColor(_indigoHex900);
    } else {
      return hexToColor(_indigoHex400);
    }
  }

  static const String _purpleHex100 = "#FAF5FF";
  static const String _purpleHex200 = "#E9D8FD";
  static const String _purpleHex300 = "#D6BCFA";
  static const String _purpleHex400 = "#B794F4";
  static const String _purpleHex500 = "#9F7AEA";
  static const String _purpleHex600 = "#805AD5";
  static const String _purpleHex700 = "#6B46C1";
  static const String _purpleHex800 = "#553C9A";
  static const String _purpleHex900 = "#44337A";

  ///Purple Colors
  static Color purple([int shade = 400]) {
    assert(_validShadeValues.contains(shade),
        "Provide a valid shade with this values : $_validShadeValues");
    if (shade == 100) {
      return hexToColor(_purpleHex100);
    } else if (shade == 200) {
      return hexToColor(_purpleHex200);
    } else if (shade == 300) {
      return hexToColor(_purpleHex300);
    } else if (shade == 400) {
      return hexToColor(_purpleHex400);
    } else if (shade == 500) {
      return hexToColor(_purpleHex500);
    } else if (shade == 600) {
      return hexToColor(_purpleHex600);
    } else if (shade == 700) {
      return hexToColor(_purpleHex700);
    } else if (shade == 800) {
      return hexToColor(_purpleHex800);
    } else if (shade == 900) {
      return hexToColor(_purpleHex900);
    } else {
      return hexToColor(_purpleHex400);
    }
  }

  static const String _pinkHex100 = "#FFF5F7";
  static const String _pinkHex200 = "#FED7E2";
  static const String _pinkHex300 = "#FBB6CE";
  static const String _pinkHex400 = "#F687B3";
  static const String _pinkHex500 = "#ED64A6";
  static const String _pinkHex600 = "#D53F8C";
  static const String _pinkHex700 = "#B83280";
  static const String _pinkHex800 = "#97266D";
  static const String _pinkHex900 = "#702459";

  ///Pink Colors
  static Color pink([int shade = 400]) {
    assert(_validShadeValues.contains(shade),
        "Provide a valid shade with this values : $_validShadeValues");
    if (shade == 100) {
      return hexToColor(_pinkHex100);
    } else if (shade == 200) {
      return hexToColor(_pinkHex200);
    } else if (shade == 300) {
      return hexToColor(_pinkHex300);
    } else if (shade == 400) {
      return hexToColor(_pinkHex400);
    } else if (shade == 500) {
      return hexToColor(_pinkHex500);
    } else if (shade == 600) {
      return hexToColor(_pinkHex600);
    } else if (shade == 700) {
      return hexToColor(_pinkHex700);
    } else if (shade == 800) {
      return hexToColor(_pinkHex800);
    } else if (shade == 900) {
      return hexToColor(_pinkHex900);
    } else {
      return hexToColor(_pinkHex400);
    }
  }

  static EdgeInsets ma(double size) => EdgeInsets.all(size);

  static EdgeInsets msy({double? v, double? h}) =>
      EdgeInsets.symmetric(vertical: v ?? 0, horizontal: h ?? 0);

  static ShapeBorder withRounded(double radius) =>
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius));

  /// Get color from the hex value
  static Color hexToColor(String code) =>
      Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}
