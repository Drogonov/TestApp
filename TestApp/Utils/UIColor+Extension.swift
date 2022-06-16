//
//  UIColor+Extension.swift
//  TestApp
//
//  Created by Anton Vlezko on 10.12.2021.
//

import UIKit
import SwiftUI

extension UIColor {
    static let backgroundColor = UIColor.systemBackground
    static let secondaryBackground = UIColor.secondarySystemBackground
    
    static let primaryTextColor = UIColor.label
    static let secondaryTextColor = UIColor.gray
    
    static let actionButtonTextColor = UIColor.systemBackground
    static let actionButtonBackgroundColor = UIColor.label
    
    static let accentColor = UIColor(rgb: 0xCFD4D9)
}

extension Color {
    static let backgroundColor = Color(UIColor.backgroundColor)
    static let secondaryBackground = Color(UIColor.secondaryBackground)
    
    static let primaryTextColor = Color(UIColor.primaryTextColor)
    static let secondaryTextColor = Color(UIColor.secondaryTextColor)
    
    static let accentColor = Color(UIColor.accentColor)
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
