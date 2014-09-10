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

Remember that you are in a closure. So if you want to reference the view use `self`.

Remember that you may or may not be on the main thread so if you want to update the UI do something like dis: 

```
Get.JSON(someURL) {
    (response) in
    //do some stuff here to make things happen
    //make sure you are on the main thread
    dispatch_async(dispatch_get_main_queue())    
        self.tableView.reloadData() // reload table/data or whatever you want to do to update the UI.
    }
}
```

Does not throw errors right now. Just gets.
