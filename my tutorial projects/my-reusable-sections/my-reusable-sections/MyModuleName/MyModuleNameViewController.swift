//
//  MyModuleNameController.swift
//  my-reusable-sections
//
//  Created by My Macbook Pro on 12/17/20.
//
import UIKit
import Foundation
final class MyModuleNameViewController: UIViewController {
    lazy var sections: [Section] = [
        SectionTitle(title: "First Section"),
        MyModuleNameRow(),
    ]

    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero);
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = UITableView.automaticDimension
        tableView.separatorInset = .init(top: 0, left: 15, bottom: 0, right: 15)
        tableView.estimatedRowHeight = 50
        
        tableView.register(UINib(nibName: String(describing: SectionTitleCell.self), bundle: nil), forCellReuseIdentifier: String(describing: SectionTitleCell.self))
        tableView.register(UINib(nibName: String(describing: MyModuleNameTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: MyModuleNameTableViewCell.self))
        
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableView)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tableView.reloadData()
        setTableViewConstraints()
    }
    
    func setTableViewConstraints() {
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
}

extension MyModuleNameViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].numberOfItems
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var section = sections[indexPath.section].configureCell(tableView: tableView, indexPath: indexPath)
        if indexPath.section == 0 {
            (section as! SectionTitleCell).title = "Section 1 Title"
        } else {
            
        }
        
        return section
        
    }

}

extension MyModuleNameViewController: UITableViewDelegate {}
