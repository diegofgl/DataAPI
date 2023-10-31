//
//  ViewController.swift
//  DataAPI
//
//  Created by Diego Rodrigues on 31/10/23.
//

import UIKit

class HomeViewController: UIViewController {

    private let homeScreen = HomeScreen()
    private var post: [Post] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        view = homeScreen
        homeScreen.configTableViewProtocols(delegate: self, dataSource: self)

        PostViewModel.getPosts { [weak self] posts in 
            self?.post = posts
            DispatchQueue.main.async {
                self?.homeScreen.tableView.reloadData()
            }
        }
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return post.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as! CustomTableViewCell
        let post = post[indexPath.row]
        cell.setupHomeCell(data: post)
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
}
