//
//  ViewController.swift
//  notification
//
//  Created by Rohit Dhakad on 22/12/23.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sendNotificationButtonTapped(_ sender: UIButton) {
            scheduleLocalNotification()
        }
    
    func scheduleLocalNotification() {
            let content = UNMutableNotificationContent()
            content.title = "Notification Title"
            content.body = "This is the notification body."
            content.sound = UNNotificationSound.default

            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 3, repeats: false)

            let identifier = "MyNotification"

            let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)

            UNUserNotificationCenter.current().add(request) { error in
                if let error = error {
                    print("Error scheduling notification: \(error.localizedDescription)")
                } else {
                    print("Notification scheduled successfully.")
                }
            }
        }


}

