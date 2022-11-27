//
//  DemoCell.swift
//  SwiftDemo01
//
//  Created by rsddev on 2022/11/20.
//

import UIKit

class DemoCell: UITableViewCell {
    var nameLabel: UILabel?
    var contentLabel: UILabel?
    var dateLabel: UILabel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.setupView()
    }

    func setupView(){
        self.nameLabel = UILabel.init()
        self.contentLabel = UILabel.init()
        self.dateLabel = UILabel.init()
        self.contentLabel?.numberOfLines = 0
        self.contentView.addSubview(self.nameLabel!)
        self.contentView.addSubview(self.contentLabel!)
        self.contentView.addSubview(self.dateLabel!)
        self.nameLabel?.snp.makeConstraints({ make in
            make.left.equalTo(16)
            make.top.equalTo(10)
        })
        self.contentLabel?.snp.makeConstraints({ make in
            make.left.equalTo(self.contentView).offset(16)
            make.right.equalTo(self.contentView).offset(-16)
            make.top.equalTo(self.nameLabel!.snp_bottomMargin).offset(10)
        })
        
        self.dateLabel?.snp.makeConstraints({ make in
            make.left.equalTo(self.contentView).offset(16)
            make.right.equalTo(self.contentView).offset(-16)
            make.top.equalTo(self.contentLabel!.snp_bottomMargin).offset(10)
            make.bottom.equalTo(self.contentView.snp_bottomMargin).offset(-10)
        })
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
