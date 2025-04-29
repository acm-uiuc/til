---
title: Using Gmail for your Illinois Email
category: uiuc
---

By default the University provisions everyone an Outlook inbox for university use. However, with some reconfiguration, you can set it up such that you can use Gmail instead of Outlook for accessing your university email. In this tutorial, replace `<NETID>` with your Illinois NetID (the part before `@illinois.edu`).

**Disclaimer: If for some reason this stops working, it is still your responsibility to make sure that you are able to view all emails being sent to your Illinois email account.** That being said, the author has not had an issue with this method for over a year.

To get started, we first need to enable your university Google Apps account. Go to [the Illinois Cloud Dashboard](https://cloud-dashboard.illinois.edu/) and enable the `Google Apps @ Illinois` service.

Once your Google account is provisioned, we first want to redirect all _external_ email to Gmail. Go to the [Tech Service Electronic Directory Editor](https://ede.techservices.illinois.edu/). There, change the `mail` field to `<NETID>@g.illinois.edu` and click "Apply".

Next, we need to redirect _internal_ email to your Gmail inbox. Log into your Illinois Outlook mail, and click on the Settings gear and then "Rules". [This direct link may also work](https://outlook.office.com/mail/options/mail/rules). Create this rule **as the top rule**:

```
Name: Forward email to Illinois Gmail
Add a condition: Apply to all messages
Add an action: Redirect to: <NETID>@g.illinois.edu
Add an exception: To: <NETID>@g.illinois.edu
Checked: Stop processing more rules.
```

![Screenshot of Outlook configuration](/images/gsuite_screenshot.png)

Then, click "Save" and exit. From here on out, your Illinois email should now be fully accessible from your Illinois Gmail inbox! A copy of emails recieved to your Illinois Outlook will be retained in Outlook and then transparently forwarded to your Illinois Gmail account.
