//
//  FriendViewController.swift
//  BestFriend
//
//  Created by Joe Miller on 7/19/22.
//

import UIKit

class FriendViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    var lastName:String = ""
    var firstName:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        nameLabel.text = firstName + " " + lastName
        textView.text = friendData[firstNames.firstIndex(of: firstName)!]
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
