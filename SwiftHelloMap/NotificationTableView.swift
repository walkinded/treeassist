//
//  NotificationTableView.swift
//  SwiftHelloMap
//
//  Created by Роман Лабунский on 06.04.2019.
//  Copyright © 2019 HERE. All rights reserved.
//

import UIKit

class NotificationTableView: UITableViewController {
    
    let NameOfTablet = ["Аспирин","Спазмалгон","Денол","Миг"]
    
    let TimeToPriem = ["1 раз в сутки","2 раза в сутки","2 раза в сутки","1 раз в сутки"]
    
    let NextPriem = ["След. прием в 20:00","След. прием в 20:00","След. прием в 20:00","След. прием в 20:00"]
    
    let ImagesNotif = "medicine.png"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return NameOfTablet.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Notification", for: indexPath) as! NotificationCell

        cell.ImageNotifCell.image = UIImage(named: ImagesNotif)
        cell.NameTablet.text = NameOfTablet[indexPath.row]
        cell.NotifDate.text = TimeToPriem[indexPath.row]
        cell.RepeatTable.text = NextPriem[indexPath.row]
        

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
}
