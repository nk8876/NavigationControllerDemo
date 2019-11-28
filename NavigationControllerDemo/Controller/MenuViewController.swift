//
//  MenuViewController.swift
//  NavigationControllerDemo
//
//  Created by Dheeraj Arora on 31/08/19.
//  Copyright © 2019 Dheeraj Arora. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController,UITableViewDataSource, UITableViewDelegate{
    
     var arrName : [String] = ["1","2","3","4"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }

}
