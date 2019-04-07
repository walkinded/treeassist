//
//  RatingViewController.swift
//  SwiftHelloMap
//
//  Created by Роман Лабунский on 07.04.2019.
//  Copyright © 2019 HERE. All rights reserved.
//

import UIKit

class RatingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let Name = ["Рома","Amal","Зарема","Айдер", "Ибраим"]
    
    let Score = ["50","50","50","50","50"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TopScore", for: indexPath) as! RatingTableViewCell
        
        cell.NameUser.text = Name[indexPath.row]
        cell.ScoreUser.text = Score[indexPath.row]
        
        return cell
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

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

}
