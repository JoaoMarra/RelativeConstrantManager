//
//  RelativeConstraintManager.m
//  RelativeConstraintManager
//
//  Created by João Gabriel Silva Marra on 30/09/17.
//  Copyright © 2017 marraWare. All rights reserved.
//

#import "RelativeConstraintManager.h"

@implementation UIView (RelativeConstraintManager)


-(void)clearConstraints {
    
}

#pragma mark - place set methods

-(void)centerHorizontalInParent {
    [self setTranslatesAutoresizingMaskIntoConstraints:false];
    if(self.superview) {
        [self.superview addConstraint:[NSLayoutConstraint
                             constraintWithItem:self
                             attribute:NSLayoutAttributeCenterX
                             relatedBy:NSLayoutRelationEqual
                             toItem:self.superview
                             attribute:NSLayoutAttributeCenterX
                             multiplier:1
                             constant:0]];
    }
}
-(void)centerVerticalInParent {
    [self setTranslatesAutoresizingMaskIntoConstraints:false];
    if(self.superview) {
        [self.superview addConstraint:[NSLayoutConstraint
                             constraintWithItem:self
                             attribute:NSLayoutAttributeCenterY
                             relatedBy:NSLayoutRelationEqual
                             toItem:self.superview
                             attribute:NSLayoutAttributeCenterY
                             multiplier:1
                             constant:0]];
    }
}

#pragma mark - side reference methods

-(void)leftOf:(UIView *)left {
    [self leftOf:left margin:0];
}
-(void)leftOf:(UIView *)left margin:(CGFloat)marginLeft {
    [self setTranslatesAutoresizingMaskIntoConstraints:false];
    if(self.superview) {
        [self.superview addConstraint:[NSLayoutConstraint
                             constraintWithItem:self
                             attribute:NSLayoutAttributeRight
                             relatedBy:NSLayoutRelationEqual
                             toItem:left
                             attribute:NSLayoutAttributeLeft
                             multiplier:1
                             constant:-marginLeft]];
    }
}

-(void)rightOf:(UIView *)right {
    [self rightOf:right margin:0];
    
}
-(void)rightOf:(UIView *)right margin:(CGFloat)marginRight {
    [self setTranslatesAutoresizingMaskIntoConstraints:false];
    if(self.superview) {
        [self.superview addConstraint:[NSLayoutConstraint
                                       constraintWithItem:self
                                       attribute:NSLayoutAttributeLeft
                                       relatedBy:NSLayoutRelationEqual
                                       toItem:right
                                       attribute:NSLayoutAttributeRight
                                       multiplier:1
                                       constant:marginRight]];
    }
}

-(void)below:(UIView *)below {
    [self below:below margin:0];
}
-(void)below:(UIView *)below margin:(CGFloat)marginTop {
    [self setTranslatesAutoresizingMaskIntoConstraints:false];
    if(self.superview) {
        [self.superview addConstraint:[NSLayoutConstraint
                                       constraintWithItem:self
                                       attribute:NSLayoutAttributeTop
                                       relatedBy:NSLayoutRelationEqual
                                       toItem:below
                                       attribute:NSLayoutAttributeBottom
                                       multiplier:1
                                       constant:marginTop]];
    }
}

-(void)above:(UIView *)above {
    [self above:above margin:0];
}

-(void)above:(UIView *)above margin:(CGFloat)marginBottom {
    [self setTranslatesAutoresizingMaskIntoConstraints:false];
    if(self.superview) {
        [self.superview addConstraint:[NSLayoutConstraint
                                       constraintWithItem:self
                                       attribute:NSLayoutAttributeBottom
                                       relatedBy:NSLayoutRelationEqual
                                       toItem:above
                                       attribute:NSLayoutAttributeTop
                                       multiplier:1
                                       constant:-marginBottom]];
    }
}

#pragma mark- align methods

-(void)alignLeft:(UIView *)left {
    [self alignLeft:left margin:0];
}
-(void)alignLeft:(UIView *)left margin:(CGFloat)marginLeft {
    [self setTranslatesAutoresizingMaskIntoConstraints:false];
    if(self.superview) {
        [self.superview addConstraint:[NSLayoutConstraint
                                       constraintWithItem:self
                                       attribute:NSLayoutAttributeLeft
                                       relatedBy:NSLayoutRelationEqual
                                       toItem:left
                                       attribute:NSLayoutAttributeLeft
                                       multiplier:1
                                       constant:marginLeft]];
    }
}

