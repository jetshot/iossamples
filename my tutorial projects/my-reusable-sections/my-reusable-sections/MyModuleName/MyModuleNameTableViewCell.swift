//
//  MyModuleNameTableViewCell.swift
//  my-reusable-sections
//
//  Created by My Macbook Pro on 12/17/20.
//

import UIKit

class MyModuleNameTableViewCell: UITableViewCell {
    @IBOutlet private var titleLabel: UILabel!
    @IBOutlet private var subTitleLabel: UILabel!
    
    var title: String? {
        didSet {
            titleLabel.text = title
        }
    }
    
    var subTitle: String? {
        didSet {
            subTitleLabel.text = subTitle
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
//         Initialization code
    }

//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
    
}
