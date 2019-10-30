//
//  LOGINVC.swift
//  Fdfada
//
//  Created by Moustafa on 10/28/19.
//  Copyright © 2019 Moustafa Ayman Ahmed. All rights reserved.
//

import UIKit

class LOGINVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title="LOGIN"
                

    }
   
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
