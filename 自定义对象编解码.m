// 自定义对象编/解码
// 
//
// IDECodeSnippetCompletionPrefix: archiver
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: C5103F25-B5FE-4662-8DE9-F4C5EBA1A468
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 0
#pragma mark - NSCoding
/**
 *  对属性进行编码。
 */
- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:<#object#> forKey:@"<#key#>"];
}

/**
 *  解码，建立 Subforum 对象。
 */
- (id)initWithCoder:(NSCoder *)aDecoder
{
    <#class name#> *name   = [aDecoder decodeObjectForKey:@"<#key#>"];
    
    if (self = [super init])
    {
        
    }
    
    return self;
}