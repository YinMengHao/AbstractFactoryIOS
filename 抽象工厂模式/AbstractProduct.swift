//
//  AbstractProduct.swift
//  抽象工厂模式
//
//  Created by menghao on 2023/4/29.
//

import Foundation
import UIKit

protocol BaseAbstractCell {
    func configureCell(_ model: CellModel) // 配置cell
}
