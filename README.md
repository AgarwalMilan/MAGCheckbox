# MAGCheckbox
[![CocoaPods](https://img.shields.io/cocoapods/v/MAGCheckBox.svg)]() 
[![LICENSE](https://img.shields.io/badge/License-MIT-brightgreen.svg)]()

Custom circular checkbox button that can be quickly integrated from Storyboard without writing any extra code.

![Demo](https://thumbs.gfycat.com/MessyGreedyIridescentshark-size_restricted.gif)

## Installation
It's super easy to use, just follow the below steps to integrate it quickly:

### Using **[CocoaPods](https://cocoapods.org)**
Add the following line to your Podfile:
```ruby
pod 'MAGCheckbox'
```
Run `pod install`, and you should now have the latest MAGCheckbox release.

### Manual Installation
1. Download and extract the files.
2. Import the **MAGCheckbox** folder in your project.

## Usage
1. Open Storyboard and drag button on your view controller.
2. Set equal width and height. Recommended width and height is 28 but you can increase it.
2. Set it's type as Custom and remove title.
3. Set it's Class as **MAGCheckbox**
4. Use **selected** UIButton property to toggle it's state.


## Customization
You can use all the properties of UIButton alongwith below properties:
1. **borderColor** to set different border color when checkbox is deselected.
2. **borderWidth** to increase borderWidth to more than 1.0;
3. **fillColor** to set different fill color when checkbox is selected.
