//
//  ViewController.swift
//  抽象工厂模式
//
//  Created by menghao on 2023/4/29.
//

import UIKit

class ViewController: UIViewController {
    let modelArr: [CellModel] = [
        CellModel.init(id: "1", string: "aaaa"),
        CellModel.init(id: "2", string: "bbbb"),
        CellModel.init(id: "3", string: "vvvv")
    ]
    lazy var tableView: UITableView = {
        let tabV = UITableView(frame: self.view.bounds, style: .plain)
        tabV.delegate = self
        tabV.dataSource = self
        tabV.separatorStyle = .none
        tabV.rowHeight = 50
        tabV.register(YellowCell.self, forCellReuseIdentifier: NSStringFromClass(YellowCell.self))
        tabV.register(GreenCell.self, forCellReuseIdentifier: NSStringFromClass(GreenCell.self))
        tabV.register(RedCell.self, forCellReuseIdentifier: NSStringFromClass(RedCell.self))

        return tabV
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .red
        view.addSubview(tableView)
    }


}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modelArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = BaseCellFactory().createCell(model: modelArr[indexPath.row], tableView: tableView, indexPath: indexPath)
        
        return cell as? UITableViewCell ?? UITableViewCell()
    }
    
    
}

