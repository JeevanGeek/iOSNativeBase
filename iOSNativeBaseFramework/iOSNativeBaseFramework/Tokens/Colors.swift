//
//  Colors.swift
//  iOSNativeBaseFramework
//
//  Created by Shaik Afroz on 25/01/23.
//

import UIKit

public struct Colors {
    
    public static let constantThreshold = 7
    public static let white = UIColor(rgb: 0xFFFFFF)
    public static let black = UIColor(rgb: 0x000000)
    public static let lightText = UIColor(rgb: 0xFFFFFF)
    public static let darkText = UIColor(rgb: 0x000000)
    
    
    //!ROSE SHADES
    private static let roseShades: [Int:UIColor] = [
        50: UIColor(rgb: 0xfff1f2),
        100: UIColor(rgb: 0xffe4e6),
        200: UIColor(rgb: 0xfecdd3),
        300: UIColor(rgb: 0xfda4af),
        400: UIColor(rgb: 0xfb7185),
        500: UIColor(rgb: 0xf43f5e),
        600: UIColor(rgb: 0xe11d48),
        700: UIColor(rgb: 0xbe123c),
        800: UIColor(rgb: 0x9f1239),
        900: UIColor(rgb: 0x881337),
    ]
    
    public static var rose: [Int: UIColor] {
        return roseShades
    }
    
    //PINK SHADES
    private static let pinkShades: [Int:UIColor] = [
        50: UIColor(rgb: 0xfdf2f8),
        100: UIColor(rgb: 0xfce7f3),
        200: UIColor(rgb: 0xfbcfe8),
        300: UIColor(rgb: 0xf9a8d4),
        400: UIColor(rgb: 0xf472b6),
        500: UIColor(rgb: 0xec4899),
        600: UIColor(rgb: 0xdb2777),
        700: UIColor(rgb: 0xbe185d),
        800: UIColor(rgb: 0x9d174d),
        900: UIColor(rgb: 0x831843),
    ]
    
    public static var pink: [Int: UIColor] {
        return pinkShades
    }
    
    
    //FURSHIA SHADES
    private static let fuchsiaShades: [Int:UIColor] = [
        50: UIColor(rgb: 0xfdf4ff),
        100: UIColor(rgb: 0xfae8ff),
        200: UIColor(rgb: 0xf5d0fe),
        300: UIColor(rgb: 0xf0abfc),
        400: UIColor(rgb: 0xe879f9),
        500: UIColor(rgb: 0xd946ef),
        600: UIColor(rgb: 0xc026d3),
        700: UIColor(rgb: 0xa21caf),
        800: UIColor(rgb: 0x86198f),
        900: UIColor(rgb: 0x701a75),
    ]
    
    public static var fuchsia: [Int: UIColor] {
        return fuchsiaShades
    }
    
    //PURPLE SHADES
    private static let purpleShades: [Int:UIColor] = [
        50: UIColor(rgb:0xfaf5ff),
        100: UIColor(rgb:0xf3e8ff),
        200: UIColor(rgb:0xe9d5ff),
        300: UIColor(rgb:0xd8b4fe),
        400: UIColor(rgb:0xc084fc),
        500: UIColor(rgb:0xa855f7),
        600: UIColor(rgb:0x9333ea),
        700: UIColor(rgb:0x7e22ce),
        800: UIColor(rgb:0x6b21a8),
        900: UIColor(rgb:0x581c87)
    ]
    
    public static var purple: [Int: UIColor] {
        return purpleShades
    }
    
    
    //VIOLET SHADES
    private static let violetShades: [Int:UIColor] = [
        50: UIColor(rgb: 0xf5f3ff),
        100: UIColor(rgb: 0xede9fe),
        200: UIColor(rgb: 0xddd6fe),
        300: UIColor(rgb: 0xc4b5fd),
        400: UIColor(rgb: 0xa78bfa),
        500: UIColor(rgb: 0x8b5cf6),
        600: UIColor(rgb: 0x7c3aed),
        700: UIColor(rgb: 0x6d28d9),
        800: UIColor(rgb: 0x5b21b6),
        900: UIColor(rgb: 0x4c1d95),
    ]
    
