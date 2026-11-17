//
//  TableViewController.swift
//  tableView
//
//  Created by Askhat on 31.10.2026.
//

import UIKit

class TableViewController: UITableViewController {
    
    // var array = ["1", "2", "3", "4", "5"]
//    var arrayNames = ["Alan", "Alice", "Corey", "Elizabeth", "Sara"]
//    var arraySurname = ["Tudyk", "Wetterlund", "Reynolds", "Bowen", "Tomko"]
//    var arrayImages = ["alan", "alice", "corey", "elizabeth", "sara"]
     
    var arrayPerson = [Person(name: "Alan", surname: "Tudyk", image: "alan"),
        Person(name: "Alice", surname: "Wetterlund", image: "alice"),
        Person(name: "Corey", surname: "Reynolds", image: "corey"),
        Person(name: "Elizabeth", surname: "Bowen", image: "elizabeth")]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    
    @IBAction func addPerson(_ sender: Any) {
        
        arrayPerson.append(Person(name: "Username", surname: "Usersurname", image: "avatar"))
        
        tableView.reloadData()
        
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayPerson.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row % 2 == 0
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1", for: indexPath)

            // Configure the cell...
            
            let label = cell.viewWithTag(1001) as! UILabel
            label.text = arrayPerson[indexPath.row].name
            
            let labelSurname = cell.viewWithTag(1002) as! UILabel
            labelSurname.text = arrayPerson[indexPath.row].surname

            let imageView = cell.viewWithTag(1003) as! UIImageView
            imageView.image =  UIImage(named: arrayPerson[indexPath.row].image)
             

            return cell
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell2", for: indexPath)

        // Configure the cell...
        
        let label = cell.viewWithTag(1001) as! UILabel
        label.text = arrayPerson[indexPath.row].name
        
        let labelSurname = cell.viewWithTag(1002) as! UILabel
        labelSurname.text = arrayPerson[indexPath.row].surname

        let imageView = cell.viewWithTag(1003) as! UIImageView
        imageView.image =  UIImage(named: arrayPerson[indexPath.row].image)
         

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 77
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         
        let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        
        vc.person = arrayPerson[indexPath.row]
        
        navigationController?.show(vc, sender: self)
        
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            
            arrayPerson.remove(at: indexPath.row )
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

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
