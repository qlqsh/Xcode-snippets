// 隐藏状态条
// 隐藏ios设置顶部的状态条（2种方式）
//
// IDECodeSnippetCompletionPrefix: common
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 19981594-F88B-489A-833F-1D1772A6AE9F
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetPlatformFamily: iphoneos
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 0
/**
 *  当前视图状态条隐藏。
 *
 *  全局隐藏：plist 设置：
 *      Status bar is initially hidden : YES
 *      View controller-based status bar appearance : NO
 *
 */
- (BOOL)prefersStatusBarHidden
{
	return YES;
}