    public static var violet: [Int: UIColor] {
        return violetShades
    }
    
    
    //INDIGO SHADES
    private static let indigoShades: [Int:UIColor] = [
        50: UIColor(rgb: 0xeef2ff),
        100: UIColor(rgb: 0xe0e7ff),
        200: UIColor(rgb: 0xc7d2fe),
        300: UIColor(rgb: 0xa5b4fc),
        400: UIColor(rgb: 0x818cf8),
        500: UIColor(rgb: 0x6366f1),
        600: UIColor(rgb: 0x4f46e5),
        700: UIColor(rgb: 0x4338ca),
        800: UIColor(rgb: 0x3730a3),
        900: UIColor(rgb: 0x312e81),
        
    ]
    
    public static var indigo: [Int: UIColor] {
        return indigoShades
    }
    
    
    
    
    
    // BLUE SHADES
    private static let blueShades: [Int:UIColor] = [
        50: UIColor(rgb:0xeff6ff),
        100: UIColor(rgb:0xdbeafe),
        200: UIColor(rgb:0xbfdbfe),
        300: UIColor(rgb:0x93c5fd),
        400: UIColor(rgb:0x60a5fa),
        500: UIColor(rgb:0x3b82f6),
        600: UIColor(rgb:0x2563eb),
        700: UIColor(rgb:0x1d4ed8),
        800: UIColor(rgb:0x1e40af),
        900: UIColor(rgb:0x1e3a8a),
    ]
    
    public static var blue: [Int: UIColor] {
        return blueShades
    }
    
    // LIGHTBLUE SHADES
    private static let lightBlueShades: [Int:UIColor] = [
        50: UIColor(rgb:0xf0f9ff),
        100: UIColor(rgb:0xe0f2fe),
        200: UIColor(rgb:0xbae6fd),
        300: UIColor(rgb:0x7dd3fc),
        400: UIColor(rgb:0x38bdf8),
        500: UIColor(rgb:0x0ea5e9),
        600: UIColor(rgb:0x0284c7),
        700: UIColor(rgb:0x0369a1),
        800: UIColor(rgb:0x075985),
        900: UIColor(rgb:0x0c4a6e),
    ]
    
    public static var lightBlue: [Int: UIColor] {
        return lightBlueShades
    }
    
    // DARKBLUE SHADES
    private static let darkBlueShades: [Int:UIColor] = [
        50: UIColor(rgb:0xdbf4ff),
        100: UIColor(rgb:0xaddbff),
        200: UIColor(rgb:0x7cc2ff),
        300: UIColor(rgb:0x4aa9ff),
        400: UIColor(rgb:0x1a91ff),
        500: UIColor(rgb:0x0077e6),
        600: UIColor(rgb:0x005db4),
        700: UIColor(rgb:0x004282),
        800: UIColor(rgb:0x002851),
        900: UIColor(rgb:0x000e21),
    ]
    
    public static var darkBlue: [Int: UIColor] {
        return darkBlueShades
    }
    
    // CYAN SHADES
    private static let cyanShades: [Int:UIColor] = [
        50: UIColor(rgb: 0xecfeff),
        100: UIColor(rgb: 0xcffafe),
        200: UIColor(rgb: 0xa5f3fc),
        300: UIColor(rgb: 0x67e8f9),
        400: UIColor(rgb: 0x22d3ee),
        500: UIColor(rgb: 0x06b6d4),
        600: UIColor(rgb: 0x0891b2),
        700: UIColor(rgb: 0x0e7490),
        800: UIColor(rgb: 0x155e75),
        900: UIColor(rgb: 0x164e63),
    ]
    
    public static var cyan: [Int: UIColor] {
        return cyanShades
    }
    
