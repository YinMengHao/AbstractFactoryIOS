//
//  YellowCell.swift
//  抽象工厂模式
//
//  Created by menghao on 2023/4/29.
//

import Foundation
import UIKit

class YellowCell: UITableViewCell, BaseAbstractCell {
    func configureCell(_ model: CellModel) {
        self.textLabel?.text = model.string
        self.backgroundColor = .yellow
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
