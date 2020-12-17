//
//  Section.swift
//  my-reusable-sections
//
//  Created by My Macbook Pro on 12/17/20.
//

import UIKit
//Section
protocol Section {
    var numberOfItems: Int { get }
    func configureCell(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell
}
