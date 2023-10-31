//
//  TabBarViewController.swift
//  TabBarExampleUIKit
//
//  Created by Jason Rich Darmawan Onggo Putra on 31/10/23.
//

import UIKit
import SwiftUI

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        UITabBar.appearance().barTintColor = .systemBackground
//        tabBar.tintColor = .label
        setupVCs()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func setupVCs() {
        let regulationV = RegulationPage()
        let regulationVC = UIHostingController(rootView: regulationV)
        
        let definitionV = DefinitionPage()
        let definitionVC = UIHostingController(rootView: definitionV)
        
        viewControllers = [
            createViewController(for: regulationVC, title: "Regulation", image: UIImage(systemName: "house")!),
            createViewController(for: definitionVC, title: "Definition", image: UIImage(systemName: "house")!)
        ]
    }

    fileprivate func createViewController(for rootViewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        let navController = UINavigationController(rootViewController: rootViewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image
        navController.navigationBar.prefersLargeTitles = true
        rootViewController.navigationItem.title = title
        return navController
    }
}
