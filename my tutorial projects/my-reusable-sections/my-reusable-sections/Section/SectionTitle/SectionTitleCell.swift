//
//  SectionTitleCell.swift
//  my-reusable-sections
//
//  Created by My Macbook Pro on 12/17/20.
//

import UIKit

final class SectionTitleCell: UITableViewCell {
    @IBOutlet private var titleLabel: UILabel!
    
    var title: String? {
        didSet {
            titleLabel.text = title
        }
    }
    
}
