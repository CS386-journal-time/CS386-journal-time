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

* Other journaling and note taking apps - We will utilize features in similar note taking apps, such as text boxes. These apps are considered stakeholders as they will be our competitors.


## 3. Functional Requirements (features)

1. Users can enter their own text (journal) entries.

2. Users can choose which photos they would like displayed on their journal.

3. Users can choose if they want different locations they visited throughout the day displayed on their journal.

4. User may choose whether or not to pull relevant news articles into their journal.

5. User can choose a journal theme. (journal theme will include color and font)

6. User may choose to share their journal with other people via email, text link or through the app.

7. Users can share their journal with others for group collaboration.

8. Users can login with and share directly to social media.

9. Users may choose to incorporate weather data into their journal.

10. User can use their favorite streaming service to incorporate music in the journal.

11. Users can craft their journal entries with options other than text input. (stylus, voice, etc.).

## 4. Non-functional requirements

1. Security (Secure storage of entries)

2. Ease of use (creating/editing entries)

3. Efficiency (quickly finding already created entries)

4. Portability (multiple device sharing)

5. Performance (ability to load journal entries within seconds)

## 5. MVP

To create our minimum viable product, we will begin with the basics of our app, photo and text input with a coherent and clean user interface.  Capture will be a no-frills journaling app with the ability to share entries in its first iteration.

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
