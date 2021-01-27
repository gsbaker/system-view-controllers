//
//  ViewController.swift
//  SystemViewControllers
//
//  Created by George Baker on 26/01/2021.
//

import UIKit
import SafariServices

class ViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var imageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Actions
    @IBAction func shareButtonTapped(_ sender: Any) {
        guard let image = imageView.image else {
            return
        }
        let activityController = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        activityController.popoverPresentationController?.sourceView = sender as? UIView
        
        present(activityController, animated: true, completion: nil)
    }
    

    @IBAction func safariButtonTapped(_ sender: Any) {
        if let url = URL(string: "https://www.apple.com") {
            let safariViewController = SFSafariViewController(url: url)
            present(safariViewController, animated: true, completion: nil)
            
        }
    }
    
    @IBAction func cameraButtonTapped(_ sender: Any) {
        let alertController = UIAlertController(title: "Choose Image Source", message: nil, preferredStyle: .actionSheet)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        let cameraAction = UIAlertAction(title: "Camera", style: .default, handler: { action in print("User selected Camera action")
        })
        
        let photoLibraryAction = UIAlertAction(title: "Photo Library", style: .default, handler: { action in print("User selected Photo Library action")
        })
        
        alertController.addAction(cancelAction)
        alertController.addAction(cameraAction)
        alertController.addAction(photoLibraryAction)
        alertController.popoverPresentationController?.sourceView = sender as? UIView
        
        present(alertController, animated: true, completion: nil)
        
    }
    
    @IBAction func emailButtonTapped(_ sender: Any) {
    }
}

