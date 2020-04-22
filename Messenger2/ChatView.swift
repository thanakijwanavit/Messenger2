//
//  ChatView.swift
//  Messenger2
//
//  Created by nic Wanavit on 4/22/20.
//  Copyright © 2020 tenxor. All rights reserved.
//

import SwiftUI
import MessageKit
import UIKit

struct ChatView: UIViewControllerRepresentable {
    
    let navController =  UINavigationController()
    
    func makeUIViewController(context: Context) -> UINavigationController {
        let vc = BasicExampleViewController()
        navController.setNavigationBarHidden(true, animated: false)
        navController.addChild(vc)
        return navController
    }
    
    func updateUIViewController(_ uiViewController: UINavigationController, context: Context) {
//
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(self)
    }
    
    class Coordinator: NSObject {
        var parent: ChatView

        init(_ chatView: ChatView) {
            self.parent = chatView
        }
    }
    
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}



//class ChatViewController: MessagesViewController {
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        messagesCollectionView.messagesDataSource = self
//        messagesCollectionView.messagesLayoutDelegate = self
//        messagesCollectionView.messagesDisplayDelegate = self
//    }
//}


//public protocol MessageType {
//
//    var sender: Sender { get }
//
//    var messageId: String { get }
//
//    var sentDate: Date { get }
//
//    var kind: MessageKind { get }
//}
//
//
//public protocol SenderType {
//
//    var senderId: String { get }
//
//    var displayName: String { get }
//}


public struct Sender: SenderType {
    public let senderId: String

    public let displayName: String
}

// Some global variables for the sake of the example. Using globals is not recommended!
let sender = Sender(senderId: "any_unique_id", displayName: "Steven")
let messages: [MessageType] = []



//extension ChatViewController: MessagesDataSource {
//
//    func currentSender() -> SenderType {
//        return Sender(senderId: "any_unique_id", displayName: "Steven")
//    }
//
//    func numberOfSections(in messagesCollectionView: MessagesCollectionView) -> Int {
//        return messages.count
//    }
//
//    func messageForItem(at indexPath: IndexPath, in messagesCollectionView: MessagesCollectionView) -> MessageType {
//        return messages[indexPath.section]
//    }
//}
//
//
//extension ChatViewController: MessagesDisplayDelegate, MessagesLayoutDelegate {}
