//
//  UI_TableViewController.swift
//  CoureAboutMe
//
//  Created by SimonBabich on 25.09.2021.
//

import UIKit

class UI_TableViewController: UITableViewController {

    //var cities = [("Амстердам", "Нидерланды 🇳🇱")]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        if tblIndex == 2 {
            //Избранное
            cities = myCountries
            //settingsLabel.text = "Мои столицы: \(myCountries.count)шт."
            self.navigationItem.rightBarButtonItem = self.editButtonItem
        } else if tblIndex == 1 {
            //Столицы
            cities = cities1
            self.navigationItem.rightBarButtonItem = self.editButtonItem
        } else {
            //Страны
            cities = cities1.sorted {$0.1 < $1.1}
            //print("index \(tblIndex)")
        }

        // Uncomment the following line to preserve selection between presentations
        self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        //self.navigationItem.rightBarButtonItem = self.editButtonItem
        //self.title = "Столица / страна"
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return cities.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell01", for: indexPath)

        let currentCell = cities[indexPath.row]
        
        if tblIndex == 0 {
            cell.textLabel?.text = currentCell.1
            cell.detailTextLabel?.text = currentCell.0
        } else {
            cell.textLabel?.text = currentCell.0
            cell.detailTextLabel?.text = currentCell.1
        }
        
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = UIColor.systemYellow
        } else {
            cell.backgroundColor = UIColor.white
        }
        
        if currentCell.0 == "Москва" || currentCell.0 == "Амстердам" || currentCell.0 == "Багдад" {
            cell.imageView?.image = UIImage(systemName: "heart.fill")
            cell.backgroundColor = UIColor.systemGreen
        } else {
            cell.imageView?.image = UIImage(systemName: "heart")
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let currentCell = cities[indexPath.row]
        print(currentCell)
        
//        if indexPath.imageView?.image == UIImage(systemName: "minus") {
//            indexPath.imageView?.image = UIImage(systemName: "plus")
//            indexPath.backgroundColor = UIColor.systemGreen
//        } else {
//            indexPath.imageView?.image = UIImage(systemName: "minus")
//            indexPath.backgroundColor = UIColor.white
//        }
        
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        if tblIndex == 0 {
            return false
        } else {
            return true
        }
    }
    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            let delCity = cities.remove(at: indexPath.row)
            //cities.remove(at: indexPath.row)
            
            
            if tblIndex == 2 {
                // Избранное
                print(delCity)
            } else if tblIndex == 1 {
                cities1.remove(at: indexPath.row)
                myCountries.append(delCity)
            } else {
                //cities = cities1
                print("index \(tblIndex)")
            }
            
            
            
            tableView.deleteRows(at: [indexPath], with: .fade)
                        
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    

    
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
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
