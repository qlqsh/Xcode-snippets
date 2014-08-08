// 地址簿权限配置
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: E2B50293-ACCD-44C6-948B-28617B1FFD47
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 0
- (bool)checkAddressBookAuthorizationStatus:(UITableView *)tableView
{
    ABAuthorizationStatus authStatus = ABAddressBookGetAuthorizationStatus();
    if (authStatus != kABAuthorizationStatusAuthorized) // 没有授权情况下
    {
        // 地址簿请求存取
        ABAddressBookRequestAccessWithCompletion(addressBook, ^(bool granted, CFErrorRef error)
        {
            dispatch_async(dispatch_get_main_queue(), ^{
                if (error)  // 错误情况下
                {
                    NSLog(@"Error:%@", (__bridge NSError*)error);
                } else if (!granted) // 没有授权
                {
                    UIAlertView *av = [[UIAlertView alloc] initWithTitle:@"拒绝授权"
                                                                 message:@"可以通过“设置”设置权限 设置 > 通用 > 隐私"
                                                                delegate:nil
                                                       cancelButtonTitle:nil
                                                       otherButtonTitles:@"好", nil];
                    [av show];
                } else
                {
                    ABAddressBookRevert(addressBook);
                    myContacts = [NSArray arrayWithArray:(__bridge_transfer NSArray*)ABAddressBookCopyArrayOfAllPeople(addressBook)];
                    [tableView reloadData];
                }
            });
        });
    }
    
    return authStatus == kABAuthorizationStatusAuthorized;
}