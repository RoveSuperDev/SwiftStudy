//
//  ViewController.swift
//  SwiftDemo01
//
//  Created by rsddev on 2022/11/19.
//

import UIKit
import SnapKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var tableView: UITableView?
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
    }
    
    func setupView()
    {
        self.tableView = UITableView()
        self.tableView?.register(UINib.init(nibName: "DemoCell", bundle: nil), forCellReuseIdentifier: "cell")
        self.view.addSubview(self.tableView!)
        self.tableView?.snp.makeConstraints({ make in
            make.edges.equalTo(self.view)
        })
        self.tableView?.dataSource = self
        self.tableView?.delegate = self
//        self.tableView?.rowHeight = 74
        self.tableView?.reloadData()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! DemoCell
        
        cell.nameLabel?.text = String(indexPath.row)
        cell.contentLabel?.text = "哈哈哈哈哈哈哈哈哈哈哈哈啊哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈啊哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈啊哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈啊哈哈哈哈哈"
        cell.dateLabel?.text = "2022-12-12"
        return cell
    }
    
    
    
}



extension UIViewController{
    
    class func objectForXib() -> Self {
        
        let className = NSStringFromClass(Self.self)
        return Self.init(nibName: className, bundle: nil)
    }
    
    
}
