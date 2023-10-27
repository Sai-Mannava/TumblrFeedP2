//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Sai Mannava on 10/27/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    var post: Post!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        
        textView.text =  post.caption.trimHTMLTags()
        
        if let photo = post.photos.first {
            let url = photo.originalSize.url
            
            // Use the Nuke library's load image function to (async) fetch and load the image from the image URL.
            Nuke.loadImage(with: url, into: imageView)
            
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
}
