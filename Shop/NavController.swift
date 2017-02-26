//
//  NavController.swift
//  Shop
//
//  Created by Митрошка on 26.02.17.
//  Copyright © 2017 dimmy.pro. All rights reserved.
//

import UIKit

class NavController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        var button = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem., target: self, action: "someAction")
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    func addCartButton(at viewController: UIViewController)
    {
        let button = UIBarButtonItem(title: "Заказ", style: UIBarButtonItemStyle.plain, target: viewController, action: #selector(NavController.cartClicked))
        
        viewController.navigationItem.rightBarButtonItem = button
    }
    
    
    
    
    func cartClicked(sender: UIBarButtonItem)
    {
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
