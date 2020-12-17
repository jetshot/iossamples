//
//  MyModuleNameRow.swift
//  my-reusable-sections
//
//  Created by My Macbook Pro on 12/17/20.
//

import UIKit
struct MyModuleNameRow: Section {
    let numberOfItems: Int = 4
    
    var items: [MyModuleNameModel] = [
        MyModuleNameModel(title: "Title 1", subTitle: "Subtitle 1"),
        
        MyModuleNameModel(title: "Title 2 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", subTitle: "Subtitle 2"),
        
        MyModuleNameModel(title: "Title 3", subTitle: "Subtitle 3 Justo nec ultrices dui sapien. Molestie ac feugiat sed lectus vestibulum. Penatibus et magnis dis parturient montes nascetur. "),
        
        MyModuleNameModel(title: "Title 4 Voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", subTitle: "Subtitle 4 Voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat"),
    ]
    
    func configureCell(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: MyModuleNameTableViewCell.self), for: indexPath) as! MyModuleNameTableViewCell
        
        let item = items[indexPath.row]
        cell.title = item.title
        cell.subTitle = item.subTitle
        
        return cell
    }
}


