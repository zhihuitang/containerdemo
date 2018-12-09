//
//  LobbyViewController.swift
//  containerdemo
//
//  Created by Tang on 12/8/18.
//  Copyright © 2018 Tang. All rights reserved.
//

import UIKit

class LobbyViewController: UIViewController {
    var notificationViewController: NotificationViewController?
    var notificationTableViewController: NotificationTableViewController?

    override func viewDidLoad() {
        super.viewDidLoad()

        let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(insertNewObject(_:)))
        navigationItem.rightBarButtonItem = addButton
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? NotificationViewController {
            notificationViewController = vc
        }
        if let vc = segue.destination as? NotificationTableViewController {
            notificationTableViewController = vc
        }
    }
    
    @objc
    func insertNewObject(_ sender: Any) {
        let date = NSDate()
        notificationViewController?.insertNewObject(date)
        notificationTableViewController?.insertNewObject(date)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
