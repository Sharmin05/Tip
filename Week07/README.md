# Project 7 - WordPress Pentesting

Time spent: **12** hours spent in total

> Objective: Find, analyze, recreate, and document **five vulnerabilities** affecting an old version of WordPress

## Pentesting Report

1. Vulnerability Name: XSS Attack
  - [X] Summary: 
    - Vulnerability types: XSS
    - Tested in version:4.2
    - Fixed in version: 4.6.1
  - [X] GIF Walkthrough:
  ![](https://github.com/ahamedbashir/WebSecurityCodepath/blob/master/Week07/01.%20XSS.gif)
  - [X] Steps to recreate: 
  - [X] Affected source code:
    - [Link 1](https://core.trac.wordpress.org/browser/tags/version/src/source_file.php)
2. Vulnerability Name: User Enumeration
  - [X] Summary: User Enumeration to find a valid user
    - Vulnerability types: User Enumeration
    - Tested in version: 4.2
    - Fixed in version: 4.7.5
  - [X] GIF Walkthrough: 
  ![](https://github.com/ahamedbashir/WebSecurityCodepath/blob/master/Week07/02.%20User%20Enumeration.gif)
  - [X] Steps to recreate: 
  - [X] Affected source code:
    - [Link 2](https://core.trac.wordpress.org/browser/tags/version/src/source_file.php)
    
3. Vulnerability Name: Stored XSS through embedded URL
  - [X] Summary: Stored XSS through embedded URL
    - Vulnerability types: XSS
    - Tested in version: 4.2
    - Fixed in version: 4.2.13
  - [X] GIF Walkthrough: 
  ![alt text](https://github.com/ahamedbashir/WebSecurityCodepath/blob/master/Week07/3.XSS%20embedded%20.gif)
  - [X] Steps to recreate: 
    - make a post/page containing harmful embedded link such as: " [embed src='https://youtube.com/embed/123\x3csvg onload=alert(123)\x3e'][/embed] "
  - [ ] Affected source code:
    - [Link 3](https://github.com/WordPress/WordPress/commit/419c8d97ce8df7d5004ee0b566bc5e095f0a6ca8)
    
 4. Vulnerability Name: Malicious Filename to XSS
  - [X] Summary: Malicious Filename to XSS
    - Vulnerability types: XSS
    - Tested in version: 4.2
    - Fixed in version: 4.6.1
  - [X] GIF Walkthrough: 
  ![alt text](https://github.com/ahamedbashir/WebSecurityCodepath/blob/master/Week07/3.XSS%20embedded%20.gif)
  - [X] Steps to recreate: 
    - A WordPress admin uploads a malicious image file requested by a user this admin trusts or a popular malicious image that was spread via social media in the form of "attachment page". This involves social engineering. In the Proof of Concept the file name <img src=a onerror=alert(document.cookie)>.jpg was used. 
    - Whenever the attachment file is opened in its own page, xss expolited script is run.
  - [X] Affected source code:
    - [Link 4](https://github.com/WordPress/WordPress/commit/c9e60dab176635d4bfaaf431c0ea891e4726d6e0)

## Assets

List any additional assets, such as scripts or files

## Resources

- [WordPress Source Browser](https://core.trac.wordpress.org/browser/)
- [WordPress Developer Reference](https://developer.wordpress.org/reference/)

GIFs created on Linux with [Peek](https://github.com/phw/peek).

