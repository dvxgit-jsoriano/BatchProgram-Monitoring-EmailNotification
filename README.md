# BatchProgram-Monitoring-EmailNotification

- BatchProgram-Monitoring-EmailNotification - This is a task to be run from a task scheduler every desired minutes or every hour depending on your preference. This also uses blat (already included in this source) to send email automatically to the recepient. It has been tested to send to only one email. Feel free to update and create Pull Request.

## Installation

- Visit blat documentation from [here](https://www.blat.net/) in order for you to familiarize using blat to send email.
- Clone the source `git clone https://github.com/dvxgit-jsoriano/BatchProgram-Monitoring-EmailNotification.git`
- Go to the directory where your program is.
- Run `Blat -install localhost <your_email_sender> <attempts> <port>` ex. `Blat -install localhost testemail@test.com 3 25`
- Copy the monitor.source.bat, `copy monitor.source.bat monitor.bat`
- Update your **monitor.bat** with your email credentials and server information that you want to monitor.

## Scheduling

1. Open the Task Scheduler by pressing the Windows key, typing "Task Scheduler," and selecting the "Task Scheduler" app.

2. In the Task Scheduler window, click on "Create Basic Task" in the Actions panel on the right-hand side. This will launch the Create Basic Task Wizard.

3. In the Create Basic Task Wizard, provide a name and description for your task. Click "Next" to continue.

4. Choose the trigger for your task. In this case, select "Daily" and click "Next."

5. Set the starting date and time for your task. Make sure to set the "Recur every" option to "1" and select "hour(s)" from the dropdown menu. Click "Next" to proceed.

6. Select "Start a program" as the action for your task and click "Next."

7. Click the "Browse" button to locate and select your .bat file. Once you've chosen the file, click "Next."

8. Review the summary of your task. If everything looks correct, click "Finish" to create the task.

9. To make sure the task runs properly, you may need to modify some additional settings. Locate your task in the Task Scheduler Library (left-hand side of the Task Scheduler window) and double-click on it.

10. In the task's Properties window, go to the "Triggers" tab and double-click on the trigger you created.

11. In the Edit Trigger window, ensure that "Enabled" is checked and click on the "Advanced Settings" button.

12. In the Advanced Settings window, check the box next to "Repeat task every" and set the duration to "Indefinitely." Click "OK" to save the changes.

13. Close the task's Properties window.

## Developer

- Checkout my github [Jerome Soriano](https://github.com/dvxgit-jsoriano)

*Buy me a coffee*