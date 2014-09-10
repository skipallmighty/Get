Get
===

Use it like dis: 

```
Get.JSON(someURL) {
    (response) in
    println(response) // this is a NSDictionary
}
```

So maybe if you were grabbing a bunch of comments you'd do:

```
Get.JSON(someURL) {
    (response) in
    for comment in response["items"]! as NSArray {
        var commentBody = comment["body"]! as NSString
        println(commentBody)
    }
}
```
