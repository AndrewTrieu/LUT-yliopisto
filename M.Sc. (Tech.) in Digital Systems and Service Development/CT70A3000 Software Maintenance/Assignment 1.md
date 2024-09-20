[[Software Maintenance]]

1. **Understand the architecture of any software system.**

Here is the architecture diagram for my personal portfolio website, which uses various AWS services, GitHub, and GitHub Actions:
![[architecture.drawio.png]]

The architecture's design makes maintainability easier through some key aspects. By separating static content delivery (via Route53 and CloudFront) from dynamic API functionality (via API Gateway and Lambda), it allows for straight-forward management and troubleshooting. This modular approach, where each component has a specific role, also makes it easier to update or replace individual components without affecting the entire system. Furthermore, automated deployment with GitHub Actions ensures consistent and repeatable processes, reducing human error and simplifying updates and rollbacks. On top of that, the use of managed AWS services offers high availability and scalability with minimal maintenance effort. Security and compliance are supported by IAM for authentication and ACM for encryption, offloading these critical tasks from developers. Additionally, comprehensive monitoring and logging via CloudWatch provide clear insights into application performance, providing quick issue identification and resolution.

However, the complexity of integrating multiple AWS services and GitHub Actions requires specialised knowledge. Managing dependencies and configurations across these services adds another layer of difficulty, increasing the risk of misconfigurations and deployment issues.

2. **Understand the object-oriented structure of any software system.**

Here is an UML of "The World of Lutemons" from the course CT60A2411 Object oriented Programming, which I took 3 years ago:

![[203955536-f6e4401f-5e8b-43c8-ac2d-b1e251032f4e.png]]

### Attribute Changes

Introducing new attributes in a class will make updates necessary for methods within the class that manage or use these attributes. For instance, if a new attribute such as `trainingLevel` is added to the `TrainingArea` class, methods within `TrainingArea` would need to be updated to manage this attribute. Furthermore, any associated classes that interact with `TrainingArea`, such as `Storage`, would also need to be updated to handle the new attribute.

Removing an attribute will break any methods that reference it within the class and in any associated classes. For example, if the `health` attribute is removed from the `Lutemon` class, all methods within `Lutemon` and other classes such as `Battlefield` or `Home` that reference `health` would need to be updated to remove or replace those references.

Altering the data type of an attribute affects all methods that use this attribute, as well as interactions with other classes. For instance, if the `id` attribute in the `Battlefield` class is changed from `int` to `String`, all methods in `Battlefield` and any associated classes that interact with `id` will need to be updated to ensure type compatibility.

### Method Changes

Adding a new method in a class might require associated classes to be updated to use this new functionality. For example, if a new combat-related method like `specialAttack()` is added to the `Lutemon` class, classes managing battles, such as `Battlefield`, would need changes to incorporate the new method.

Removing methods impacts any associated classes that call the removed method. If the `healLutemon()` method is removed from the `Home` class, all instances where `healLutemon()` is called in other classes, such as `Storage` or `Battlefield`, will need to be updated to remove or replace those method calls.

Changing a method’s parameters or return type impacts all associated classes that call this method. If the `getLutemon(int id)` method in the `Storage` class is modified to `getLutemon(String id)`, all classes that call `getLutemon()` must be updated to match the new signature.

### Inheritance and Polymorphism

If a superclass is modified, such as adding or removing attributes or methods, all subclasses need to be updated. For instance, if new attributes are added to the `Lutemon` class, subclasses like `Black`, `Orange`, `Green`, `Pink`, and `White` will be impacted and must be updated accordingly.

When methods that are overridden in subclasses are changed in the superclass, all subclasses must update their overriding methods accordingly. If the `attack()` method in `Lutemon` changes its parameters, all subclasses like `Black`, `Orange`, `Green`, `Pink`, and `White` need to update their overridden `attack()` methods to reflect these changes.

### Relationships and Associations

Changing the nature of an association impacts how classes interact with each other. For instance, modifying the relationship between `Storage` and areas like `TrainingArea`, `Battlefield`, and `Home` from one-to-many to one-to-one would require changes in how these areas manage `Lutemons`. This would affect methods for adding, removing, and managing `Lutemons` in these associated classes.

Classes that depend on another class’s attributes or methods will be directly affected by any changes. If methods in the `Storage` class are modified, such as changing the parameters of `addLutemon()`, all areas and classes interacting with `Storage`, including `TrainingArea`, `Battlefield`, and `Home`, will need to be updated to ensure compatibility with the new parameters.

### Encapsulation and Interfaces

Changing the visibility of attributes or methods (e.g., making private attributes public) can expose new parts of the class, affecting how other classes interact with it. This can lead to increased dependencies and potential misuse. For instance, making the `training` attribute in `TrainingArea` public could lead to direct manipulation of `training` by other classes, potentially causing unexpected behavior.

If a class interacts with an interface, changes to the interface, such as adding or removing methods, require all implementing classes to be updated to conform to the new interface structure. For instance, if `Lutemon` classes implement an interface for combat actions and the interface is modified to include a new method, all `Lutemon` subclasses must be updated to implement the new method.