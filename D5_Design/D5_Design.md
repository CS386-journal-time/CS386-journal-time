# D.5 Design


## 1. Description

Journal Time is a journal-taking mobile application that integrates information, such as photos, locations, and contacts into entries to provide context. The users of this application can avoid leaving out important information in their entries by providing contextual information already within their phone and the internet. When using Journal Time, the user will log into their account and view a calendar where they can select the date that they would like to make an entry for. From here, the user can type their entry into a text box, customizing the font and color of their text as well as the background of the overall entry.


Users can also enter photos from their camera or camera roll into entries, as well as their location. Their entry will be saved to their account through the server where they can later access and edit it through their phone or another device. Users also get the chance to share what is going on in their lives through sharing their entries. Users can either email or text PDF versions of their entries to any friends or family they would like.

## 2. Architecture

<img alt="Journal Time Application Architecture Diagram" src="./img/ArchitectureDiagram.jpg" width=680/>

*fig 2.1 Journal Time Application Architecture Diagram*

We've chosen a server/ client architecture with a focus on local storage. The mobile application may only communicate with the Server and the Local System tools, any communication that the app has to do with the internet or other outside systems is first passed through the server. The Packages shown above represent classes within the application. 

Where packages are "*nested*" represents that the inside Class is a member of the outside Package.  Where a Packages and/or Classes is connected by a line or arrow represents a direct communication or connection. Where there is no connecting arrow, there is also no means of direct interaction, though there still may be indirect communication between members of the same Package or by using an intermidiary such as "**News Stories**" querying the Server which wil then use "**MakeAPICall**" to query the "**NewsAPI**."

## 3. Class Diagram

As we develop insights into our implementation, we are able to provide updated class diagram that shows the interactions between the various classes.

![classDiagram](./img/classDiagram.png)

## 4. Sequence Diagram

Lorem ipsum

## 5. Design Patterns

**Observer Design Pattern.  Passing the Selected Date (or choiceDay) to other entities.**

![classDiagram](./img/observe.png)

Within the Journal Time application, journal entries and their components will be organized based on the associated date (or choiceDay).  It will act effectively as a key to backend operations so that we can properly save and build the components of a Journal Entry.  Accordingly, the choiceDay will have to be provided throughout the program from class to class starting with the Calendar class.  

Our current design is no pass the choiceDay: DateTime parameter with each navigation.  However, we are also considering implementing an Observer Design Pattern that would allow the different classes to be notified and updated when there is a change to the choiceDay.  Our project is being built with Flutter, and it has some cool tools to help developers manage states and data across screens and classes.  One of those is from a package called Provider that utilizes Change Notifiers and Providers to update data and state across different classes.  As we build out our application design, we are determining where it makes the most sense to use Change Notifiers and where to simply pass the choiceDay as a Parameter in navigation.  For a simple application , just passing the choiceDay in navigation would probably suffice but as we add features and functionality, an Observe Design Pattern may become more relevant.  

Calendar: 	https://github.com/CS386-journal-time/CS386-journal-time/blob/master/journal_time/lib/main.dart

Day: 	https://github.com/CS386-journal-time/CS386-journal-time/blob/master/journal_time/lib/Day.dart


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
