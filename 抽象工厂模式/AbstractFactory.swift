//
//  AbstractFactory.swift
//  抽象工厂模式
//
//  Created by menghao on 2023/4/29.
//

import Foundation
import UIKit


protocol BaseCellAbstractFactory {
    func createCell(model: CellModel, tableView: UITableView, indexPath: IndexPath) -> BaseAbstractCell?
}

