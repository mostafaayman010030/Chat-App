//
//  Button.swift
//  Fdfada
//
//  Created by Moustafa on 11/1/19.
//  Copyright © 2019 Moustafa Ayman Ahmed. All rights reserved.
//

import UIKit
@IBDesignable
class buttonconfig: UIButton {

    @IBInspectable var cornerrediousbtn:CGFloat=5.0{
        didSet{
            self.layer.cornerRadius=cornerrediousbtn
        }
    }
    
    
    
    override  func awakeFromNib() {
        self.setupview()
    }
    override func prepareForInterfaceBuilder() {
        self.prepareForInterfaceBuilder()
        self.setupview()
    }
   func setupview(){
       self.layer.cornerRadius=cornerrediousbtn
   }

}
