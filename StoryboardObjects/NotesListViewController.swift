//
//  NotesListViewController.swift
//  StoryboardObjects
//
//  Created by Damian Esteban on 10/27/16.
//  Copyright © 2016 Damian Esteban. All rights reserved.
//

import UIKit


class NotesListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet var dataProvider: UITableViewDataSource & UITableViewDelegate!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = dataProvider
        tableView.delegate = dataProvider
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
