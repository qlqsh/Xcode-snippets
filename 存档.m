// 存档
// 将数据保存到指定文件
//
// IDECodeSnippetCompletionPrefix: archiver
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 72A620B6-D9EE-4FF9-9DFE-46616555C69E
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 0
/**
     *  存档
     *  NSHomeDirectory()   根目录。4个文件夹（Documents、AppName.app、Library、tmp）
     *      AppName.app     程序目录。
     *      Documents       存储用户数据或其它定期备份信息。
     *      Library
     *          Preferences 偏好设置目录。
     *          Caches      程序专用的支持文件目录。保存程序再次启动中需要的信息。
     *      tmp             临时文件目录。程序再次启动中不需要的信息。
     */
    NSString *savePath        = [NSHomeDirectory() stringByAppendingString:@"description
                                 "];
    NSMutableData *saveData   = [NSMutableData data];
    NSKeyedArchiver *archiver = [[NSKeyedArchiver alloc] initForWritingWithMutableData:saveData];
    [archiver encodeObject:subforum2 forKey:@"subforum1"];
    [archiver finishEncoding];
    BOOL success = [saveData writeToFile:savePath atomically:YES];
    if (!success)
    {
        NSLog(@"存档失败, %@", savePath);
    }
    
    // 解档
    NSString *loadPath            = [NSHomeDirectory() stringByAppendingString:@"/Library/Caches/Subforum.chh"];
    NSMutableData *loadData       = [NSMutableData dataWithContentsOfFile:loadPath];
    NSKeyedUnarchiver *unarchiver = [[NSKeyedUnarchiver alloc] initForReadingWithData:loadData];
    Subforum *subforum3           = [unarchiver decodeObjectForKey:@"subforum1"];