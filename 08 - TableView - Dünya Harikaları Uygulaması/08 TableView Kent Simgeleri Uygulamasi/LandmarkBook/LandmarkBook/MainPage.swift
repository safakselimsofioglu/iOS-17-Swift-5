//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Şafak Selim Sofioğlu on 21.06.2024.
//

import UIKit

class MainPage: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var landmarksList = [Landmarks]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        let l1 = Landmarks(name: "Artemis", image: "artemis")
        let l2 = Landmarks(name: "Babil", image: "babil")
        let l3 = Landmarks(name: "Halikarnas", image: "halikarnas")
        let l4 = Landmarks(name: "Kheops", image: "kheops")
        let l5 = Landmarks(name: "Rodos", image: "rodos")
        landmarksList.append(l1)
        landmarksList.append(l2)
        landmarksList.append(l3)
        landmarksList.append(l4)
        landmarksList.append(l5)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarksList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = landmarksList[indexPath.row].name!
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let landmark = landmarksList[indexPath.row]
        performSegue(withIdentifier: "toDetail", sender: landmark)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail" {
            if let landmark = sender as? Landmarks {
                let destinationVC = segue.destination as! DetailPage
                destinationVC.landmark = landmark
            }
        }
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            landmarksList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
     
    
    /*
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete"){contextualAction, view, bool in
            let landmark = self.landmarksList[indexPath.row]
            let alert = UIAlertController(title: "Deletion Process", message: "Should \(landmark.name!) be deleted?", preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
            alert.addAction(cancelAction)
            let yesAction = UIAlertAction(title: "Yes", style: .destructive){ action in
                print("\(landmark.name!) deleted")
            }
            alert.addAction(yesAction)
            self.present(alert, animated: true)
        }
        return UISwipeActionsConfiguration(actions: [deleteAction])
    }
     */


}

