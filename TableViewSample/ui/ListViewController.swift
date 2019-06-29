//
//  ListViewController.swift
//  TableViewSample
//
//  Created by Ryo Nishiha on 2019/06/29.
//  Copyright © 2019 masaibar. All rights reserved.
//

import UIKit

class ListViewController: UITableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        return cell
    }
}
