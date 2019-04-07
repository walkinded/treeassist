//
//  OrderBrasletVC.swift
//  SwiftHelloMap
//
//  Created by Роман Лабунский on 07.04.2019.
//  Copyright © 2019 HERE. All rights reserved.
//

import UIKit

class OrderBrasletVC: UIViewController {

    @IBOutlet weak var FIOTextField: UITextField!
    @IBOutlet weak var DateTextField: UITextField!
    @IBOutlet weak var PhoneTextField: UITextField!
    @IBOutlet weak var BloodTextField: UITextField!
    @IBOutlet weak var AllergicTextField: UITextField!
    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func TapAction(_ sender: Any) {
        FIOTextField.resignFirstResponder()
        DateTextField.resignFirstResponder()
        PhoneTextField.resignFirstResponder()
        BloodTextField.resignFirstResponder()
        AllergicTextField.resignFirstResponder()
    }

}
