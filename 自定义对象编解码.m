// 自定义对象编/解码
// 
//
// IDECodeSnippetCompletionPrefix: archiver
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: C5103F25-B5FE-4662-8DE9-F4C5EBA1A468
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
#pragma mark - NSCoding
/**
 *  对属性进行编码。
 */
- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:<#object#> forKey:@"<#key#>"];
}

/**
 *  解码，建立对象。
 */
- (id)initWithCoder:(NSCoder *)aDecoder
{
    <#class name#> *<#object#> = [aDecoder decodeObjectForKey:@"<#key#>"];
    
    if (self = [super init])
    {
        <#statements#>
    }
    
    return self;
}