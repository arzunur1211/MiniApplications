//
//  ViewController.swift
//  Application
//
//  Created by Aita Macbook on 9/5/24.
//

import UIKit

class ViewController: UITableViewController {
    var appList = MiniApps.getMiniAppslist()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
extension ViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return appList.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let app = appList[indexPath.row]
        cell.textLabel?.text = app.name
        return cell
       
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        120
    }
}
