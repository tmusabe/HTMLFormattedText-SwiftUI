# HTMLFormattedText-SwiftUI
This repository presents the way to display contents with HTML tag in SwiftUI. `HTMLFormattedText.swift` is responsible to parse html and show accordingly.

<image src="Image/Image.png" width=500>

## Features

- Display HTML formatted text
- Set width and height dynamically based on content
    
## Usages:
This code has no dependecy. In order use it directly any project, add `HTMLFormattedText.swift` to the project and use it anywhere in the project like following code
 
```
HTMLFormattedText("<b>HTMLFormattedText</b>(<i>testText</i>)") 
```

## Explanation
HTML is formatted using `NSAttributedString`
```
private func converHTML(text: String) -> NSAttributedString? {
    guard let data = text.data(using: .utf8) else {
        return nil
    }

    if let attributedString = try? NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html], documentAttributes: nil) {
        return attributedString
    } else{
        return nil
    }
}
```

`UITextView` is used to show the content
```
private  let textView = UITextView()
```
 
```
DispatchQueue.main.async {
    if let attributeText = self.converHTML(text: text) {
        textView.attributedText = attributeText
    } else {
        textView.text = ""
    }

}
```
*NB: Setting any content require to be in main queue, otherwise there will be a crash. It is a bug from Apple*

Dynamic width and height is achieved by setting these following properties of `UITextView`
```
  textView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
        textView.isSelectable = false
        textView.isUserInteractionEnabled = false
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.isScrollEnabled = false
```
@Copywrite: Taif Al Musabe

