//
//  ViewController.m
//  MyMapLocationDemo
//
//  Created by Mohini Sindhu  on 09/02/17.
//  Copyright © 2017 Mohini Sindhu . All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController
@synthesize mapView;

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	self.mapView.delegate=self;
}


- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


    //for updating user location

-(void) mapView :(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation{
	MKCoordinateRegion region=MKCoordinateRegionMakeWithDistance(userLocation.coordinate, 800, 800);
	[self.mapView setRegion:[self.mapView regionThatFits:region]animated :YES];

	MKPointAnnotation *point = [[MKPointAnnotation alloc] init];
	point.coordinate = userLocation.coordinate;
	point.title = @"Where am I?";
	point.subtitle = @"I'm here!!!";
	
	[self.mapView addAnnotation:point];




}






@end
