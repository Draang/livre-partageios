//
//  ViewController.swift
//  Livre Partage ios
//
//  Created by Angel Contrers on 07/12/2020.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
	@IBOutlet weak var tableView: UITableView!
    
	let api = Api()
	
	var books: [Item]?
	
	override func viewDidLoad() {
        super.viewDidLoad()
        
		tableView.delegate = self
        tableView.dataSource = self
        
		api.getLivresSearch(q: "Lord of the rings") { result in
            print(result)
			self.books = result.items
			
			DispatchQueue.main.async {
				//Une fois qu'on a eu la réponse de l'API, on rafraichis la TableView
				self.tableView.reloadData()
			}
        }
    }
	
	
	//MARK: - UITableViewDelegate, UITableViewDataSource
	func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		//On a autant de ligne dans notre tableView que de livres, si pas de livre, alors 0 lignes
		return books?.count ?? 0
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		//On récupère le livre pour cette ligne et on l'affiche dans la cellule que nous avons créée pour cela
		let cell = tableView.dequeueReusableCell(withIdentifier: "BookTableViewCell", for: indexPath) as! BookTableViewCell
		if let book = books?[indexPath.row] {
			cell.configure(book: book)
		}
		return cell
	}
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		//TODO: clic sur une ligne du tableau (ouvre le détail du livre ?)
	}

}
