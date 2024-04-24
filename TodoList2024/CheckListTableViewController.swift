//
//  CheckListTableViewController.swift
//  TodoList2024
//
//  Created by Trakya6 on 18.03.2024.
//

import UIKit

class CheckListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

 
    }
    override func tableView(_ tableView:UITableView,numberOfRowsInSection section:Int ) -> Int{
        print("number of rows in section")
        return 100
    
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("Cell for row at \(indexPath.row)")
        let cell = tableView.dequeueReusableCell(withIdentifier: "CheckListItem",for: indexPath)
        let label = cell.viewWithTag(1000) as! UILabel
        
        if indexPath.row%5 == 0 {
            label.text = "walk the doog"
        }
        else if indexPath.row%5 == 1{
            label.text="brush my teeth"
        }
        else if indexPath.row%5 == 2{
            label.text="learn ios development"
        }
        else if indexPath.row%5 == 3{
            label.text="soccer practice"
        }
        else if indexPath.row%5 == 4{
            label.text="eat ice cream"
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let cell = tableView.cellForRow(at: indexPath)
        
        if(cell? .accessoryType == UITableViewCell.AccessoryType.none){
            cell?.accessoryType = .checkmark
        }
        //tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
   
}
