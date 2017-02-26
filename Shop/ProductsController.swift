//
//  ProductsController.swift
//  Shop
//
//  Created by Митрошка on 19.02.17.
//  Copyright © 2017 dimmy.pro. All rights reserved.
//

import UIKit

class ProductsController: UITableViewController {
    
    // TODO: переделать передачу категории (через протокол)
    public var currentCategory = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        (self.navigationController as! NavController).addCartButton(at: self)
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Shop
            .shared
            .products
            .filter({ $0.cat == currentCategory })
            .count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath) as! ProductTableViewCell
        
        let product = Shop
            .shared
            .products
            .filter({ $0.cat == currentCategory })[indexPath.row]
        
        let ordered = Order
            .shared
            .products
            .filter({ $0 == product })
            .count
        
        cell.title.text = product.name + (ordered > 0 ? " (\(ordered))" : "")
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let product = Shop
            .shared
            .products
            .filter({ $0.cat == currentCategory })[indexPath.row]
        
        Order.shared.add(product: product)
        
        tableView.reloadData()
        
//        let cell = tableView.cellForRow(at: indexPath)!
//        cell.backgroundColor = UIColor(red: 0, green: 1, blue: 0, alpha: 0.5)
//        
//        
//        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 12, options: .curveLinear, animations: {
//            cell.backgroundColor = UIColor(red: 0, green: 1, blue: 0, alpha: 0.5)
//        }, completion: nil)
        
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
