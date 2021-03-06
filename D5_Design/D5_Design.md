# D.5 Design


## 1. Description

Journal Time is a journal-taking mobile application that integrates information, such as photos, locations, and contacts into entries to provide context. The users of this application can avoid leaving out important information in their entries by providing contextual information already within their phone and the internet. When using Journal Time, the user will log into their account and view a calendar where they can select the date that they would like to make an entry for. From here, the user can type their entry into a text box, customizing the font and color of their text as well as the background of the overall entry.


Users can also enter photos from their camera or camera roll into entries, as well as their location. Their entry will be saved to their account through the server where they can later access and edit it through their phone or another device. Users also get the chance to share what is going on in their lives through sharing their entries. Users can either email or text PDF versions of their entries to any friends or family they would like.

## 2. Architecture

<img alt="Journal Time Application Architecture Diagram" src="./img/ArchitectureDiagram.jpg" width=680/>

*fig 2.1 Journal Time Application Architecture Diagram*

We've chosen a server/ client architecture with a focus on local storage. The mobile application may only communicate with the Server and the Local System tools, any communication that the app has to do with the internet or other outside systems is first passed through the server. The Packages shown above represent classes within the application.

Where packages are "*nested*" represents that the inside Class is a member of the outside Package.  Where a Packages and/or Classes is connected by a line or arrow represents a direct communication or connection. Where there is no connecting arrow, there is also no means of direct interaction, though there still may be indirect communication between members of the same Package or by using an intermediary such as "**News Stories**" querying the Server which will then use "**MakeAPICall**" to query the "**NewsAPI**."

## 3. Class Diagram

As we develop insights into our implementation, we are able to provide updated class diagram that shows the interactions between the various classes.

![classDiagram](./img/classDiagram.png)

## 4. Sequence Diagram

![sequenceDiagram](./img/SequenceDiagramPhotoUseCase.PNG)

### Use Case: Importing a photo

### Description

* The user can import a photo into their entry.

### Actor

* User

### Pre-conditions

* The user has opened the app to the home screen (calendar view).

### Basic Flow of Events and Alternative Flows

1. User views a day's journal

2. User edits a journal entry

3. User chooses a direction for photo importation

   3.1 User selects a photo from the gallery

   3.2 User takes a photo with the camera

   3.3 User cancels the import

4. User saves the entry

5. User returns to the calendar view

### Post-conditions

* The image is successfully added to the entry.

## 5. Design Patterns

**Observer Design Pattern.  Passing the Selected Date (or choiceDay) to other entities.**

![classDiagram](./img/observe.png)

Within the Journal Time application, journal entries and their components will be organized based on the associated date (or choiceDay).  It will act effectively as a key to backend operations so that we can properly save and build the components of a Journal Entry.  Accordingly, the choiceDay will have to be provided throughout the program from class to class starting with the Calendar class.  

Our current design is no pass the choiceDay: DateTime parameter with each navigation.  However, we are also considering implementing an Observer Design Pattern that would allow the different classes to be notified and updated when there is a change to the choiceDay.  Our project is being built with Flutter, and it has some cool tools to help developers manage states and data across screens and classes.  One of those is from a package called Provider that utilizes Change Notifiers and Providers to update data and state across different classes.  As we build out our application design, we are determining where it makes the most sense to use Change Notifiers and where to simply pass the choiceDay as a Parameter in navigation.  For a simple application , just passing the choiceDay in navigation would probably suffice but as we add features and functionality, an Observe Design Pattern may become more relevant.  

Calendar: 	https://github.com/CS386-journal-time/journal_time/blob/master/lib/main.dart

Day: 	https://github.com/CS386-journal-time/journal_time/blob/master/lib/Day.dart

### Design Pattern #2 (Creational: Builder)

![classDiagramPhoto](./img/builder.png)  

The current iteration of the JournalEntry file accompanies the Photo, JournalText, and MapLocation classes.  JournalEntry provides the groundwork with the other 3 classes piggybacking off with their own set of methods. Each class provides their respective amount of data back to the entry page for display to the user.

JournalEntry: <https://github.com/CS386-journal-time/journal_time/blob/master/lib/JournalEntry.dart>

**Behavioral - the Command Design Pattern. loose coupling between homePage and customColor.**

![commandDesignDiagram](./img/CommandDesign.PNG)

Within the journal time application many of our classes interact with each other. However it is best if our classes do not heavily depend on one another. the custom Color class allows the user to personalize their experience with the click of a button. the user is brought into a new state created by the customColor class. the custom color class then does all the work before passing the users selected color back.
s
## 6. Design Principles

The Acronym SOLID stands for S - Single responsibility principle, O - Open/closed principle, L - Liskov substitution principle, I - Interface Segregation Principle, and D - Dependency Inversion Principle.

S - Single Responsibility principle
This principle states that every class should manage or have responsibility over a single part of the softwares functionality. For example in the journal time app there is one class for photo integration, customization and journaling. While they may pass some information back and forth each class is focused on one feature.
Photo.dart: https://github.com/CS386-journal-time/journal_time/blob/master/lib/Photo.dart


O - Open/Closed principle
The Open/Closed principle states that you should be able to add on or extend a classes behavior rather than modify it. One example from our code would be the customColor class which currently only modifies background color if we in the future we want to also allow the user to modify the color of their calendar we could define a class calanderColorChanger that implements customColor. In this way we won't have to touch existing modules.
CustomColor.dart: https://github.com/CS386-journal-time/journal_time/blob/master/lib/customColor.dart

L - Liskov substitution principle
To put this  principle simply you must be able to substitute the parent class for one of its children. Use inheritance properly so that things are contextualized , moderated and don't just extended because they have something in common. LSP is the principle which enables Open/Close principle. As we expand the personalization features we will add a calanderColorChanger class which would come from the customColor class. When implemented correctly the customColor class could replace the child calanderColorChanger there for following LSP.
CustomColor.dart: https://github.com/CS386-journal-time/journal_time/blob/master/lib/customColor.dart

I - Interface Segregation Principle
This principle states that no client should have to depend on methods that they do not use. You should split your interface into smaller more specific groups. For example, our classes Photo (which allows users to add photos to journal entries) and JournalEntry (which allows users to write text for journal entries) have independent methods from each other, even though they both extend from StatelessWidget. This ensures that they only depend on the methods needed to integrate their specific types of information, leading to more clean and concise code.
JournalEntry.dart: https://github.com/CS386-journal-time/journal_time/blob/master/lib/JournalEntry.dart

D - Dependency Inversion Principle.
There are two main parts of this principle. First your high level modules shouldn't be dependent on any low-level modules however both should depend on interfaces/ abstractions. The second is that your abstractions shouldn't depend on Details. We believe that we have done this with the design of the JournalEntries class.  There is an assortment of different attributes that could be added to the JournalEntry and a lot a functionality within the JournalEntry class.  Our design ensured that our model had flexibility in the classes that are added to each Journal Entry.  Furthermore, we have created a saveJournal method that can save objects from different classes to add to the Journal Entry.  
JournalEntry.dart: https://github.com/CS386-journal-time/journal_time/blob/master/lib/JournalEntry.dart