    // TEAL SHADES
    private static let tealShades: [Int:UIColor] = [
        50: UIColor(rgb:0xf0fdfa),
        100: UIColor(rgb:0xccfbf1),
        200: UIColor(rgb:0x99f6e4),
        300: UIColor(rgb:0x5eead4),
        400: UIColor(rgb:0x2dd4bf),
        500: UIColor(rgb:0x14b8a6),
        600: UIColor(rgb:0x0d9488),
        700: UIColor(rgb:0x0f766e),
        800: UIColor(rgb:0x115e59),
        900: UIColor(rgb:0x134e4a),
    ]
    
    public static var teal: [Int: UIColor] {
        return tealShades
    }
    
    // EMERALD SHADES
    private static let emeraldShades: [Int:UIColor] = [
        50: UIColor(rgb: 0xecfdf5),
        100: UIColor(rgb: 0xd1fae5),
        200: UIColor(rgb: 0xa7f3d0),
        300: UIColor(rgb: 0x6ee7b7),
        400: UIColor(rgb: 0x34d399),
        500: UIColor(rgb: 0x10b981),
        600: UIColor(rgb: 0x059669),
        700: UIColor(rgb: 0x047857),
        800: UIColor(rgb: 0x065f46),
        900: UIColor(rgb: 0x064e3b),
    ]
    
    public static var emerald: [Int: UIColor] {
        return emeraldShades
    }
    
    // GREEN SHADES
    private static let greenShades: [Int:UIColor] = [
        50: UIColor(rgb: 0xf0fdf4),
        100: UIColor(rgb: 0xdcfce7),
        200: UIColor(rgb: 0xbbf7d0),
        300: UIColor(rgb: 0x86efac),
        400: UIColor(rgb: 0x4ade80),
        500: UIColor(rgb: 0x22c55e),
        600: UIColor(rgb: 0x16a34a),
        700: UIColor(rgb: 0x15803d),
        800: UIColor(rgb: 0x166534),
        900: UIColor(rgb: 0x14532d),
    ]
    
    public static var green: [Int: UIColor] {
        return greenShades
    }
    
    //LIME SHADES
    private static let limeShades: [Int:UIColor] = [
        50: UIColor(rgb:0xf7fee7),
        100: UIColor(rgb:0xecfccb),
        200: UIColor(rgb:0xd9f99d),
        300: UIColor(rgb:0xbef264),
        400: UIColor(rgb:0xa3e635),
        500: UIColor(rgb:0x84cc16),
        600: UIColor(rgb:0x65a30d),
        700: UIColor(rgb:0x4d7c0f),
        800: UIColor(rgb:0x3f6212),
        900: UIColor(rgb:0x365314),
    ]
    
    public static var lime: [Int: UIColor] {
        return limeShades
    }
    
    //YELLOW SHADES
    private static let yellowShades: [Int:UIColor] = [
        50: UIColor(rgb: 0xfefce8),
        100: UIColor(rgb: 0xfef9c3),
        200: UIColor(rgb: 0xfef08a),
        300: UIColor(rgb: 0xfde047),
        400: UIColor(rgb: 0xfacc15),
        500: UIColor(rgb: 0xeab308),
        600: UIColor(rgb: 0xca8a04),
        700: UIColor(rgb: 0xa16207),
        800: UIColor(rgb: 0x854d0e),
        900: UIColor(rgb: 0x713f12),
    ]
    
    public static var yellow: [Int: UIColor] {
        return yellowShades
    }
    
    //AMBER SHADES
    private static let amberShades: [Int:UIColor] = [
        50: UIColor(rgb: 0xfffbeb),
        100: UIColor(rgb: 0xfef3c7),
        200: UIColor(rgb: 0xfde68a),
        300: UIColor(rgb: 0xfcd34d),
        400: UIColor(rgb: 0xfbbf24),
        500: UIColor(rgb: 0xf59e0b),
        600: UIColor(rgb: 0xd97706),
        700: UIColor(rgb: 0xb45309),
        800: UIColor(rgb: 0x92400e),
        900: UIColor(rgb: 0x78350f),
    ]
    
