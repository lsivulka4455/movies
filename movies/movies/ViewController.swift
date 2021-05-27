//
//  ViewController.swift
//  movies
//
//  Created by user166485 on 3/4/21.
//  Copyright © 2021 SIVULKA. All rights reserved.
//

import UIKit
import SafariServices
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
     
    var movies = ["Star Wars Revenge of the Sith", "Harry Potter and the Goblet of Fire", "Cars", "Wreck it Ralph", "Toy Story","Star Wars The Empire Strikes Back", "Harry Potter and the Chamber of Secrets", "Harry Potter and the Deathly Hollows", "Star Wars The Rise of Skywalker", " Lemony Snicket's A Series of Unfortunate Events"]
    var ratings = ["4 Stars", "4 Stars", "4 Stars", "4 Stars", "5 Stars", "5 Stars", "5 Stars","4 Stars", "3 Stars", "3 Stars"]
   var trailers = ["https://www.youtube.com/watch?v=5UnjrG_N8hU", "https://www.youtube.com/watch?v=PFWAOnvMd1Q"," https://www.youtube.com/watch?v=SbXIj2T-_uk", "https://www.youtube.com/watch?v=87E6N7ToCxs", "https://www.youtube.com/watch?v=rNk1Wi8SvNc", "https://www.youtube.com/watch?v=JNwNXF9Y6kY", "https://www.youtube.com/watch?v=1bq0qff4iF8", "https://www.youtube.com/watch?v=_EC2tmFVNNE", "https://www.youtube.com/watch?v=8Qn_spdM5Zg", "https://www.youtube.com/watch?v=4ErlhM1NaZA"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
     
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "moiveCell")
        cell?.textLabel?.text = movies[indexPath.row]
        cell?.detailTextLabel?.text = ratings[indexPath.row]
        cell?.backgroundColor = UIColor.gray
        cell?.textLabel?.textColor = UIColor.green
        cell?.textLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        cell?.detailTextLabel?.textColor = UIColor.red
        cell?.detailTextLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        return cell!
    
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let url = URL(string: trailers[indexPath.row]) {
            let config = SFSafariViewController.Configuration()
            config.entersReaderIfAvailable = true

            let vc = SFSafariViewController(url: url, configuration: config)
            present(vc, animated: true)
        }
    }
    
    

}

