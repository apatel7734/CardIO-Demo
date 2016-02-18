//
//  ViewController.swift
//  CardIODemo
//
//  Created by Patel, Ashish on 2/18/16.
//  Copyright © 2016 Patel, Ashish. All rights reserved.
//

import UIKit

class ViewController: UIViewController,CardIOPaymentViewControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func didTapScanCardInbuildVC(sender: AnyObject) {
        let cardIOVC = CardIOPaymentViewController(paymentDelegate: self)
        cardIOVC.modalPresentationStyle = .FormSheet
        presentViewController(cardIOVC, animated: true, completion: nil)
    }
    
    //MARK: - CardIO Delegate methods
    func userDidCancelPaymentViewController(paymentViewController: CardIOPaymentViewController!) {
        print("User Canceled Card IO...")
        paymentViewController.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func userDidProvideCreditCardInfo(cardInfo: CardIOCreditCardInfo!, inPaymentViewController paymentViewController: CardIOPaymentViewController!) {
        print("User Provided Card Info: \(cardInfo) ")
        
        paymentViewController?.dismissViewControllerAnimated(true, completion: nil)
    }
}

