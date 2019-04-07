//
//  ViewControllerAuth.swift
//  SwiftHelloMap
//
//  Created by Роман Лабунский on 06.04.2019.
//  Copyright © 2019 HERE. All rights reserved.
//

import UIKit

class ViewControllerAuth: UIViewController {
    // http://192.168.100.82:8080
    @IBOutlet weak var NumberLabel: UITextField!
    @IBOutlet weak var btn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //btn.isHidden = true
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func BtnAction(_ sender: UIButton) {
        if NumberLabel.text?.count != 11{
            btn.isEnabled = true
        }else{
            btn.isHidden = false
        }
        

        
    }
    @IBAction func CheckAuth(_ sender: Any) {
        if NumberLabel.text?.count != 11{
            btn.isEnabled = true
        }else{
            btn.isEnabled = false
        }
    }
    
}
