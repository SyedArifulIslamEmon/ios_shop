//
//  NavController.swift
//  Shop
//
//  Created by Митрошка on 26.02.17.
//  Copyright © 2017 dimmy.pro. All rights reserved.
//

import UIKit

protocol ShowOrderProtocol{}

class NavController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
//        var button = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem., target: self, action: "someAction")
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    func addCartButton(at viewController: UIViewController)
    {
        let button = UIBarButtonItem(title: "Заказ", style: UIBarButtonItemStyle.plain, target: self, action: #selector(NavController.cartClicked))
        
        viewController.navigationItem.rightBarButtonItem = button
    }
    
    
    
    
    func cartClicked(sender: UIBarButtonItem)
    {
        
        //performSegue(withIdentifier: "showOrderSegue", sender: nil)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "orderController")
        
        self.pushViewController(vc, animated: true)
//        self.setViewControllers([vc], animated: true)
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

extension NavController : UINavigationControllerDelegate {
    
    
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        
        if viewController is ShowOrderProtocol {
            print("показываем кнопку заказа...")
            addCartButton(at: viewController)
        }
        
    }
}
