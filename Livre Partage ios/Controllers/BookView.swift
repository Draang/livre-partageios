//
//  BookView.swift
//  Livre Partage ios
//
//  Created by Angel Contrers on 10/12/2020.
//

import UIKit

class BookView: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    @IBOutlet weak var linetitle:UILabel!
    @IBOutlet weak var lineAuthor:UILabel!
    @IBOutlet weak var lineRat:UILabel!
    var imagePicker: UIImagePickerController!
    @IBOutlet weak var imageView: UIImageView!
    var t:String?
    var au:[String]?
    var r:Double?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let tit=t{
            linetitle.text=String(describing: tit)
            lineAuthor.text=String(describing: au)
            lineRat.text=String(describing: r)
        }
        // Do any additional setup after loading the view.
    }
    func config(t:String, au:[String],r:Double){
        print(t)
        print(au)
        print(r)
        self.t=t
        self.au=au
        self.r=r
        if linetitle != nil && lineAuthor != nil && lineRat != nil{
        linetitle.text=String(describing: self.t)
            lineAuthor.text=String(describing: self.au)
        lineRat.text=String(describing: self.r)
        }
    }

    @IBAction func takePhoto(_ sender: Any) {
        if(UIImagePickerController .isSourceTypeAvailable(.camera)){
            imagePicker =  UIImagePickerController()
                imagePicker.delegate = self
                imagePicker.sourceType = .camera

                present(imagePicker, animated: true, completion: nil)
        }else{
            let alertController = UIAlertController(title: nil, message: "Device has no camera.", preferredStyle: .alert)

               let okAction = UIAlertAction(title: "Alright", style: .default, handler: { (alert: UIAlertAction!) in
               })

               alertController.addAction(okAction)
               self.present(alertController, animated: true, completion: nil)
        }
       

       
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
            imagePicker.dismiss(animated: true, completion: nil)
            imageView.image = info[.originalImage] as? UIImage
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
