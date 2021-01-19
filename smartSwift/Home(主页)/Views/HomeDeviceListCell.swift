//
//  HomeDeviceListCell.swift
//  smartSwift
//
//  Created by abovelink on 2020/12/4.
//

import UIKit

class HomeDeviceListCell: UITableViewCell {
    var name : String {
        willSet {
            print("==== \(newValue)")
        }
        didSet {
            print("=== \(oldValue)")
        }
    }
    
    var title: String {
        get {
            return "Mr" + name
        }
    }
    
    var subtitle: String {
        return "jajja"
    }
    
    var model: HomeDeviceListModel?
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        self.name = ""
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.buildSubview()
    }
    
    
    func buildSubview() {
        self.backgroundColor = .gray
        
        let labelTitle = UILabel()
        self.addSubview(labelTitle)
        labelTitle.text = "这是文字"
        labelTitle.sizeToFit()
        labelTitle.snp_makeConstraints { (make) in
            make.centerY.equalTo(self)
            make.left.equalTo(self).offset(20)
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
