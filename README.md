ReadMe

Brainstorming:
Initially, our idea was to build a Laundry app, but we considered it and felt that the market was already saturated. Then we reworked that and felt like retro games were an interesting niche market. 

The process we took was a bit backwards, in that we created a mock-up (a visual model) and THEN began our User Experience research/design. Inevitably that model stayed as our basis for the app. We had created a model that had already dictated the general flow of the design.  

User Experience Research:
We drafted several questions to begin interviewing users, and our interviews, even without statistical analysis, gave us the impression that the audience for the app would be relatively small. However, looking at general demographic information for video game users and e-commerce users was encouraging. And with the user personas and scenarios we were better able to try to merge the two sides of the coin and it did help us to narrow down what features/functions were useful and which ones we needed to eliminate.

Github/Workflow
Since Daniel created the initial models, we decided to make his copy the Master branch. Kevin forked the Master branch and was working in that fork, until realizing that he’d not be able to merge any of his changes. So a Daniel gave Kevin permissions and he made a separate branch, thankfully because of the decision to ditch Ebay’s API, there wasn’t much lost. And Daniel had been mainly focused on User Interface Elements in Week 2. 

However, mid way through Week 3, Daniel hit issues while working with Cocoa Pods in his project so he created a 3rd branch off Kevin’s branch. 

The Code:
Our first concern was where the games were currently, so we wanted to see if Amazon or Ebay had a use-able API. Ebay’s documentation was readily available but seemed harder to decipher their materials. We didn’t dive into Amazon’s API, mostly because we thought that Ebay was the cheaper option (for buyers) and that Amazon’s might cost money. 

Kevin spent several days trying to get the Ebay API working, trying to sort info out of their searchAPI, but their API structure was full of nested objects, within objects, within objects so sorting was a problem. And there was no clear documentation about if their API allowed for some sort of login. Eventually we decided to ditch the Ebay API due to complexity and age, Daniel found a reference stating one of their APIs hadn’t been updated since 2009! 

Our classmates had already been working with Parse and seemed to be working well. We thought the Facebook Login SDK would incorporate well, allowing users to connect to a larger base of existing users. Kevin tried to work with the Login SDK for 2 days and wasn’t able to have the extension screen return to the app, or for the login data to serialize. 

So we shifted to create a server base (of our own) via Parse with our own (hypothetical) inventory and users. The idea would shift in that buyers could also be buyers as well and then list their own games, very similar to Ebay. User Accounts would stay native to the App and our servers (yesss…we want ALL YOUR DATA!!!) as Daniel enlisted the help of Miles for resolving the Login code.

Daniel setup the Parse Dashboard that allowed him to add several mock users and items, so Kevin began to work out the searchQuery from Parse. Kevin encountered some issues iterating through the Struct but was able to resolve them with Justin’s help.

Meanwhile Daniel had been working on pushing an item to Parse with text fields and a captured image. At this moment text fields append to Parse but not images.

Kevin dealt with the collection view and was able to convert images back down through.

And as of this moment we are able to append items to a checkout cart but cannot push that data back to Parse. And Daniel was able to add a Share function to the Merchant Profile. 

Summary:
In conclusion, there are several features that the app is missing, in particular a pay function, we had intended to use Apple Pay but were not able to finish in time. We also need to resolve the ability to push purchased items as well as confirm payments. The other issue is lack of more extensive user testing to determine a better flow and a more polished intuitive interface. 
