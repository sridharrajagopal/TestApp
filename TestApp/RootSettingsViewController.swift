//
//  RootSettingsViewController.swift
//  TestApp
//
//  Created by Sridhar Rajagopal on 8/27/23.
//

import UIKit
import MessageUI

protocol RootSettingsViewControllerSelectionDelegate : AnyObject {
    func viewControllerSelected(_ vc: String)
}

class RootSettingsViewController: UITableViewController, MFMailComposeViewControllerDelegate {
    
    weak var delegate: RootSettingsViewControllerSelectionDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if (UIDevice.current.userInterfaceIdiom == .pad) {
            let indexPath = IndexPath(row: 0, section: 0)
            tableView.selectRow(at: indexPath, animated: true, scrollPosition: UITableView.ScrollPosition.top)
            tableView.delegate?.tableView!(tableView, didSelectRowAt: indexPath)
        }
    }
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if (indexPath.section == 2 && indexPath.row == 2)  {
            // emailUs()
        } else if (indexPath.section == 0 && indexPath.row == 0) {
            delegate?.viewControllerSelected("A")
        } else if (indexPath.section == 0 && indexPath.row == 1) {
            delegate?.viewControllerSelected("B")
        } else if (indexPath.section == 0 && indexPath.row == 2) {
            delegate?.viewControllerSelected("C")
        } 
        if let detailViewController = delegate as? SettingsSecondaryNavigationViewController {
            splitViewController?.showDetailViewController(detailViewController, sender: nil)
        }
    }
    
}
