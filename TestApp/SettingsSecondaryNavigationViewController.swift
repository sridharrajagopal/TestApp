//
//  SettingsSecondaryNavigationViewController.swift
//  TestApp
//
//  Created by Sridhar Rajagopal on 8/27/23.
//

import UIKit


class SettingsSecondaryNavigationViewController: UINavigationController {

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

extension SettingsSecondaryNavigationViewController: RootSettingsViewControllerSelectionDelegate {
    func viewControllerSelected(_ vc: String) {
        if (vc == "A") {
            let detailViewController = UIViewController()
            detailViewController.view.backgroundColor = .red
            self.viewControllers = [detailViewController]
        } else if (vc == "B") {
            let detailViewController = UIViewController()
            detailViewController.view.backgroundColor = .green
            self.viewControllers = [detailViewController]
            
        } else if (vc == "C") {
            let detailViewController = UIViewController()
            detailViewController.view.backgroundColor = .blue
            self.viewControllers = [detailViewController]
            
        } else if (vc == "D") {
            let detailViewController = UIViewController()
            detailViewController.view.backgroundColor = .purple
            self.viewControllers = [detailViewController]
            
        }
        
    }

}
