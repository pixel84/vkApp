//
//  FriendsController.swift
//  vkApp
//
//  Created by Alex Shader on 03.06.2020.
//  Copyright © 2020 shaderness. All rights reserved.
//

import UIKit

class FriendsController: UITableViewController {
    
    var users: [User] = [
        User(name: "Alexander", surname: "Prokhorov", avatar: "alexp"),
        User(name: "Bip", surname: "Bip", avatar: "bip"),
        User(name: "Marina", surname: "Prokhorova", avatar: "lalka")
    ]

    override func numberOfSections(in tableView: UITableView) -> Int { 1 }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { users.count }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "friendCell", for: indexPath) as! FriendTableViewCell
        let user = users[indexPath.row]
        cell.friendLabel.text = "\(user.name) \(user.surname)"
        cell.photoView.image = user.avatar
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "photoAlbumSegue" {
            let photoAlbumVC = segue.destination as! PhotoAlbumController
            if let index = tableView.indexPathForSelectedRow {
                let user = users[index.row]
                photoAlbumVC.photos = user.photos
                photoAlbumVC.title = "\(user.name) \(user.surname)"
            }
        }
    }
}