    public static var amber: [Int: UIColor] {
        return amberShades
    }
    
    
    //ORANGE SHADES
    private static let orangeShades: [Int:UIColor] = [
        50: UIColor(rgb: 0xfff7ed),
        100: UIColor(rgb: 0xffedd5),
        200: UIColor(rgb: 0xfed7aa),
        300: UIColor(rgb: 0xfdba74),
        400: UIColor(rgb: 0xfb923c),
        500: UIColor(rgb: 0xf97316),
        600: UIColor(rgb: 0xea580c),
        700: UIColor(rgb: 0xc2410c),
        800: UIColor(rgb: 0x9a3412),
        900: UIColor(rgb: 0x7c2d12),
    ]
    
    public static var orange: [Int: UIColor] {
        return orangeShades
    }
    
    
    //RED SHADES
    private static let redShades: [Int:UIColor] = [
        50 : UIColor(rgb: 0xfef2f2),
        100 : UIColor(rgb: 0xfee2e2),
        200 : UIColor(rgb: 0xfecaca),
        300 : UIColor(rgb: 0xfca5a5),
        400 : UIColor(rgb: 0xf87171),
        500 : UIColor(rgb: 0xef4444),
        600 : UIColor(rgb: 0xdc2626),
        700 : UIColor(rgb: 0xb91c1c),
        800 : UIColor(rgb: 0x991b1b),
        900 : UIColor(rgb: 0x7f1d1d),
    ]
    
    public static var red: [Int: UIColor] {
        return redShades
    }
    
    //WARMGRAY SHADES
    private static let warmGrayShades: [Int:UIColor] = [
        50: UIColor(rgb: 0xfafaf9),
        100: UIColor(rgb: 0xf5f5f4),
        200: UIColor(rgb: 0xe7e5e4),
        300: UIColor(rgb: 0xd6d3d1),
        400: UIColor(rgb: 0xa8a29e),
        500: UIColor(rgb: 0x78716c),
        600: UIColor(rgb: 0x57534e),
        700: UIColor(rgb: 0x44403c),
        800: UIColor(rgb: 0x292524),
        900: UIColor(rgb: 0x1c1917),
    ]
    
    public static var warmGray: [Int: UIColor] {
        return warmGrayShades
    }
    
    //TRUEGRAY SHADES
    private static let trueGrayShades: [Int:UIColor] = [
        50: UIColor(rgb: 0xfafafa),
        100: UIColor(rgb: 0xf5f5f5),
        200: UIColor(rgb: 0xe5e5e5),
        300: UIColor(rgb: 0xd4d4d4),
        400: UIColor(rgb: 0xa3a3a3),
        500: UIColor(rgb: 0x737373),
        600: UIColor(rgb: 0x525252),
        700: UIColor(rgb: 0x404040),
        800: UIColor(rgb: 0x262626),
        900: UIColor(rgb: 0x171717),
    ]
    
    public static var trueGray: [Int: UIColor] {
        return trueGrayShades
    }
    
    //GRAY SHADES
    private static let grayShades: [Int:UIColor] = [
        50: UIColor(rgb: 0xfafafa),
        100: UIColor(rgb: 0xf4f4f5),
        200: UIColor(rgb: 0xe4e4e7),
        300: UIColor(rgb: 0xd4d4d8),
        400: UIColor(rgb: 0xa1a1aa),
        500: UIColor(rgb: 0x71717a),
        600: UIColor(rgb: 0x52525b),
        700: UIColor(rgb: 0x3f3f46),
        800: UIColor(rgb: 0x27272a),
        900: UIColor(rgb: 0x18181b),
    ]
    
    public static var gray: [Int: UIColor] {
        return grayShades
    }
    
    //COOLGRAY SHADES
    private static let coolGrayShades: [Int:UIColor] = [
        50: UIColor(rgb: 0xf9fafb),
        100: UIColor(rgb: 0xf3f4f6),
        200: UIColor(rgb: 0xe5e7eb),
        300: UIColor(rgb: 0xd1d5db),
        400: UIColor(rgb: 0x9ca3af),
        500: UIColor(rgb: 0x6b7280),
        600: UIColor(rgb: 0x4b5563),
        700: UIColor(rgb: 0x374151),
        800: UIColor(rgb: 0x1f2937),
        900: UIColor(rgb: 0x111827),
    ]
    
