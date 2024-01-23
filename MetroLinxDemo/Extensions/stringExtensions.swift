//
//  stringExtensions.swift
//  MetroLinxDemo
//
//  Created by sriharsha.machani on 22/01/24.
//

import Foundation
import Foundation
import UIKit

extension Int {
    var toStr:String?{
        get{
            return String(self)
        }
    }
}
extension Double {
    var toStr:String?{
        get{
            return String(self)
        }
    }
}

extension String {
    
    var toInt:Int?{
        get{
            return Int(self)
        }
    }
    var toColor:UIColor?{
        get{
            return HexColor(self)
        }
    }
    var toStorybord:UIStoryboard?{
        get{
            return UIStoryboard(name: self, bundle: nil)
        }
    }
    
    var toUInt:UInt?{
        get{
            if let signed = Int(self) {
                let unsigned = signed >= 0 ?
                    UInt(signed) :
                    UInt(signed  - Int.min) + UInt(Int.max) + 1
                return unsigned
            }else{
                return nil
            }
        }
    }
    var toDouble:Double?{
        get{
            return Double(self)
        }
    }
    
    var toFloat:Float?{
        get{
            return Float(self)
        }
    }
    
    
//    var formatToCurrency :String? {
//        get {
//            return formatCurrency(curencyCode: "USD")
//        }
//    }
    
    var getOnlyDigits:String?{
        get {
            return self.components(separatedBy: CharacterSet(charactersIn: "1234567890.").inverted).joined()
        }
    }
    
    var toBool:Bool?{
        get{
            return "true" == self ?  true : false
        }
    }
    
    var image: UIImage?{
        get{
            return UIImage(named: self)
        }
        
    }
    var url:URL?{
        get{
            return URL(string:self)
        }
    }
        
}
