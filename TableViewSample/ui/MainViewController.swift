//
//  MainViewController.swift
//  TableViewSample
//
//  Created by Ryo Nishiha on 2019/06/29.
//  Copyright © 2019 masaibar. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!

    var presenter: MainPresenterImpl!

    var dataList: [String] = ["plane1", "plane2"]

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = MainPresenterImpl(view: self)
        presenter.getData()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("selected: \(indexPath.row)")
    }
}

extension MainViewController : MainView {
    func setupContent() {
        dataList.append("added")
        tableView.reloadData()
    }
}
