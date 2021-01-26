//
//  ViewController.swift
//  SystemViewControllers
//
//  Created by George Baker on 26/01/2021.
//

import UIKit

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
    }
    
    @IBAction func cameraButtonTapped(_ sender: Any) {
    }
    
    @IBAction func emailButtonTapped(_ sender: Any) {
    }
}