    public static var coolGray: [Int: UIColor] {
        return coolGrayShades
    }
    
    //BLUEGRAY SHADES
    private static let blueGrayShades: [Int:UIColor] = [
        50: UIColor(rgb: 0xf8fafc),
        100: UIColor(rgb: 0xf1f5f9),
        200: UIColor(rgb: 0xe2e8f0),
        300: UIColor(rgb: 0xcbd5e1),
        400: UIColor(rgb: 0x94a3b8),
        500: UIColor(rgb: 0x64748b),
        600: UIColor(rgb: 0x475569),
        700: UIColor(rgb: 0x334155),
        800: UIColor(rgb: 0x1e293b),
        900: UIColor(rgb: 0x0f172a),
    ]
    
    public static var blueGray: [Int: UIColor] {
        return blueGrayShades
    }
    
    //DARK SHADES
    private static let darkShades: [Int:UIColor] = [
        50: UIColor(rgb: 0x18181b),
        100: UIColor(rgb: 0x27272a),
        200: UIColor(rgb: 0x3f3f46),
        300: UIColor(rgb: 0x52525b),
        400: UIColor(rgb: 0x71717a),
        500: UIColor(rgb: 0xa1a1aa),
        600: UIColor(rgb: 0xd4d4d8),
        700: UIColor(rgb: 0xe4e4e7),
        800: UIColor(rgb: 0xf4f4f5),
        900: UIColor(rgb: 0xfafafa),
    ]
    
    public static var dark: [Int: UIColor] {
        return darkShades
    }
    
    //TEXT SHADES
    private static let textShades: [Int:UIColor] = [
        50: UIColor(rgb: 0xfafafa),
        100: UIColor(rgb: 0xf5f5f5),
        200: UIColor(rgb: 0xe5e5e5),
        300: UIColor(rgb: 0xd4d4d4),
        400: UIColor(rgb: 0xa3a3a3),
        500: UIColor(rgb: 0x737373),
        600: UIColor(rgb: 0x525252),
        700: UIColor(rgb: 0x404040),
        800: UIColor(rgb: 0x262626),
        900: UIColor(rgb: 0x171717),
    ]
    
    public static var text: [Int: UIColor] {
        return textShades
    }
    
    
    // MARK: Derived Colors
    //DANGER
    public static var danger: [Int:UIColor]{
        return rose
    }
    
    //ERROR
    public static var error: [Int:UIColor]{
        return red
    }
    
    //SUCCESS
    public static var success: [Int:UIColor]{
        return green
    }
    
    //WARNING
    public static var warning: [Int:UIColor]{
        return orange
    }
    
    //MUTED
    public static var muted: [Int:UIColor]{
        return trueGray
    }
    
    //PRIMARY
    public static var primary: [Int:UIColor]{
        return cyan
    }
    
    //SECONDARY
    public static var secondary: [Int:UIColor]{
        return pink
    }
    
    // TERTIARY
    public static var tertiary: [Int:UIColor]{
        return emerald
    }
    
    //INFO
    public static var info: [Int:UIColor]{
        return lightBlue
    }
    
    //LIGHT
    public static var light: [Int:UIColor]{
        return warmGray
    }
    
    
}





extension UIColor {
   convenience init(red: Int, green: Int, blue: Int) {
       assert(red >= 0 && red <= 255, "Invalid red component")
       assert(green >= 0 && green <= 255, "Invalid green component")
       assert(blue >= 0 && blue <= 255, "Invalid blue component")

       self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
   }

   convenience init(rgb: Int) {
       self.init(
           red: (rgb >> 16) & 0xFF,
           green: (rgb >> 8) & 0xFF,
           blue: rgb & 0xFF
       )
   }
}




