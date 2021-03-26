# SwiftRepository

## Description
The simplest approach, especially with an existing system, is to create a new Repository implementation for each business object you need to store to or retrieve from your persistence layer. Further, you should only implement the specific methods you are calling in your application. Avoid the trap of creating a “standard” repository class, base class, or default interface that you must implement for all repositories. Yes, if you need to have an Update or a Delete method, you should strive to make its interface consistent (does Delete take an ID, or does it take the object itself?), but don’t implement a Delete method on your LookupTableRepository that you’re only ever going to be calling List() on. The biggest benefit of this approach is YAGNI – you won’t waste any time implementing methods that never get called.

## Swift Package Manager

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler. It is in early development, but Repository does support its use on supported platforms.

Once you have your Swift package set up, adding Repository as a dependency is as easy as adding it to the `dependencies` value of your `Package.swift`.

```swift
dependencies: [
    .package(url: "https://github.com/dsay/SwiftRepository.git")
]
```
## Product hierarchy 

### [SwiftRepository](https://github.com/dsay/SwiftRepository)

<details>
<summary>RemoteStore</summary>
</br>
<ul>
<li><a href="https://github.com/dsay/RemoteStoreAlamofire"><code>RemoteStoreAlamofire</code></a></li>
<li><a href="https://github.com/dsay/RemoteStoreCodable"><code>RemoteStoreCodable</code></a></li>
<li><a href="https://github.com/dsay/RemoteStoreMappable"><code>RemoteStoreMappable</code></a></li>
</ul>
</details>

<details>
<summary>RequestProvider</summary>
</br>
<ul>
<li><a href="https://github.com/dsay/RequestProvider"><code>RequestProvider</code></a></li>
</ul>
</details>
  
  <details>
<summary>LocalStore</summary>
</br>
<ul>
<article>
    <header>
        <h2>DataBase local stores</h2>
    </header>
    <p>For Core Data recomended to use <a href="https://github.com/dsay/PersistentContainer"><code>PersistentContainer</code></a></p> 
</article>
<li><a href="https://github.com/dsay/LocalStoreReal"><code>LocalStoreRealm</code></a></li>
  <li><a href="https://github.com/dsay/LocalStoreCoreData"><code>LocalStoreCoreData</code></a></li>
<article>
    <header>
        <h2> Disk local stores</h2>
    </header>
    <p></p> 
</article>
    <li><a href="https://github.com/dsay/LocalStoreCodable"><code>LocalStoreCodable</code></a></li>
    <li><a href="https://github.com/dsay/LocalStoreMappable"><code>LocalStoreMappable</code></a></li>
    <li><a href="https://github.com/dsay/LocalStoreFileManager"><code>LocalStoreFileManager</code></a></li>

</ul>
</details>

<details>
<summary>Storages</summary>
</br>
<ul>
<li><a href="https://github.com/dsay/KeychainSwiftStorage"><code>KeychainSwiftStorage</code></a></li>
 <li><a href="https://github.com/dsay/UserDefaultsStorage"><code>UserDefaultsStorage</code></a></li>
</ul>
</details>

## Author

Dima Sai , dmitriy.sai2013@gmail.com

## License

Repository is available under the MIT license. See the LICENSE file for more info.
