# Copyright (c) 2017-2024 The Blend2D Authors
#
# This software is provided 'as-is', without any express or
# implied warranty. In no event will the authors be held liable
# for any damages arising from the use of this software.
#
# Permission is granted to anyone to use this software for any purpose,
# including commercial applications, and to alter it and redistribute it
# freely, subject to the following restrictions:
# 
# The origin of this software must not be misrepresented; you must not
# claim that you wrote the original software. If you use this software in
# a product, an acknowledgment in the product documentation would be
# appreciated but is not required.
#
# Altered source versions must be plainly marked as such, and must not
# be misrepresented as being the original software.
#
# This notice may not be removed or altered from any source distribution.
# 
#
# blend2d-nim is a Nim wrapper for the libblend2d library
# providing low-level & high-level API for rendering 2D graphics.
#
# (c) 2024 George Lemon | ZLib License
#     Made by Humans from OpenPeeps
#     https://github.com/openpeeps/blend2d-nim
import ./bindings/[bl_globals, bl_style]

proc rgba*(r, g, b, a: float32): BLRgba =
  result = BLRgba(r: r, g: g, b: b, a: a)

proc rgba*(r, g, b, a: int32): BLRgba =
  result = BLRgba(
    r: r.toFloat / 255.00,
    g: g.toFloat / 255.00,
    b: b.toFloat / 255.00,
    a: a.toFloat / 255.00
  )

