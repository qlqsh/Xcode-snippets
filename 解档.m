// 解档
// 从指定文件获取自定义对象数据
//
// IDECodeSnippetCompletionPrefix: archiver
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 8E626E1A-D992-4762-840F-CF75A37BEA70
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
// 解档
NSString *loadPath            = [NSHomeDirectory() stringByAppendingString:@"/Library/Caches/<#解档文件#>"];
NSMutableData *loadData       = [NSMutableData dataWithContentsOfFile:loadPath];
NSKeyedUnarchiver *unarchiver = [[NSKeyedUnarchiver alloc] initForReadingWithData:loadData];
<#class name#> *<#object#>           = [unarchiver decodeObjectForKey:@"<#key#>"];