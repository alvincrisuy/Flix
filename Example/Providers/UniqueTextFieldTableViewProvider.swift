//
//  UniqueTextFieldTableViewProvider.swift
//  Example
//
//  Created by DianQK on 04/10/2017.
//  Copyright © 2017 DianQK. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import Flix

open class UniqueTextFieldTableViewProvider: UniqueAnimatableTableViewProvider {

    open let textField = UITextField()
    
    open func onCreate(_ tableView: UITableView, cell: UITableViewCell, indexPath: IndexPath) {
        cell.selectionStyle = .none
        cell.contentView.addSubview(textField)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.leadingAnchor.constraint(equalTo: cell.contentView.leadingAnchor, constant: 15).isActive = true
        textField.topAnchor.constraint(equalTo: cell.contentView.topAnchor).isActive = true
        textField.trailingAnchor.constraint(equalTo: cell.contentView.trailingAnchor, constant: -15).isActive = true
        textField.bottomAnchor.constraint(equalTo: cell.contentView.bottomAnchor).isActive = true
    }
    
}
