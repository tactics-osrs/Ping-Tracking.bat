## Ping Tracking
This is a simple Windows batch script that continuously pings a specified domain and logs the results. It’s useful for monitoring the availability and latency of a website over time.

## How it works
When you run the script, it prompts you to enter the domain you want to ping (e.g., github.com). It then enters a loop where it does the following:

• Logs the current time to a text file (pingresults.txt).

• Pings the specified domain once and appends the result to the same text file. 
(Meaning it will create a .txt file to the location of the script, If "pingresults.txt" doesn't exist, and log the data from the Ping to the .txt file.)

• Waits for 5 seconds before repeating the process.

• The script will continue to run and log ping results until you manually stop it.

• Pressing Enter will nulify the timer and instantly send a ping, if you choose to rapidly do so manually.

## Error Handling
Before logging the ping result, the script first checks if the domain is responding using the find command. If the ping command does not find the phrase “Reply from” in its output, it means there was no response from the domain. In this case, the script prints an error message and goes back to the domain input prompt.

## Usage
To use this script, simply run it in a command prompt. You’ll need to have the necessary permissions to write to the directory where the script is located, as it needs to create and write to pingresults.txt.

## Note
Please note that this script is intended for use on Windows systems, as it uses the Windows ping command and batch file syntax.


## DISCLAIMER:
This batch file was written for personal utility and for educational/experience purposes only. Do not mis-use this file. 
I do not hold any responsibility of the use/misuse of this script. The code is open-source, of course! As it's a .bat file, please save it as such if you are going to copy the raw code to your notepad.
