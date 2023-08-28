//
//  SettingsSplitViewController.swift
//  TestApp
//
//  Created by Sridhar Rajagopal on 8/27/23.
//

import UIKit

class SettingsSplitViewController: UISplitViewController, UISplitViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        delegate = self
        
        let detailViewController =
          (self.viewControllers.last as? SettingsSecondaryNavigationViewController)
        
        let primaryViewController =
          (self.viewControllers.first as? UINavigationController)?
            .topViewController as? RootSettingsViewController
        
        primaryViewController!.delegate = detailViewController!

        preferredDisplayMode = UISplitViewController.DisplayMode.oneBesideSecondary
    }
    
    func splitViewController(
        _ splitViewController: UISplitViewController,
        collapseSecondary secondaryViewController: UIViewController,
        onto primaryViewController: UIViewController
    ) -> Bool {
        
        return true
    }
    
}
