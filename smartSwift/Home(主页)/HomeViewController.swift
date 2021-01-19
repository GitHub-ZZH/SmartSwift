//
//  HomeViewController.swift
//  smartSwift
//
//  Created by abovelink on 2020/11/23.
//

import UIKit

class HomeViewController: BaseViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .orange
        
        buildTableView()
    }
    
    func buildTableView() {
        
        let tableView = UITableView(frame: self.view.bounds, style: .grouped)
        self.view.addSubview(tableView)
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}

extension HomeViewController:UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "HomeDeviceListCell")
        if cell == nil {
            cell = HomeDeviceListCell(style: .default, reuseIdentifier: "HomeDeviceListCell")
        }
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
    }
}
