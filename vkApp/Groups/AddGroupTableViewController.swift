//
//  AddGroupTableViewController.swift
//  vkApp
//
//  Created by Alex Shader on 02.06.2020.
//  Copyright © 2020 shaderness. All rights reserved.
//

import UIKit

class AddGroupTableViewController: UITableViewController {
    
    var newGroups : [Group] = [
        Group(name: "Friends", avatar: "friends"),
        Group(name: "Family", avatar: "family"),
        Group(name: "Animals", avatar: "animals")
    ]
    
    override func numberOfSections(in tableView: UITableView) -> Int { 1 }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { newGroups.count }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "newGroupCell", for: indexPath) as! AddGroupTableViewCell
        let group = newGroups[indexPath.row]
        cell.groupNameLabel.text = group.name
        cell.avatarImageView.image = group.avatar
        return cell
    }
    
}
