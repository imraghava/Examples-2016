//
//  KAUITextField.swift
//  ibdesignable
//
//  Created by Kim Arnett on 11/4/16.
//  Copyright © 2016 karnett. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class KAUITextField: UITextField
{
    /*IBInspectable properties show up in storyboard*/
    @IBInspectable var padding: CGFloat = 5 //default value
    
    
    @IBInspectable var borderWidth: CGFloat = 2.0 { //2.0 is default border
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        /*Custom Properties here -- Consistent for every UITextField*/
        self.layer.borderWidth = self.borderWidth
        self.layer.borderColor = UIColor.green.cgColor
        self.layer.cornerRadius = 5.0
    }
    
    /*Because I'm adding padding, we mess with the bounds inset*/
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: padding, dy: padding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: padding, dy: padding)
    }
}
