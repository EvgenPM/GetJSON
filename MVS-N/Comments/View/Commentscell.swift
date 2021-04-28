//
//  Commentscell.swift
//  MVS-N
//
//  Created by admin on 09.03.2021.
//  Copyright © 2021 admin. All rights reserved.
//

import UIKit

class CommentCell: UITableViewCell {
@IBOutlet weak var label:UILabel!
@IBOutlet weak var textView: UITextView!
    
    func configue (with comment: Comment) {
        self.label.text = comment.name
        self.textView.text = comment.body
    }
}
