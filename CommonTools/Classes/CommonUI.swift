//
//  CommonUI.swift
//  AIoT
//
//  Created by 王星鑫 on 2022/9/13.
//

import UIKit

class CommonUI: NSObject {
    static func label(frame: CGRect?, text: String?, textColor: UIColor?, font: UIFont?, Alignment: NSTextAlignment?) -> UILabel {
        let label=UILabel()
        if let frame = frame {
            label.frame=frame
        }
        if let text = text {
            label.text=text
        }
        if let textColor = textColor {
            label.textColor=textColor
        }
        if let font = font {
            label.font=font
        }
        if let Alignment = Alignment {
            label.textAlignment=Alignment
        }
        return label
    }

    static func button(frame: CGRect?, text: String?, image: UIImage?, textColor: UIColor?, font: UIFont?, Alignment: NSTextAlignment?) -> UIButton {
        let button=UIButton(type: .custom)
        if let frame = frame {
            button.frame=frame
        }
        if let text = text {
            button.setTitle(text, for: .normal)
        }
        if let image = image {
            button.setImage(image, for: .normal)
        }
        if let textColor = textColor {
            button.setTitleColor(textColor, for: .normal)
        }
        if let font = font {
            button.titleLabel?.font=font
        }
        if let Alignment = Alignment {
            button.titleLabel?.textAlignment=Alignment
        }

        return button
    }

    static func imageView(frame: CGRect?, image: UIImage?) -> UIImageView {
        let imageview=UIImageView()
//        imageview.contentMode = .scaleAspectFit;
        if let frame = frame {
            imageview.frame=frame
        }

        if let image = image {
            imageview.image=image
        }

        return imageview
    }

    static func textField(frame: CGRect?, text: String?, placeHold: String?, textColor: UIColor?, font: UIFont?, Alignment: NSTextAlignment?) -> UITextField {
        let textField=UITextField()
        if let frame = frame {
            textField.frame=frame
        }
        if let text = text {
            textField.text=text
        }

        if let textColor = textColor {
            textField.textColor=textColor
        }
        if let font = font {
            textField.font=font
        }
        if let Alignment = Alignment {
            textField.textAlignment=Alignment
        }
        if let place = placeHold {
            textField.placeholder = placeHold
        }
        return textField
    }
    static func textView(frame: CGRect?, text: String?, placeHold: String?, textColor: UIColor?, font: UIFont?, Alignment: NSTextAlignment?) -> UITextView {
        let textview=UITextView()
        if let frame = frame {
            textview.frame=frame
        }
        if let text = text {
            textview.text=text
        }

        if let textColor = textColor {
            textview.textColor=textColor
        }
        if let font = font {
            textview.font=font
        }
        if let Alignment = Alignment {
            textview.textAlignment=Alignment
        }
        return textview
    }

    static func view(frame: CGRect?, backGroundColor: UIColor?) -> UIView {
        let view=UIView()
        if let frame = frame {
            view.frame=frame
        }
        if let backColor=backGroundColor {
            view.backgroundColor=backColor
        }
        return view
    }

}

