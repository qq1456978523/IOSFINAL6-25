//
//  LoverTableViewController.swift
//  IOSFINAL
//
//  Created by User16 on 2019/6/25.
//  Copyright © 2019 User16. All rights reserved.
//

import UIKit

class LoverTableViewController: UITableViewController {
    
    var lovers = [Lover]()
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        lovers.remove(at: indexPath.row)
        
        Lover.saveToFile(lovers: lovers)
        tableView.deleteRows(at: [indexPath], with: .automatic)
    }
    
    @IBAction func unwindToLoverTableView(segue: UIStoryboardSegue) {
        
        if let controller = segue.source as? EditLoverTableViewController, let lover = controller.lover {
            lovers.insert(lover, at: 0)
            
            Lover.saveToFile(lovers: lovers)
            
            let indexPath = IndexPath(row: 0, section: 0)
            tableView.insertRows(at: [indexPath], with: .automatic)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let lovers = Lover.readLoversFromFile() {
            self.lovers = lovers
        }
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return lovers.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "loverCell", for: indexPath) as! LoverTableViewCell
        
        let lover = lovers[indexPath.row]
        cell.nameLabel.text = lover.info
        let url = Lover.documentsDirectory.appendingPathComponent(lover.imageName).appendingPathExtension("jpg")
        cell.photoImageview.image = UIImage(contentsOfFile: url.path)
        
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
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
