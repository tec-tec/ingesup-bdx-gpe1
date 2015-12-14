//
//  RestaurantsTableViewController.swift
//  Restos
//
//  Created by Ludovic Ollagnier on 01/12/2015.
//  Copyright © 2015 Tec-Tec. All rights reserved.
//

import UIKit

class RestaurantsTableViewController: UITableViewController {

    let restaurantMananger = RestaurantManager()

    override func viewDidLoad() {
        super.viewDidLoad()

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

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return restaurantMananger.allRestaurants.count
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("RestoCell", forIndexPath: indexPath)

        // Configure the cell...

        cell.textLabel?.text = restaurantMananger.allRestaurants[indexPath.row].name
        cell.detailTextLabel?.text = restaurantMananger.allRestaurants[indexPath.row].address

        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.

        if segue.identifier == "showForm" {
            let nextVC = segue.destinationViewController as! ViewController
//            nextVC.color = UIColor.blueColor()
        }

        else if segue.identifier == "showDetails" {

            print("Not yet implemented")
        }

    }


}
