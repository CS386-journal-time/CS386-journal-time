# D6 Implementation_2

## 1. Description

Journal Time is a journal-taking mobile application that integrates information, such as photos, locations, and contacts into entries to provide context. The users of this application can avoid leaving out important information in their entries by providing contextual information already within their phone and the internet. When using Journal Time, the user will log into their account and view a calendar where they can select the date that they would like to make an entry for. From here, the user can type their entry into a text box, customizing the font and color of their text as well as the background of the overall entry.

Users can also enter photos from their camera or camera roll into entries, as well as their location. Their entry will be saved to their account through the server where they can later access and edit it through their phone or another device. Users also get the chance to share what is going on in their lives through sharing their entries. Users can either email or text PDF versions of their entries to any friends or family they would like.


## 2. Implemented requirements

We have added new requirements to this version of Journal Time and also updated previous features.  

### D2 Implemented requirements

* **Created User Registration** (Seth)
Trello: https://trello.com/c/cxguNIui
Pull Request: Brendan / Keil
![Login](./img/login.PNG)

* **Connections to Firecloud database** (Seth, Brendan)
Trello: https://trello.com/c/cxguNIui
Pull Request: Brendan / Keil
![Edit](./img/edit.PNG)

* **Updated User Interface** (Brendan, David)
Trello: https://trello.com/c/K7ZxGDXA
Pull Request: Brendan / Keil
![Display](./img/display.PNG)

* **Updated Customization: Canvas and background colors** (David)
Trello Card: https://trello.com/c/6pO2iMAV
Pull Request: Brendan / Keil
![Color1](./img/color1.PNG)
![Color2](./img/color2.PNG)

* **Map Display** (Brendan, Shelby)
Trello Card: https://trello.com/c/6pO2iMAV
Pull Request: Brendan / Keil
![Color2](./img/map.PNG)

* **Docker and VM Setup** (Keil)
https://trello.com/c/KH1kOUqn


### D1 Implemented Requirements

* **Calendar Display** (Brendan, David))

Trello Card: https://trello.com/c/uPbgsTPg/22-as-a-journal-taker-i-want-to-link-a-calander-day-to-a-journal-page-to-add-context-to-my-notes

Pull Request for Implementation:

* **Basic Navigation** (Seth, Brendan, Shelby)

Trello Card:

Pull Request for Implementation:

* **Text Box for a Journal Entry** (Brendan)

Trello Card: https://trello.com/c/H96k0Ni1/19-as-a-journal-taker-i-want-to-create-a-new-journal-page-to-organize-my-thoughts-and-notes

Pull Request for Implementation:

* **Ability to select a photo from the smartphone** (Seth)

Trello Card: https://trello.com/c/hUaz1ZNG/21-as-a-journal-taker-i-want-to-upload-images-to-a-journal-page-to-provide-context-to-my-notes

Pull Request for Implementation:

* **Basic Color Customization** (David)

Trello Card: https://trello.com/c/YE79Ogda/24-as-a-journal-taker-i-want-to-customize-my-workspace-so-my-journal-pages-can-be-personalized

Pull Request for Implementation:

* **Mapbox Location Identifier** (Shelby)

Trello Card: https://trello.com/c/6pO2iMAV/27-as-a-journal-taker-i-want-each-journal-page-to-highlight-places-that-i-visited-that-day-so-that-i-can-recall-events-that-i-might

Pull Request for Implementation: https://github.com/CS386-journal-time/journal_time/pull/3

This was implemented by Shelby and reviewed and approved by __________.

* **AWS and Docker Set Up** (Seth, Keil)

Trello Card: https://trello.com/c/cxguNIui/26-as-a-journal-user-i-want-to-be-able-to-login-to-my-account-from-other-devices-so-that-i-can-access-my-entries

Pull Request for Implementation:

## 3. Demo

App Video (David)


## 4. Code Quality

We managed code quality by routinely testing and reviewing each other's code. By looking through one another's code, we were able to give ourselves the opportunities to make any necessary changes to formatting to ensure better code quality.  In order to maintain code quality, we also made sure to discuss how we were formatting our code and organizing our files in each of our meetings. This helped us make sure that we were consistent in our formatting and organization, making it easier to read, edit, and locate specific coding.

That said, maintaining code across the users was somewhat challenging even when utilizing Git.  First, some
team members had trouble getting the root project to run properly.  This encouraged us to rethink how to store Android Projects on Git.  We ended up storing the projects in a folder within Git and this seemed to fix the first issue.  However, there are real challenges in such time compressed project.  As our team simultaneously worked on different aspects of the project such as features, backend, and user interface, there was always additional effort in merging different branches.  For example, when certain aspects of the backend needed to get updated, it changed some of the design of our classes and required updates in the UI to be done manually.   

We also recognize a need to do better commenting within our code.  Our class names and variables are really good, but there could be better opportunity to explain certain functions and aspects of the code.  It would also be helpful as we improve and update the App.  

Overall, the team put in a good effort to work through issues and continues to implement and improve our strategies to ensure code quality.  


## 5. Lessons Learned

Firebase is complicated.  
