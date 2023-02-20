//
//  ViewController.swift
//  MovieList
//
//  Created by Jonathan Marcelo Peres on 20/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    let movieList = ["Godfather", "Godfather II", "Godfather III"]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        movieList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = movieList[indexPath.row]
        return cell
    }
}
