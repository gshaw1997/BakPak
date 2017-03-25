//
//  FeedVC.swift
//  BakPak
//
//  Created by User on 3/25/17.
//  Copyright © 2017 BakPak Edu. All rights reserved.
//

import UIKit

class FeedVC: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate{
    
    var user_major:String!
    var user_classification:String!
    
    var currentPosts = [Post]()
    var filteredPosts = [Post]()
    
    var searchMode = false;
    
    

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        searchBar.delegate = self
        
       let post1 = Post()
        post1.docTitle = "CS 230 Lecture notes"
        post1.tags = "#Computer Science, #Quiz Material"
        post1.postDate = "March 21, 2017"
        post1.docPreview = UIImage(named: "FB Button")
        
        currentPosts.append(post1)
        
        let post2 = Post()
        post2.docTitle = "Math 156 homework"
        post2.tags = "#Calculus, #Homework"
        post2.postDate = "March 21, 2017"
        currentPosts.append(post2)
        
        let post3 = Post()
        post3.docTitle = "CS 310 algorithms"
        post3.tags = "#Computer Science, #Algorithms"
        post3.postDate = "March 23, 2017"
        currentPosts.append(post3)
        
        let post4 = Post()
        post4.docTitle = "CPE 271 Exam Study Guide"
        post4.tags = "#Computer Engineering, #Exam Material"
        post4.postDate = "March 25, 2017"
        currentPosts.append(post4)
        

        // Do any additional setup after loading the view.
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if searchMode{
            return filteredPosts.count
        }
        
        return currentPosts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell", for: indexPath) as? PostCell{
            
            if searchMode{
                cell.configureCell(element: filteredPosts[indexPath.row])
            }else{
                cell.configureCell(element: currentPosts[indexPath.row])
            }
            
            return cell
        }else{
            
            return UITableViewCell()

        }
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        view.endEditing(true)
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchBar.text == nil || searchBar.text == ""{
            searchMode = false
            tableView.reloadData()
            view.endEditing(true)
        }else{
            searchMode = true
        }
        let lower = searchBar.text!.lowercased()
        filteredPosts = currentPosts.filter({$0.docTitle.range(of: lower) != nil})
        tableView.reloadData()
        
    }

}
