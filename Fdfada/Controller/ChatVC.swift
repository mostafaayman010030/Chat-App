//
//  ChatVC.swift
//  Fdfada
//
//  Created by Moustafa on 10/27/19.
//  Copyright © 2019 Moustafa Ayman Ahmed. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {

    @IBOutlet weak var menubtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
       //DispatchQueue.global().async {
            self.menubtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
            self.view.addGestureRecognizer((self.revealViewController()?.panGestureRecognizer())!)
            self.view.addGestureRecognizer((self.revealViewController()?.tapGestureRecognizer())!)
      // }
        
    }
    

}