let
  AliceBlue* = rgba(250, 248, 255, 255)
  AntiqueWhite* = rgba(250, 235, 215, 255)
  Aqua* = rgba(0, 255, 255, 255)
  Aquamarine* = rgba(127, 255, 212, 255)
  Azure* = rgba(240, 255, 255, 255)
  Beige* = rgba(245, 245, 220, 255)
  Bisque* = rgba(255, 228, 196, 255)
  Black* = rgba(0, 0, 0, 255)
  BlanchedAlmond* = rgba(255, 235, 205, 255)
  Blue* = rgba(0, 0, 255, 255)
  BlueViolet* = rgba(138, 43, 226, 255)
  Brown* = rgba(165, 42, 42, 255)
  BurlyWood* = rgba(222, 184, 135, 255)
  CadetBlue* = rgba(95, 158, 160, 255)
  Chartreuse* = rgba(127, 255, 0, 255)
  Chocolate* = rgba(210, 105, 30, 255)
  Coral* = rgba(255, 127, 80, 255)
  CornflowerBlue* = rgba(100, 149, 237, 255)
  Cornsilk* = rgba(255, 248, 220, 255)
  Crimson* = rgba(220, 20, 60, 255)
  Cyan* = rgba(0, 255, 255, 255)
  DarkBlue* = rgba(0, 0, 139, 255)
  DarkCyan* = rgba(0, 139, 139, 255)
  DarkGoldenrod* = rgba(184, 134, 11, 255)
  DarkGray* = rgba(169, 169, 169, 255)
  DarkGreen* = rgba(0, 100, 0, 255)
  DarkKhaki* = rgba(189, 183, 107, 255)
  DarkMagenta* = rgba(139, 0, 139, 255)
  DarkOliveGreen* = rgba(85, 107, 47, 255)
  DarkOrange* = rgba(255, 140, 0, 255)
  DarkOrchid* = rgba(153, 50, 204, 255)
  DarkRed* = rgba(139, 0, 0, 255)
  DarkSalmon* = rgba(233, 150, 122, 255)
  DarkSeaGreen* = rgba(143, 188, 139, 255)
  DarkSlateBlue* = rgba(72, 61, 139, 255)
  DarkSlateGray* = rgba(47, 79, 79, 255)
  DarkTurquoise* = rgba(0, 206, 209, 255)
  DarkViolet* = rgba(148, 0, 211, 255)
  DeepPink* = rgba(255, 20, 147, 255)
  DeepSkyBlue* = rgba(0, 191, 255, 255)
  DimGray* = rgba(105, 105, 105, 255)
  DodgerBlue* = rgba(30, 144, 255, 255)
  Firebrick* = rgba(178, 34, 34, 255)
  FloralWhite* = rgba(255, 250, 240, 255)
  ForestGreen* = rgba(34, 139, 34, 255)
  Fuchsia* = rgba(255, 0, 255, 255)
  Gainsboro* = rgba(220, 220, 220, 255)
  GhostWhite* = rgba(248, 248, 255, 255)
  Gold* = rgba(255, 215, 0, 255)
  Goldenrod* = rgba(218, 165, 32, 255)
  Gray* = rgba(128, 128, 128, 255)
  Green* = rgba(0, 128, 0, 255)
  GreenYellow* = rgba(173, 255, 47, 255)
  Honeydew* = rgba(240, 255, 240, 255)
  HotPink* = rgba(255, 105, 180, 255)
  IndianRed* = rgba(205, 92, 92, 255)
  Indigo* = rgba(75, 0, 130, 255)
  Ivory* = rgba(255, 255, 240, 255)
  Khaki* = rgba(240, 230, 140, 255)
  Lavender* = rgba(230, 230, 250, 255)
  LavenderBlush* = rgba(255, 240, 245, 255)
  LawnGreen* = rgba(124, 252, 0, 255)
  LemonChiffon* = rgba(255, 250, 205, 255)
  LightBlue* = rgba(173, 216, 230, 255)
  LightCoral* = rgba(240, 128, 128, 255)
  LightCyan* = rgba(224, 255, 255, 255)
  LightGoldenrodYellow* = rgba(250, 250, 210, 255)
  LightGreen* = rgba(144, 238, 144, 255)
  LightGray* = rgba(211, 211, 211, 255)
  LightPink* = rgba(255, 182, 193, 255)
  LightSalmon* = rgba(255, 160, 122, 255)
  LightSeaGreen* = rgba(32, 178, 170, 255)
  LightSkyBlue* = rgba(135, 206, 250, 255)
  LightSlateGray* = rgba(119, 136, 153, 255)
  LightSteelBlue* = rgba(176, 196, 222, 255)
  LightYellow* = rgba(255, 255, 224, 255)
  Lime* = rgba(0, 255, 0, 255)
  LimeGreen* = rgba(50, 205, 50, 255)
  Linen* = rgba(250, 240, 230, 255)
  Magenta* = rgba(255, 0, 255, 255)
  Maroon* = rgba(128, 0, 0, 255)
  MediumAquamarine* = rgba(102, 205, 170, 255)
  MediumBlue* = rgba(0, 0, 205, 255)
  MediumOrchid* = rgba(186, 85, 211, 255)
  MediumPurple* = rgba(147, 112, 219, 255)
  MediumSeaGreen* = rgba(60, 179, 113, 255)
  MediumSlateBlue* = rgba(123, 104, 238, 255)
  MediumSpringGreen* = rgba(0, 250, 154, 255)
  MediumTurquoise* = rgba(72, 209, 204, 255)
  MediumVioletRed* = rgba(199, 21, 133, 255)
  MidnightBlue* = rgba(25, 25, 112, 255)
  MintCream* = rgba(245, 255, 250, 255)
  MistyRose* = rgba(255, 228, 225, 255)
  Moccasin* = rgba(255, 228, 181, 255)
  NavajoWhite* = rgba(255, 222, 173, 255)
  Navy* = rgba(0, 0, 128, 255)
  OldLace* = rgba(253, 245, 230, 255)
  Olive* = rgba(128, 128, 0, 255)
  OliveDrab* = rgba(107, 142, 35, 255)
  Orange* = rgba(255, 165, 0, 255)
  OrangeRed* = rgba(255, 69, 0, 255)
  Orchid* = rgba(218, 112, 214, 255)
  PaleGoldenrod* = rgba(238, 232, 170, 255)
  PaleGreen* = rgba(152, 251, 152, 255)
  PaleTurquoise* = rgba(175, 238, 238, 255)
  PaleVioletRed* = rgba(219, 112, 147, 255)
  PapayaWhip* = rgba(255, 239, 213, 255)
  PeachPuff* = rgba(255, 218, 185, 255)
  Peru* = rgba(205, 133, 63, 255)
  Pink* = rgba(255, 192, 203, 255)
  Plum* = rgba(221, 160, 221, 255)
  PowderBlue* = rgba(176, 224, 230, 255)
  Purple* = rgba(128, 0, 128, 255)
  Red* = rgba(255, 0, 0, 255)
  RosyBrown* = rgba(188, 143, 143, 255)
  RoyalBlue* = rgba(65, 105, 225, 255)
  SaddleBrown* = rgba(139, 69, 19, 255)
  Salmon* = rgba(250, 128, 114, 255)
  SandyBrown* = rgba(244, 164, 96, 255)
  SeaGreen* = rgba(46, 139, 87, 255)
  SeaShell* = rgba(255, 245, 238, 255)
  Sienna* = rgba(160, 82, 45, 255)
  Silver* = rgba(192, 192, 192, 255)
  SkyBlue* = rgba(135, 206, 235, 255)
  SlateBlue* = rgba(106, 90, 205, 255)
  SlateGray* = rgba(112, 128, 144, 255)
  Snow* = rgba(255, 250, 250, 255)
  SpringGreen* = rgba(0, 255, 127, 255)
  SteelBlue* = rgba(70, 130, 180, 255)
  Tan* = rgba(210, 180, 140, 255)
  Teal* = rgba(0, 128, 128, 255)
  Thistle* = rgba(216, 191, 216, 255)
  Tomato* = rgba(255, 99, 71, 255)
  Turquoise* = rgba(64, 224, 208, 255)
  Violet* = rgba(238, 130, 238, 255)
  Wheat* = rgba(245, 222, 179, 255)
  White* = rgba(255, 255, 255, 255)
  WhiteSmoke* = rgba(245, 245, 245, 255)
  Yellow* = rgba(255, 255, 0, 255)
  YellowGreen* = rgba(154, 205, 50, 255)

