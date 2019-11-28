//
//  LeftSideMenuController.swift
//  NavigationControllerDemo
//
//  Created by Dheeraj Arora on 14/08/19.
//  Copyright © 2019 Dheeraj Arora. All rights reserved.
//

import UIKit

class LeftSideMenuController: UIViewController {

    var menuItem :[String] = ["Main","About"]
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
}
extension LeftSideMenuController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItem.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as! TableViewCell
        cell.titleName.text = menuItem[indexPath.row]
        return cell
    }
    
    
}
extension LeftSideMenuController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let centerViewController = self.storyboard!.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
            let centerNavController = UINavigationController(rootViewController: centerViewController)
            let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
            appDelegate.centerContainer!.centerViewController = centerNavController
            appDelegate.centerContainer!.toggle(MMDrawerSide.left, animated: true, completion: nil)
            
        case 1:
            let aboutViewController = self.storyboard!.instantiateViewController(withIdentifier: "AboutViewController") as! AboutViewController
            let aboutNavController = UINavigationController(rootViewController: aboutViewController)
            let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
            appDelegate.centerContainer!.centerViewController = aboutNavController
            appDelegate.centerContainer!.toggle(MMDrawerSide.left, animated: true, completion: nil)
        default:
            print("\(menuItem[indexPath.row]) is Selected")
        }
    }
}
