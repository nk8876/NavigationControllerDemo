//
//  HomeViewController.swift
//  NavigationControllerDemo
//
//  Created by Dheeraj Arora on 14/08/19.
//  Copyright © 2019 Dheeraj Arora. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnLeftSideTappedMenuAction(_ sender: UIBarButtonItem) {
        let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.centerContainer!.toggle(MMDrawerSide.left, animated: true, completion: nil)
    }
    

}