type
  ColorHex* = uint32

const
  colAliceBlue* = ColorHex(0xFFF0F8FF)
  colAntiqueWhite* = ColorHex(0xFFFAEBD7)
  colAqua* = ColorHex(0xFF00FFFF)
  colAquamarine* = ColorHex(0xFF7FFFD4)
  colAzure* = ColorHex(0xFFF0FFFF)
  colBeige* = ColorHex(0xFFF5F5DC)
  colBisque* = ColorHex(0xFFFFE4C4)
  colBlack* = ColorHex(0xFF000000)
  colBlanchedAlmond* = ColorHex(0xFFFFEBCD)
  colBlue* = ColorHex(0xFF0000FF)
  colBlueViolet* = ColorHex(0xFF8A2BE2)
  colBrown* = ColorHex(0xFFA52A2A)
  colBurlyWood* = ColorHex(0xFFDEB887)
  colCadetBlue* = ColorHex(0xFF5F9EA0)
  colChartreuse* = ColorHex(0xFF7FFF00)
  colChocolate* = ColorHex(0xFFD2691E)
  colCoral* = ColorHex(0xFFFF7F50)
  colCornflowerBlue* = ColorHex(0xFF6495ED)
  colCornsilk* = ColorHex(0xFFFFF8DC)
  colCrimson* = ColorHex(0xFFDC143C)
  colCyan* = ColorHex(0xFF00FFFF)
  colDarkBlue* = ColorHex(0xFF00008B)
  colDarkCyan* = ColorHex(0xFF008B8B)
  colDarkGoldenRod* = ColorHex(0xFFB8860B)
  colDarkGray* = ColorHex(0xFFA9A9A9)
  colDarkGreen* = ColorHex(0xFF006400)
  colDarkGrey* = ColorHex(0xFFA9A9A9)
  colDarkKhaki* = ColorHex(0xFFBDB76B)
  colDarkMagenta* = ColorHex(0xFF8B008B)
  colDarkOliveGreen* = ColorHex(0xFF556B2F)
  colDarkorange* = ColorHex(0xFFFF8C00)
  colDarkOrchid* = ColorHex(0xFF9932CC)
  colDarkRed* = ColorHex(0xFF8B0000)
  colDarkSalmon* = ColorHex(0xFFE9967A)
  colDarkSeaGreen* = ColorHex(0xFF8FBC8F)
  colDarkSlateBlue* = ColorHex(0xFF483D8B)
  colDarkSlateGray* = ColorHex(0xFF2F4F4F)
  colDarkSlateGrey* = ColorHex(0xFF2F4F4F)
  colDarkTurquoise* = ColorHex(0xFF00CED1)
  colDarkViolet* = ColorHex(0xFF9400D3)
  colDeepPink* = ColorHex(0xFFFF1493)
  colDeepSkyBlue* = ColorHex(0xFF00BFFF)
  colDimGray* = ColorHex(0xFF696969)
  colDimGrey* = ColorHex(0xFF696969)
  colDodgerBlue* = ColorHex(0xFF1E90FF)
  colFireBrick* = ColorHex(0xFFB22222)
  colFloralWhite* = ColorHex(0xFFFFFAF0)
  colForestGreen* = ColorHex(0xFF228B22)
  colFuchsia* = ColorHex(0xFFFF00FF)
  colGainsboro* = ColorHex(0xFFDCDCDC)
  colGhostWhite* = ColorHex(0xFFF8F8FF)
  colGold* = ColorHex(0xFFFFD700)
  colGoldenRod* = ColorHex(0xFFDAA520)
  colGray* = ColorHex(0xFF808080)
  colGreen* = ColorHex(0xFF008000)
  colGreenYellow* = ColorHex(0xFFADFF2F)
  colGrey* = ColorHex(0xFF808080)
  colHoneyDew* = ColorHex(0xFFF0FFF0)
  colHotPink* = ColorHex(0xFFFF69B4)
  colIndianRed* = ColorHex(0xFFCD5C5C)
  colIndigo* = ColorHex(0xFF4B0082)
  colIvory* = ColorHex(0xFFFFFFF0)
  colKhaki* = ColorHex(0xFFF0E68C)
  colLavender* = ColorHex(0xFFE6E6FA)
  colLavenderBlush* = ColorHex(0xFFFFF0F5)
  colLawnGreen* = ColorHex(0xFF7CFC00)
  colLemonChiffon* = ColorHex(0xFFFFFACD)
  colLightBlue* = ColorHex(0xFFADD8E6)
  colLightCoral* = ColorHex(0xFFF08080)
  colLightCyan* = ColorHex(0xFFE0FFFF)
  colLightGoldenRodYellow* = ColorHex(0xFFFAFAD2)
  colLightGray* = ColorHex(0xFFD3D3D3)
  colLightGreen* = ColorHex(0xFF90EE90)
  colLightGrey* = ColorHex(0xFFD3D3D3)
  colLightPink* = ColorHex(0xFFFFB6C1)
  colLightSalmon* = ColorHex(0xFFFFA07A)
  colLightSeaGreen* = ColorHex(0xFF20B2AA)
  colLightSkyBlue* = ColorHex(0xFF87CEFA)
  colLightSlateGray* = ColorHex(0xFF778899)
  colLightSlateGrey* = ColorHex(0xFF778899)
  colLightSteelBlue* = ColorHex(0xFFB0C4DE)
  colLightYellow* = ColorHex(0xFFFFFFE0)
  colLime* = ColorHex(0xFF00FF00)
  colLimeGreen* = ColorHex(0xFF32CD32)
  colLinen* = ColorHex(0xFFFAF0E6)
  colMagenta* = ColorHex(0xFFFF00FF)
  colMaroon* = ColorHex(0xFF800000)
  colMediumAquaMarine* = ColorHex(0xFF66CDAA)
  colMediumBlue* = ColorHex(0xFF0000CD)
  colMediumOrchid* = ColorHex(0xFFBA55D3)
  colMediumPurple* = ColorHex(0xFF9370DB)
  colMediumSeaGreen* = ColorHex(0xFF3CB371)
  colMediumSlateBlue* = ColorHex(0xFF7B68EE)
  colMediumSpringGreen* = ColorHex(0xFF00FA9A)
  colMediumTurquoise* = ColorHex(0xFF48D1CC)
  colMediumVioletRed* = ColorHex(0xFFC71585)
  colMidnightBlue* = ColorHex(0xFF191970)
  colMintCream* = ColorHex(0xFFF5FFFA)
  colMistyRose* = ColorHex(0xFFFFE4E1)
  colMoccasin* = ColorHex(0xFFFFE4B5)
  colNavajoWhite* = ColorHex(0xFFFFDEAD)
  colNavy* = ColorHex(0xFF000080)
  colOldLace* = ColorHex(0xFFFDF5E6)
  colOlive* = ColorHex(0xFF808000)
  colOliveDrab* = ColorHex(0xFF6B8E23)
  colOrange* = ColorHex(0xFFFFA500)
  colOrangeRed* = ColorHex(0xFFFF4500)
  colOrchid* = ColorHex(0xFFDA70D6)
  colPaleGoldenRod* = ColorHex(0xFFEEE8AA)
  colPaleGreen* = ColorHex(0xFF98FB98)
  colPaleTurquoise* = ColorHex(0xFFAFEEEE)
  colPaleVioletRed* = ColorHex(0xFFDB7093)
  colPapayaWhip* = ColorHex(0xFFFFEFD5)
  colPeachPuff* = ColorHex(0xFFFFDAB9)
  colPeru* = ColorHex(0xFFCD853F)
  colPink* = ColorHex(0xFFFFC0CB)
  colPlum* = ColorHex(0xFFDDA0DD)
  colPowderBlue* = ColorHex(0xFFB0E0E6)
  colPurple* = ColorHex(0xFF800080)
  colRebeccaPurple* = ColorHex(0xFF663399)
  colRed* = ColorHex(0xFFFF0000)
  colRosyBrown* = ColorHex(0xFFBC8F8F)
  colRoyalBlue* = ColorHex(0xFF4169E1)
  colSaddleBrown* = ColorHex(0xFF8B4513)
  colSalmon* = ColorHex(0xFFFA8072)
  colSandyBrown* = ColorHex(0xFFF4A460)
  colSeaGreen* = ColorHex(0xFF2E8B57)
  colSeaShell* = ColorHex(0xFFFFF5EE)
  colSienna* = ColorHex(0xFFA0522D)
  colSilver* = ColorHex(0xFFC0C0C0)
  colSkyBlue* = ColorHex(0xFF87CEEB)
  colSlateBlue* = ColorHex(0xFF6A5ACD)
  colSlateGray* = ColorHex(0xFF708090)
  colSlateGrey* = ColorHex(0xFF708090)
  colSnow* = ColorHex(0xFFFFFAFA)
  colSpringGreen* = ColorHex(0xFF00FF7F)
  colSteelBlue* = ColorHex(0xFF4682B4)
  colTan* = ColorHex(0xFFD2B48C)
  colTeal* = ColorHex(0xFF008080)
  colThistle* = ColorHex(0xFFD8BFD8)
  colTomato* = ColorHex(0xFFFF6347)
  colTurquoise* = ColorHex(0xFF40E0D0)
  colViolet* = ColorHex(0xFFEE82EE)
  colWheat* = ColorHex(0xFFF5DEB3)
  colWhite* = ColorHex(0xFFFFFFFF)
  colWhiteSmoke* = ColorHex(0xFFF5F5F5)
  colYellow* = ColorHex(0xFFFFFF00)
  colYellowGreen* = ColorHex(0xFF9ACD32)

#
# Gradients
#
proc newLinearGradient*(x1, y1: cdouble; x0, y0: cdouble = 0): ptr BLGradientCore =
  ## Create a new `BLGradientCore`
  var gradient = create(BLGradientCore)
  var values = BLLinearGradientValues(x0: x0, y0: y0, x1: x1, y1: y1)
  assert blGradientInitAs(gradient,
    BLGradientType.BL_GRADIENT_TYPE_LINEAR, values.addr,
    BLExtendMode.BL_EXTEND_MODE_PAD, nil, 0, nil).code == BL_SUCCESS
  gradient

proc add*(gradient: ptr BLGradientCore, offset: float32, color: uint32) =
  ## Add a new stop color to `gradient` using `offset` and `color`
  assert gradient.blGradientAddStopRgba32(offset, color).code == BL_SUCCESS

proc add*(gradient: ptr BLGradientCore, stop: BLGradientStop) =
  ## Add a new `BLGradientStop` stop color to `gradient`
  assert gradient.blGradientAssignStops(stop.addr, 0'u).code == BL_SUCCESS
