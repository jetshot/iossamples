//
//  SectionTitle.swift
//  my-reusable-sections
//
//  Created by My Macbook Pro on 12/17/20.
//
import UIKit

struct SectionTitle: Section {
    let numberOfItems = 1
    private let title: String
    
    init(title: String) {
        self.title = title
    }
    
    func configureCell(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: SectionTitleCell.self), for: indexPath) as! SectionTitleCell
        
        return cell
    }
}
