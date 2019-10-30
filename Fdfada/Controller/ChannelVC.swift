//
//  ChannelVC.swift
//  Fdfada
//
//  Created by Moustafa on 10/27/19.
//  Copyright © 2019 Moustafa Ayman Ahmed. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.revealViewController()?.rearViewRevealWidth=self.view.frame.size.width-55
    }
    @IBAction func backtochannel(back:UIStoryboardSegue){}
    


}
