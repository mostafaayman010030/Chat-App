//
//  CreateAccount.swift
//  Fdfada
//
//  Created by Moustafa on 10/28/19.
//  Copyright © 2019 Moustafa Ayman Ahmed. All rights reserved.
//

import UIKit

class CreateAccount: UIViewController {

    @IBOutlet weak var username: TextField!
    @IBOutlet weak var email: TextField!
    @IBOutlet weak var password: TextField!
    @IBOutlet weak var photo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func ChooseCharacter(_ sender: Any) {
    }
    
    
    @IBAction func bgcolor(_ sender: Any) {
    }
    
    @IBAction func CreateAccountfunc(_ sender: Any) {
        
        guard let emailin=email.text , email.text != ""  else{ return}
        
        guard let pass=password.text , password.text != ""  else {return}
        
        AuthService.instance.register(email: emailin, password: pass) { (secces) in
            if secces
            {
                print("register done")
            }
            else
            {
                print("error in register")
            }
        }
    }
    
}
