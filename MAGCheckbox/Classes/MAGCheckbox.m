//
//  MAGCheckbox.m
//
//  Created by Milan Agarwal on 03/08/18.
//  Copyright © 2018 Milan Agarwal. All rights reserved.
//

#import "MAGCheckbox.h"

@implementation MAGCheckbox

-(void)awakeFromNib
{
    [super awakeFromNib];
    self.borderColor = self.borderColor ? self.borderColor : [UIColor grayColor];
    self.borderWidth = self.borderWidth >= 1.0f ? self.borderWidth : 1.0f;
    UIColor *defaultBGColor = self.backgroundColor ? self.backgroundColor : self.tintColor;
    self.fillColor = self.fillColor ? self.fillColor : defaultBGColor;
    static UIImage *imgTick = nil;
    if(!imgTick){
        imgTick = [[self class]loadImageFromResourceBundle:@"ic_tick"];
    }
    [self setImage:imgTick forState:UIControlStateSelected];
    self.layer.cornerRadius = self.bounds.size.width / 2;
    self.layer.masksToBounds = YES;
}

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */
+(NSBundle *)getResourcesBundle
{
    NSBundle *bundle = [NSBundle bundleWithURL:[[NSBundle bundleForClass:[self class]] URLForResource:@"MAGCheckbox" withExtension:@"bundle"]];
    return bundle;
}


+(UIImage *)loadImageFromResourceBundle:(NSString *)imageName
{
    NSBundle *bundle = [[self class] getResourcesBundle];
    NSString *imageFileName = [NSString stringWithFormat:@"%@.png",imageName];
    UIImage *image = [UIImage imageNamed:imageFileName inBundle:bundle compatibleWithTraitCollection:nil];
    return image;
}

-(void)setSelected:(BOOL)selected
{
    [super setSelected:selected];
    if(selected){
        [self showSelectedState];
    }
    else{
        [self showDeselectedState];
    }
}

-(void)setBorderColor:(UIColor *)borderColor
{
    if(borderColor){
        _borderColor = borderColor;
        if(!self.isSelected){
            self.layer.borderColor = borderColor.CGColor;
        }
    }
}

-(void)setBorderWidth:(CGFloat)borderWidth
{
    if(borderWidth >= 1.0f){
        _borderWidth = borderWidth;
        if(!self.isSelected){
            self.layer.borderWidth = borderWidth;
        }
    }
}

-(void)setFillColor:(UIColor *)fillColor
{
    if(fillColor){
        _fillColor = fillColor;
        if(self.isSelected){
            self.backgroundColor = fillColor;
        }
    }
}

-(void)showSelectedState
{
    [UIView animateWithDuration:0.3 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        self.layer.borderWidth = 0;
        self.backgroundColor = self.fillColor;
    } completion:^(BOOL finished) {
        ///Do anything on completion
    }];
}

-(void)showDeselectedState
{
    self.layer.borderWidth = self.borderWidth;
    self.layer.borderColor = self.borderColor.CGColor;
    self.backgroundColor = [UIColor clearColor];
}

@end
