//
//  ViewController.swift
//  collectionANDTbl
//
//  Created by macbook on 22/03/2021.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
        tableView.tableFooterView = UIView()
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    return "Section Title \(section)"
    }
    override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
    return 5
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 1
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 200 //or whatever you need
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    if let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as? TableViewCell
    {
    return cell
    }
    return UITableViewCell()
    }

}

