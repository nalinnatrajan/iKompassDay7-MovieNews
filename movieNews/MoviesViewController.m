//
//  ViewController.m
//  movieNews
//
//  Created by Nalin Natrajan on 14/3/15.
//  Copyright (c) 2015 Nalin Natrajan. All rights reserved.
//

#import "MoviesViewController.h"

@interface MoviesViewController () <UITableViewDelegate, UITableViewDataSource>

@property NSArray *moviesArray;

@end

@implementation MoviesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDictionary *fridayMovieDictionary = [NSDictionary dictionaryWithObjectsAndKeys: @"Run All Night", @"Name", @"Liam Neeson", @"Actor", @"2015", @"Year", @"Average", @"Rating", nil];
    
    NSDictionary *saturdayMovieDictionary = [NSDictionary dictionaryWithObjectsAndKeys: @"Titanic", @"Name", @"Kate Winslet", @"Actor", @"1999", @"Year", @"Very Good", @"Rating", nil];
    
    self.moviesArray = [NSArray arrayWithObjects:fridayMovieDictionary, saturdayMovieDictionary, nil];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.moviesArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MovieCell" forIndexPath:indexPath];
    NSDictionary *movieDictionary = [self.moviesArray objectAtIndex:indexPath.row];
    cell.textLabel.text = [NSString stringWithFormat:@"%@ (%@)", [movieDictionary objectForKey:@"Name"], [movieDictionary objectForKey:@"Year"]];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@, %@", [movieDictionary objectForKey:@"Actor"], [movieDictionary objectForKey:@"Rating"]];
    return cell;
}


@end