-(void)alignRight:(UIView *)right {
    [self alignRight:right margin:0];
}
-(void)alignRight:(UIView *)right margin:(CGFloat)marginRight {
    [self setTranslatesAutoresizingMaskIntoConstraints:false];
    if(self.superview) {
        [self.superview addConstraint:[NSLayoutConstraint
                                       constraintWithItem:self
                                       attribute:NSLayoutAttributeRight
                                       relatedBy:NSLayoutRelationEqual
                                       toItem:right
                                       attribute:NSLayoutAttributeRight
                                       multiplier:1
                                       constant:-marginRight]];
    }
}

-(void)alignTop:(UIView *)top {
    [self alignTop:top margin:0];
}
-(void)alignTop:(UIView *)top margin:(CGFloat)marginTop {
    [self setTranslatesAutoresizingMaskIntoConstraints:false];
    if(self.superview) {
        [self.superview addConstraint:[NSLayoutConstraint
                                       constraintWithItem:self
                                       attribute:NSLayoutAttributeTop
                                       relatedBy:NSLayoutRelationEqual
                                       toItem:top
                                       attribute:NSLayoutAttributeTop
                                       multiplier:1
                                       constant:marginTop]];
    }
}

-(void)alignBottom:(UIView *)bottom {
    [self alignBottom:bottom margin:0];
}
-(void)alignBottom:(UIView *)bottom margin:(CGFloat)marginBottom {
    [self setTranslatesAutoresizingMaskIntoConstraints:false];
    if(self.superview) {
        [self.superview addConstraint:[NSLayoutConstraint
                                       constraintWithItem:self
                                       attribute:NSLayoutAttributeBottom
                                       relatedBy:NSLayoutRelationEqual
                                       toItem:bottom
                                       attribute:NSLayoutAttributeBottom
                                       multiplier:1
                                       constant:-marginBottom]];
    }
}


-(void)alignCenterHorizontal:(UIView *)centerHorizontal {
    [self alignCenterHorizontal:centerHorizontal margin:0];
}
-(void)alignCenterHorizontal:(UIView *)centerHorizontal margin:(CGFloat)marginCenter {
    [self setTranslatesAutoresizingMaskIntoConstraints:false];
    if(self.superview) {
        [self.superview addConstraint:[NSLayoutConstraint
                                       constraintWithItem:self
                                       attribute:NSLayoutAttributeCenterX
                                       relatedBy:NSLayoutRelationEqual
                                       toItem:centerHorizontal
                                       attribute:NSLayoutAttributeCenterX
                                       multiplier:1
                                       constant:marginCenter]];
    }
}
-(void)alignCenterVertical:(UIView *)centerVertical {
    [self alignCenterVertical:centerVertical margin:0];
}
-(void)alignCenterVertical:(UIView *)centerVertical margin:(CGFloat)marginCenter {
    [self setTranslatesAutoresizingMaskIntoConstraints:false];
    if(self.superview) {
        [self.superview addConstraint:[NSLayoutConstraint
                                       constraintWithItem:self
                                       attribute:NSLayoutAttributeCenterY
                                       relatedBy:NSLayoutRelationEqual
                                       toItem:centerVertical
                                       attribute:NSLayoutAttributeCenterY
                                       multiplier:1
                                       constant:marginCenter]];
    }
}

#pragma mark - self constraints methods

-(void)defineHeight:(CGFloat)height relation:(NSLayoutRelation)relation {
    [self setTranslatesAutoresizingMaskIntoConstraints:false];
    [self addConstraint:[NSLayoutConstraint
                         constraintWithItem:self
                         attribute:NSLayoutAttributeHeight
                         relatedBy:relation
                         toItem:nil
                         attribute:NSLayoutAttributeNotAnAttribute
                         multiplier:1
                         constant:height]];
}
-(void)defineWidth:(CGFloat)width relation:(NSLayoutRelation)relation {
    [self setTranslatesAutoresizingMaskIntoConstraints:false];
    [self addConstraint:[NSLayoutConstraint
                         constraintWithItem:self
                         attribute:NSLayoutAttributeWidth
                         relatedBy:relation
                         toItem:nil
                         attribute:NSLayoutAttributeNotAnAttribute
                         multiplier:1
                         constant:width]];
}

#pragma mark - overrited needs


@end