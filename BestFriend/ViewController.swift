//
//  ViewController.swift
//  BestFriend
//
//  Created by Joe Miller on 7/19/22.
//

import UIKit

public let lastNames = [
    "Kent", "Wayne", "Prince", "Allen", "Queen",
    "Curry", "Jordan", "Stone", "Jones", "Drake"
]

public let firstNames = [
    "Clark", "Bruce", "Diana", "Barry", "Oliver",
    "Arthur", "Hal", "Victor", "John", "Dinah"
]

public let friendData = [
    "Superman \n   Home: Metropolis \n   Nemesis: Lex Luthor",
    "Batman \n   Home: Gotham City \n   Nemesis: Joker",
    "Wonder Woman \n   Home: Themyscira \n   Nemesis: Cheetah",
    "Flash \n   Home: Central City \n   Nemesis: Professor Zoom",
    "Green Arrow \n   Home: Star City \n   Nemesis: Merlyn",
    "Aquaman \n   Home: Atlantis \n   Nemesis: Black Manta",
    "Green Lantern \n   Home: Coast City \n   Nemesis: Sinestro",
    "Cyborg \n   Home: Detroit \n   Nemesis: Slade",
    "Martian Manhunter \n   Home: Mars \n   Nemesis: Darkseid",
    "Black Canary \n   Home: Gotham City \n   Nemesis: Vertigo"
]

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lastNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TextCell", for: indexPath as IndexPath)
        let row = indexPath.row
        cell.textLabel?.text = lastNames[row]
        cell.detailTextLabel?.text = firstNames[row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
//    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
//        return indexPath.row == 4 ? nil : indexPath
//    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "FriendSegueIdentifier",
           let destination = segue.destination as? FriendViewController,
           let nameIndex = tableView.indexPathForSelectedRow?.row {

            
            destination.lastName = lastNames[nameIndex]
            destination.firstName = firstNames[nameIndex]
            
        }
    }
}

