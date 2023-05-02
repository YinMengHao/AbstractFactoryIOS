//
//  ConcreteFactory.swift
//  抽象工厂模式
//
//  Created by menghao on 2023/4/29.
//

import Foundation
import UIKit

class BaseCellFactory: BaseCellAbstractFactory {
    
    func createCell(model: CellModel, tableView: UITableView, indexPath: IndexPath) -> BaseAbstractCell? {
        switch model.id {
        case "1":
            let cell =  tableView.dequeueReusableCell(withIdentifier: NSStringFromClass(YellowCell.self), for: indexPath) as! YellowCell
            cell.configureCell(model)
            return cell
        case "2":
            let cell =  tableView.dequeueReusableCell(withIdentifier: NSStringFromClass(GreenCell.self), for: indexPath) as! GreenCell
            cell.configureCell(model)
            return cell
        case "3":
            let cell =  tableView.dequeueReusableCell(withIdentifier: NSStringFromClass(RedCell.self), for: indexPath) as! RedCell
            cell.configureCell(model)
            return cell
        default:
            break
        }
        return nil
    }
    
}
