# D2. Requirements

Results of the requirements engineering for Journal Time.

## 1. Positioning

### 1.1 Problem Statement

The problem of Context and information loss affects everyone using technology; the impact of which causes people to miss remember and tell false stories.

### 1.2 Product Position Statement

For people who appreciate logging experiences from they day, Capture is a journaling app that automatically integrates relevant information, such as photos into entries. Unlike other journaling and note-taking applications, Capture takes care of integrating information into journal entries for its users.

### 1.3 Value Proposition

Journal Time is a diary app that allows users to create detailed journal entries and provides an enhanced journaling experience through the ability to use multiple forms of context.

## 2. Stakeholders

* Those who journal - People downloading Capture in order to keep track of their lives and integrate relevant information into their entries.  We believe that there will be initial interest from those who wish to capture the most detail about their daily lives.

* Journal app Developers - people who design and create the proper specifications for the journal app. they will also test and improve the app for those who use the journal app over time.


## 3. Functional Requirements (features)

1. Users can enter their own text (journal) entries.

2. Users can choose which photos they would like displayed on their journal.

3. Users can choose if they want different locations they visited throughout the day displayed on their journal.

4. User may choose whether or not to pull relevant news articles into their journal.

5. User can choose a journal theme. (journal theme will include color and font)

6. User may choose to share their journal with other people via email, text link or through the app.

## 4. Non-functional requirements

Lorem Ipsum

## 5. MVP

Lorem Ipsum

## 6. Use cases

### 6.1 Use case diagram

Lorem Ipsum

### 6.2 Use case descriptions

#### Use-Case: Edit Journal Entry

1.	Brief Description
This function allows a user to edit (including a new entry) a journal entry for a
specific day.

2.	Actors
**2.1	Journal User**
**2.2	Back-end Server (?)**

3.	Preconditions
The Journal User has navigated to a day page.

4.	Basic Flow of Events
*	1.  The use case begins when Journal User goes to a specific day and decides to .
* 2.  The Journal user can see a small text box with either no text if it is a previously unwritten journal or the “hardcoded” text of that day’s entry that the user had previously written.
* 3.	The user “taps” on the text box area to edit the text.
* 4.	A keyboard will rise up from the bottom and the previously “hardcoded” text box will change to a text box that the user can edit.
* 5.	The user will use basic texting tools to edit a journal entry.
* 6.	Journal User will either press “save” to accept the changes or “cancel” to cancel the edits
* 7.	If “save” is pressed, the journal entry object is updated with the new text
* 8.	The use case ends successfully.  The page reverts to the “hardcoded” text version where the new edits have been included, and user has ability to navigate throughout the app.  

5.	Alternative Flows
**5.1	Cancel**
If in step 6 of the basic flow Journal User use case: user selects cancel.
* The use case ends with no changes.  The page reverts to the “hardcoded” text version with no edits being included, and user has ability to navigate throughout the app.  

**5.2	Navigate Back / Cancel Key**
If at any point during the editing prior to a save, if the Journal User presses the cancel key, this will act the same as pressing “cancel” where no changes are updated and the Journal user is taken back to the day’s page.

6.	Key Scenarios
**6.1	Journal User makes changes**
**6.2	Journal User cancels changes**

7.	Post-conditions
**7.1	Successful Completion**
The journal entry has been updated with new text or canceled.  That days journal entry reflect changes and can be viewed by the Journal User.

8.	Special Requirements
The basic display text box should expand for increasing amounts of text
s

## 7. User stories

Lorem Ipsum

## 8. Trello

Lorem Ipsum
