//
//  ViewController.swift
//  TableViewExample
//
//  Created by Admin on 28/02/2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    let devCourses = [
        ("iOS App Dev with Swift Essential Training","Simon Allardice"),
        ("iOS 8 SDK New Features","Lee Brimelow"),
        ("Data Visualization with D3.js","Ray Villalobos"),
        ("Swift Essential Training","Simon Allardice"),
        ("Up and Running with AngularJS","Ray Villalobos"),
        ("MySQL Essential Training","Bill Weinman"),
        ("Building Adaptive Android Apps with Fragments","David Gassner"),
        ("Advanced Unity 3D Game Programming","Michael House"),
        ("Up and Running with Ubuntu Desktop Linux","Scott Simpson"),
        ("Up and Running with C","Dan Gookin") ]
    
    let webCourses = [
        ("HTML Essential Training","James Williamson"),
        ("Building a Responsive Single-Page Design","Ray Villalobos"),
        ("Muse Essential Training","Justin Seeley"),
        ("WordPress Essential Training","Morten Rand-Hendriksen"),
        ("Installing and Running Joomla! 3: Local and Web-Hosted Sites","Jen Kramer"),
        ("Managing Records in SharePoint","Toni Saddler-French"),
        ("Design the Web: SVG Rollovers with CSS","Chris Converse"),
        ("Up and Running with Ember.js","Kai Gittens"),
        ("HTML5 Game Development with Phaser","Joseph Labrecque"),
        ("Responsive Media","Christopher Schmitt") ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return devCourses.count
        }else{
            return webCourses.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as UITableViewCell
        if indexPath.section == 0{
            let (dTitle, dAutor) = devCourses[indexPath.row]
            cell.textLabel?.text = dTitle
            cell.detailTextLabel?.text = dAutor
            let (wTitle, wAutor) = webCourses[indexPath.row]
            cell.textLabel?.text = wTitle
            cell.detailTextLabel?.text = wAutor
        }
        // Retrieve image
        let myImage = UIImage(named: "CellIcon")
        cell.imageView?.image = myImage
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "Developer Courses"
        }else{
            return "Web Courses"
        }
    }

}// UIViewController


