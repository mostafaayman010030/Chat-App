//
//  TextField.swift
//  Fdfada
//
//  Created by Moustafa on 10/28/19.
//  Copyright © 2019 Moustafa Ayman Ahmed. All rights reserved.
//

import UIKit

class TextField: UITextField {

   override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView() {
        //backgroundColor = #colorLiteral(red: 0.9959436059, green: 0.9896478057, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        //textAlignment = .center
        
        //clipsToBounds = true
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }

}
