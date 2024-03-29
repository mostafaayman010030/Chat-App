//
//  gradientcolor.swift
//  Fdfada
//
//  Created by Moustafa on 10/27/19.
//  Copyright © 2019 Moustafa Ayman Ahmed. All rights reserved.
//

import UIKit

@IBDesignable
class GradientView: UIView {
    
    @IBInspectable var topcolor:UIColor = UIColor.blue {
        
        didSet{
            self.setNeedsLayout()
        }
        
    }
    
    @IBInspectable var bottomcolor:UIColor = UIColor.green {
        didSet{
            self.setNeedsLayout()
        }
    }
    
    override func layoutSubviews() {
        let gradiantlayer = CAGradientLayer()
        gradiantlayer.colors=[topcolor.cgColor,bottomcolor.cgColor]
        gradiantlayer.startPoint=CGPoint(x: 0 , y: 1)
        gradiantlayer.endPoint=CGPoint(x: 1, y: 1)
        gradiantlayer.frame=self.bounds
        self.layer.insertSublayer(gradiantlayer, at: 0)
    }


}
