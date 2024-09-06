//
//  ViewControllerWithSelect.swift
//  Application
//
//  Created by Aita Macbook on 9/5/24.
//

import UIKit

class ViewControllerWithSelect: UITableViewController {
    var appList = MiniApps.getMiniAppslist()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       

        // Do any additional setup after loading the view.
    }

    

}
extension ViewControllerWithSelect {
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
        return UIScreen.main.bounds.height / 2
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let segueIdentifier: String
        switch indexPath.row {
        case 0:
            segueIdentifier = "showView1"
        case 1:
            segueIdentifier = "showView2"
        case 2:
            segueIdentifier = "showView3"
        case 3:
            segueIdentifier = "showView4"
        case 4:
            segueIdentifier = "showView5"
        case 5:
            segueIdentifier = "showView6"
        case 6:
            segueIdentifier = "showView7"
        case 7:
            segueIdentifier = "showView8"
        case 8:
            segueIdentifier = "showView9"
        default:
            segueIdentifier = "showView10"
        }
        self.performSegue(withIdentifier: segueIdentifier, sender: self)
    }
    }
