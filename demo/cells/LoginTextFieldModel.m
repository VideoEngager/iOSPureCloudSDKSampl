//
//  LoginTextViewModel.m
//  leadsecure
//
//  Created by Bozhko Terziev on 9/22/15.
//  Copyright © 2015 SoftAvail. All rights reserved.
//

#import "LoginTextFieldModel.h"
#import "AppSettings.h"

@implementation LoginTextFieldModel

+(NSString*)loginPlaceholderForCellGenesys:(SignInCellGenesys)cell {
    
    NSString* placeHolder = nil;
    
    switch (cell) {
        case SignInCellGenesysServerUrl:
            placeHolder = @"Server Url";
            break;
            
        case SignInCellGenesysAgentUrl:
            placeHolder = @"Agent Url";
            break;
            
        case SignInCellGenesysFirstName:
            placeHolder = @"First Name";
            break;
            
        case SignInCellGenesysLastName:
            placeHolder = @"Last Name";
            break;
            
        case SignInCellGenesysEmail:
            placeHolder = @"Email";
            break;
            
        case SignInCellGenesysSubject:
            placeHolder = @"Subject";
            break;
        case SignInCellGenesysServiceName:
            placeHolder = @"Service Name";
            break;
        case SignInCellGenesysAuthorizationValue:
            placeHolder = @"Authorization Value";
            break;
        default:
            break;
    }
    
    return placeHolder;
}


+(UIImage*)loginImageForCellGenesys:(SignInCellGenesys)cell {
    
    UIImage* img = nil;
    
    switch (cell) {
        case SignInCellGenesysServerUrl:
            img = [UIImage imageNamed:@"imageLink"];
            break;
            
        case SignInCellGenesysAgentUrl:
            img = [UIImage imageNamed:@"imageLink"];
            break;
            
        case SignInCellGenesysFirstName:
            img = [UIImage imageNamed:@"imageFirstLast"];
            break;
            
        case SignInCellGenesysLastName:
            img = [UIImage imageNamed:@"imageFirstLast"];
            break;
            
        case SignInCellGenesysEmail:
            img = [UIImage imageNamed:@"imageEmail"];
            break;
            
        case SignInCellGenesysSubject:
            img = [UIImage imageNamed:@"imageSubject"];
            break;
        case SignInCellGenesysServiceName:
            img = [UIImage imageNamed:@"imageSubject"];
            break;
        case SignInCellGenesysAuthorizationValue:
            img = [UIImage imageNamed:@"imageSubject"];
            break;
            
        default:
            break;
    }
    
    return img;
}


+(UIReturnKeyType)loginReturnKeyTypeForCellTypeGenesys:(SignInCellGenesys)cell {
    
    return (cell != SignInCellGenesysAuthorizationValue) ? UIReturnKeyNext : UIReturnKeyDone;
}

+(UIKeyboardType)loginKeyboardTypeForCellTypeGenesys:(SignInCellGenesys)cell {
    
    UIKeyboardType kt = UIKeyboardTypeDefault;
    
    if ( cell == SignInCellGenesysServerUrl || cell == SignInCellGenesysAgentUrl) {
        
        kt = UIKeyboardTypeURL;
        
    } else if ( cell == SignInCellGenesysFirstName || cell == SignInCellGenesysLastName || cell == SignInCellGenesysSubject
               || cell == SignInCellGenesysServiceName || cell == SignInCellGenesysAuthorizationValue) {
        
        kt = UIKeyboardTypeDefault;
        
    } else if ( cell == SignInCellGenesysEmail ){
        
        kt = UIKeyboardTypeEmailAddress;
        
    } else {
        
        kt = UIKeyboardTypeDefault;
    }
    
    return kt;
}



+(NSString*)loginPlaceholderForCell:(SignInCell)cell {
    
    NSString* placeholder = nil;
    
    switch (cell) {
        case SignInCellAgentPath:
            placeholder = @"Agent Path";
            break;
            
        case SignInCellName:
            placeholder = @"Name";
            break;
            
        case SignInCellEmail:
            placeholder = @"Email";
            break;
            
        case SignInCellPhone:
            placeholder = @"Phone";
            break;
            
        default:
            break;
    }
    
    return placeholder;
}

+(UIImage*)loginImageForCell:(SignInCell)cell {
    
    UIImage* img = nil;
    
    switch (cell) {
        case SignInCellAgentPath:
            img = [UIImage imageNamed:@"imageLink"];
            break;
            
        case SignInCellName:
            img = [UIImage imageNamed:@"imageFirstLast"];
            break;
            
        case SignInCellEmail:
            img = [UIImage imageNamed:@"imageEmail"];
            break;
            
        case SignInCellPhone:
            img = [UIImage imageNamed:@"imagePhone"];
            break;
            
        default:
            break;
    }
    
    return img;
}

+(UIReturnKeyType)loginReturnKeyTypeForCellType:(SignInCell)cell {
    
    return (cell != SignInCellPhone) ? UIReturnKeyNext : UIReturnKeyDone;
    
}

+(UIKeyboardType)loginKeyboardTypeForCellType:(SignInCell)cell {
    
    UIKeyboardType kt = UIKeyboardTypeDefault;
    
    switch (cell) {
        case SignInCellAgentPath:
            kt = UIKeyboardTypeURL;
            break;
            
        case SignInCellName:
            kt = UIKeyboardTypeDefault;
            break;
            
        case SignInCellEmail:
            kt = UIKeyboardTypeEmailAddress;
            break;
            
        case SignInCellPhone:
            kt = UIKeyboardTypeNamePhonePad;
            break;
            
        default:
            break;
    }
    
    return kt;
}

