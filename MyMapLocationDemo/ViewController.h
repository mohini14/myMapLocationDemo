//
//  ViewController.h
//  MyMapLocationDemo
//
//  Created by Mohini Sindhu  on 09/02/17.
//  Copyright © 2017 Mohini Sindhu . All rights reserved.
//

#import <UIKit/UIKit.h>
#import<MapKit/MapKit.h>


@interface ViewController : UIViewController<MKMapViewDelegate>

@property(strong,nonatomic) IBOutlet MKMapView *mapView;

@end

