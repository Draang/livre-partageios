//
//  BookView.swift
//  Livre Partage ios
//
//  Created by Angel Contrers on 10/12/2020.
//

import UIKit

class BookView: UIViewController {
    @IBOutlet weak var linetitle:UILabel!
    @IBOutlet weak var lineAuthor:UILabel!
    @IBOutlet weak var lineRat:UILabel!
    var t:String?
    var au:[String]?
    var r:Double?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let tit=t{
            linetitle.text=String(describing: t)
            lineAuthor.text=String(describing: au)
            lineRat.text=String(describing: r)
        }
        // Do any additional setup after loading the view.
    }
    func config(t:String, au:[String],r:Double){
        self.t=t
        self.au=au
        self.r=r
        if t != nil{
            linetitle.text=String(describing: t)
            lineAuthor.text=String(describing: au)
            lineRat.text=String(describing: r)
        }
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