+(NSString*)enteredTextForCell:(SignInCell)cell {
    
    NSString* enteredText = nil;
    
    switch (cell) {
            
        case SignInCellAgentPath:
            enteredText = [[AppSettings instance] agentPath];
            break;
            
        case SignInCellName:
            enteredText = [[AppSettings instance] name];
            break;
            
        case SignInCellEmail:
            enteredText = [[AppSettings instance] email];
            break;
            
        case SignInCellPhone:
            enteredText = [[AppSettings instance] phone];
            break;
            
        default:
            break;
    }
    
    return enteredText;
}

+(NSString*)enteredTextForCellGenesys:(SignInCellGenesys)cell {
    
    NSString* enteredText = nil;
    
    switch (cell) {
        case SignInCellGenesysServerUrl:
            enteredText = [[AppSettings instance] serverUrl];
            break;
            
        case SignInCellGenesysAgentUrl:
            enteredText = [[AppSettings instance] agentUrl];
            break;
            
        case SignInCellGenesysFirstName:
            enteredText = [[AppSettings instance] firstName];
            break;
            
        case SignInCellGenesysLastName:
            enteredText = [[AppSettings instance] lastName];
            break;
            
        case SignInCellGenesysEmail:
            enteredText = [[AppSettings instance] emailGenesys];
            break;
            
        case SignInCellGenesysSubject:
            enteredText = [[AppSettings instance] subject];
            break;
        case SignInCellGenesysServiceName:
            enteredText = [[AppSettings instance] serviceName];
            break;
        case SignInCellGenesysAuthorizationValue:
            enteredText = [[AppSettings instance] authorizationValue];
            break;
            
        default:
            break;
    }
    
    return enteredText;
}


+(NSString*)loginPlaceholderForCellPureCloud:(SignInPureClound)cell {
    NSString* placeHolder = nil;
    
    switch (cell) {
        case SignInPureCloundAgentPath:
            placeHolder = @"Agent Url";
            break;
            
        case SignInPureCloundServerUrl:
            placeHolder = @"Server Url";
            break;
            
        case SignInPureCloundFirstName:
            placeHolder = @"First Name";
            break;
            
        case SignInPureCloundLastName:
            placeHolder = @"Last Name";
            break;
            
        case SignInPureCloundQueueName:
            placeHolder = @"Queue Name";
            break;
            
        case SignInPureCloundOrganizationId:
            placeHolder = @"Organization Id";
            break;
            
        case SignInPureCloundDeploymentId:
            placeHolder = @"Deployment Id";
            break;
        default:
            break;
    }
    
    return placeHolder;
}


+(UIImage*)loginImageForCellPureCloud:(SignInPureClound)cell {
    UIImage* img = nil;
    
    switch (cell) {
        case SignInPureCloundAgentPath:
            img = [UIImage imageNamed:@"imageLink"];
            break;
            
        case SignInPureCloundServerUrl:
            img = [UIImage imageNamed:@"imageLink"];
            break;
            
        case SignInPureCloundFirstName:
            img = [UIImage imageNamed:@"imageFirstLast"];
            break;
            
        case SignInPureCloundLastName:
            img = [UIImage imageNamed:@"imageFirstLast"];
            break;
            
        case SignInPureCloundQueueName:
            img = [UIImage imageNamed:@"imageSubject"];
            break;
            
        case SignInPureCloundOrganizationId:
            img = [UIImage imageNamed:@"imageSubject"];
            break;
            
        case SignInPureCloundDeploymentId:
            img = [UIImage imageNamed:@"imageSubject"];
            break;
            
        default:
            break;
    }
    
    return img;
}

+(UIReturnKeyType)loginReturnKeyTypeForCellTypePureCloud:(SignInPureClound)cell {
    return (cell != SignInPureCloundDeploymentId) ? UIReturnKeyNext : UIReturnKeyDone;
}

+(UIKeyboardType)loginKeyboardTypeForCellTypePureCloud:(SignInPureClound)cell {
    UIKeyboardType kt = UIKeyboardTypeDefault;
    
    if ( cell == SignInPureCloundServerUrl || cell == SignInPureCloundAgentPath) {
        
        kt = UIKeyboardTypeURL;
        
    } else if ( cell == SignInPureCloundFirstName || cell == SignInPureCloundLastName || cell == SignInPureCloundQueueName
               || cell == SignInPureCloundOrganizationId || cell == SignInPureCloundDeploymentId) {
        
        kt = UIKeyboardTypeDefault;
        
    } else {
        
        kt = UIKeyboardTypeDefault;
    }
    
    return kt;
}

+(NSString*)enteredTextForPureCloudCell:(SignInPureClound)cell {
    
    NSString* enteredText = nil;
    
    switch (cell) {
        case SignInPureCloundAgentPath:
            enteredText = [[AppSettings instance] pcAgentPath];
            break;
            
        case SignInPureCloundServerUrl:
            enteredText = [[AppSettings instance] pcServerUrl];
            break;
            
        case SignInPureCloundFirstName:
            enteredText = [[AppSettings instance] pcFirstName];
            break;
            
        case SignInPureCloundLastName:
            enteredText = [[AppSettings instance] pcLastName];
            break;
            
        case SignInPureCloundQueueName:
            enteredText = [[AppSettings instance] pcQueueName];
            break;
            
        case SignInPureCloundOrganizationId:
            enteredText = [[AppSettings instance] pcOrganizationId];
            break;
            
        case SignInPureCloundDeploymentId:
            enteredText = [[AppSettings instance] pcDeploymentId];
            break;
            
        default:
            break;
    }
    
    return enteredText;
}

@end
