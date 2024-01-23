//
//  UIColorHelper.swift
//  MetroLinxDemo
//
//  Created by sriharsha.machani on 22/01/24.
//

import Foundation
import UIKit

func RGB(_ r: CGFloat, _ g: CGFloat? = nil, _ b: CGFloat? = nil, _ a: CGFloat = 1) -> UIColor {
    let g = g ?? r, b = b ?? r
    return UIColor(red: r/255, green: g/255, blue: b/255, alpha: a)
}

func HexColor(_ netHex:Int) -> UIColor {
    return UIColor(red: (netHex >> 16) & 0xff, green: (netHex >> 8) & 0xff, blue: netHex & 0xff)
}

func HexColor(_ hex:String , alpha:CGFloat = 1.0) -> UIColor {
    var cString:String = hex.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines as CharacterSet).uppercased()
    
    if (cString.hasPrefix("#")) {
        cString = cString.substring(from: cString.index(cString.startIndex, offsetBy: 1))
    }
    
    if ((cString.count) != 6) {
        return UIColor.gray
    }
    
    var rgbValue:UInt32 = 0
    Scanner(string: cString).scanHexInt32(&rgbValue)
    
    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: alpha
    )
}

extension UIColor {
    
    
    convenience init(r: Int, g: Int, b: Int, a: Float) {
        self.init(red: CGFloat(r)/255, green: CGFloat(g)/255, blue: CGFloat(b)/255, alpha: CGFloat(a) )
    }
    
    convenience init(r: Int, g: Int, b: Int) {
        self.init(red: CGFloat(r)/255, green: CGFloat(g)/255, blue: CGFloat(b)/255, alpha: CGFloat(1.0))
    }
    
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    
    public static func with(number:Int) -> UIColor {
        return UIColor(r: number , g: number, b: number, a: 1)
    }

    
    
    func as1PxImage() -> UIImage? {
        UIGraphicsBeginImageContext(CGSize(width: 1, height: 1))
        let ctx = UIGraphicsGetCurrentContext()
        self.setFill()
        ctx?.fill(CGRect(x: 0, y: 0, width: 1, height: 1))
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
    
    
    func add(overlay: UIColor) -> UIColor {
        var bgR: CGFloat = 0
        var bgG: CGFloat = 0
        var bgB: CGFloat = 0
        var bgA: CGFloat = 0
        
        var fgR: CGFloat = 0
        var fgG: CGFloat = 0
        var fgB: CGFloat = 0
        var fgA: CGFloat = 0
        
        self.getRed(&bgR, green: &bgG, blue: &bgB, alpha: &bgA)
        overlay.getRed(&fgR, green: &fgG, blue: &fgB, alpha: &fgA)
        
        let r = fgA * fgR + (1 - fgA) * bgR
        let g = fgA * fgG + (1 - fgA) * bgG
        let b = fgA * fgB + (1 - fgA) * bgB
        
        return UIColor(red: r, green: g, blue: b, alpha: 1.0)
    }
    
    
}
