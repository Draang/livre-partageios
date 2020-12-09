//
//  ViewController.swift
//  Livre Partage ios
//
//  Created by Angel Contrers on 07/12/2020.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var tableView:UITableView!
    let api=Api() 
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate=self
        tableView.dataSource=self
        api.getLivresSearch("Lord of the rings"){
            (data) in
            print(data)
        }
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)-> Int{
        return 40
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
