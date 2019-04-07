//
//  ProfileViewController.swift
//  SwiftHelloMap
//
//  Created by Роман Лабунский on 07.04.2019.
//  Copyright © 2019 HERE. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var FIO: UILabel!
    @IBOutlet weak var profileSwich: UISwitch!
    
    
    @IBOutlet weak var labelVolanter: UILabel!
    @IBOutlet weak var RedyVolanterLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        FIO.text = "Иванов Иван Иванович"

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

    @IBAction func switchVolanter(_ sender: Any) {
        if profileSwich.isOn{
            labelVolanter.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            RedyVolanterLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        }else{
            labelVolanter.textColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
            RedyVolanterLabel.textColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        }
    }
    
    
    @IBAction func ExinButton(_ sender: Any) {
        let alertController = UIAlertController(title: "Выход", message: "Вы действительно хотите выйти?", preferredStyle: .actionSheet)
        
        let action = UIAlertAction(title: "Выйти", style: .default) { (action) in }
        
        
        alertController.addAction(action)
        self.present(alertController, animated: true, completion: nil)
    }
}
