//
//  JMEncryption.h
//  JMEncryptBox
//
//  Created by YYH on 16/1/26.
//  Copyright © 2016年 爱加密. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface JMEncryption : NSObject

/**
 *  将字符串进行加密并用Base64编码
 *
 *  @param encryStr    待加密UTF-8编码的字符串
 *
 *  @return NSString * 加密后的字符串
 */
+ (NSString *) encryptToBase64:(NSString *)encryStr;

/**
 *  将UTF-8编码的字符串加密成数据流
 *
 *  @param encryStr    待加密字符串
 *
 *  @return NSData *   二进制数据流
 */
+ (NSData *) encryptFromString:(NSString *)encryStr;

/**
 *  加密数据流
 *
 *  @param encryData   待加密的二进制数据流
 *
 *  @return NSData *   二进制数据流
 */
+ (NSData*) encryptFromData:(NSData *)encryData;

/**
 *  对文件进行加密
 *
 *  @param srcPath     源文件路径
 *  @param targetPath  目标文件路径
 *
 *  @return BOOL       目标文件是否写入成功
 */
+ (BOOL) encryptFile:(NSString *)srcPath targetPath:(NSString *)targetPath;



/**
 *  将Base64解密回原字符串
 *
 *  @param decryStr    待解密字符串
 *
 *  @return NSString * 解密后的字符串
 */
+ (NSString *) decryptFromBase64:(NSString *)decryStr;

/**
 *  将数据流解密回UTF-8编码的字符串
 *
 *  @param decryData   待解密数据流
 *
 *  @return NSString * 解密后的字符串
 */
+ (NSString *) decryptToString:(NSData *)decryData;

/**
 *  解密数据流
 *
 *  @param decryData   待解密的二进制数据流
 *
 *  @return NSData *   解密后数据流
 */
+ (NSData *) decryptToData:(NSData *)decryData;

/**
 *  对文件进行解密
 *
 *  @param srcPath     源文件路径
 *  @param targetPath  目标文件路径
 *
 *  @return BOOL       目标文件是否写入成功
 */
+ (BOOL) decryptFile:(NSString *)srcPath targetPath:(NSString *)targetPath;

@end

