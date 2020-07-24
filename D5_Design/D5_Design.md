# D.5 Design


## 1. Description

Journal Time is a journal-taking mobile application that integrates information, such as photos, locations, and contacts into entries to provide context. The users of this application can avoid leaving out important information in their entries by providing contextual information already within their phone and the internet. When using Journal Time, the user will log into their account and view a calendar where they can select the date that they would like to make an entry for. From here, the user can type their entry into a text box, customizing the font and color of their text as well as the background of the overall entry.


Users can also enter photos from their camera or camera roll into entries, as well as their location. Their entry will be saved to their account through the server where they can later access and edit it through their phone or another device. Users also get the chance to share what is going on in their lives through sharing their entries. Users can either email or text PDF versions of their entries to any friends or family they would like.

## 2. Architecture

<img src="./img/ArchitectureDiagram.jpg" width=680/>

We've chosen a server/ client architecture with a focus on local storage.

## 3. Class Diagram

![classDiagram](./img/classDiagram.PNG)

## 4. Sequence Diagram

Lorem ipsum

## 5. Design Patterns

Lorem ipsum

## 6. Design Principles

The Acronym SOLID stands for S - Single responsibility principle, O - Open/closed principle, L - Liskov substitution principle, I - Interface Segregation Principle, and D - Dependency Inversion Principle.

S - Single Responsibility principle
This principle states that every class should manage or have responsibility over a single part of the softwares functionality. For example in the journal time app there is one class for photo integration, customization and journaling. While they may pass some information back and forth each class is focused on one feature. To be more specific the photo Class photo journal_time1/lib/Photo.dart
found : (https://github.com/CS386-journal-time/CS386-journal-time.git)
Focuses only on photo integration.

O - Open/Closed principle
The Open/Closed principle states that you should be able to add on or extend a classes behavior rather than modify it. One example from our code would be the customColor class which currently only modifies background color if we in the future we want to also allow the user to modify the color of their calendar we could define a class calanderColorChanger that implements customColor. In this way we won't have to touch existing modules.
journal_time/lib/customColor.dart
Found: (https://github.com/CS386-journal-time/CS386-journal-time.git )

L - Liskov substitution principle
To put this  principle simply you must be able to substitute the parent class for one of its children.

I - Interface Segregation Principle
This principle states that no client should have to depend on methods that they do not use. You should split your interface into smaller more specific groups.

D - Dependency Inversion Principle.
There are two main parts of this principle. First your high level modules shouldnt be dependent on any low-level modules however both should depend on interfaces/ abstractions. The second is that your abstractions shouldn't depend on Details.
