//
//  ViewController.swift
//  HSVisitorVC
//
//  Created by Harsh Tiwari on 05/09/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var HSVisitorTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        HSVisitorTableView.dataSource = self
        HSVisitorTableView.delegate = self
        
        HSVisitorTableView.separatorStyle = .none
        
        self.HSVisitorTableView.register(UINib(nibName: "HSVisitorTableViewCell", bundle: nil), forCellReuseIdentifier: "HSVisitorTableViewCell")
    }


}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = HSVisitorTableView.dequeueReusableCell(withIdentifier: "HSVisitorTableViewCell", for: indexPath) as! HSVisitorTableViewCell
        cell.selectionStyle = .none
        return cell
    }
    
    
}

