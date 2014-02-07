LoggingClass
============

Xojo Module for Syslog Style File Logging

Written by: Mike Cotrone (mikec@intelligentvisibility.com)


Logging Class Q & A
===================
What is this Logging Module?
        
        This is a Xojo module that supports facility log levels, subsystem category, and log messages using a timestamp
        format similar to syslog

Is this a GUI App?
        
        I have provided a brief quick demo GUI for demo purposes. The GUI has a "Submit Button" that has an action in
        which submits your entries to the actual logfile and then calls a function to display your log on the GUI Text
        Area.
        
How Do I see the log file directly?
        
        There are a few Constants that you will want to change in order to set the desired file names and paths for the 
        following:
                    
                    System Log File: kSystemLogFile
                    
                    System Log Dir:  kSystemLogFileDir
                    
                    
                    
                    Error log File:  kErrorLogFile
                    
                    Error log Dir:   kErrorLogFileDir
                    
                    
                    Default Log File Directory (if you dont change it): LogFileDir
                    
                    Open a Shell: tail -f <logfile>

Why is there an Error and Systelog methods?
       
        I personally found a need to log system messages separately from my errors so I separated the two.
        
Does this class cost anything?
        
        NO this class is free to use and is licensed under the BSD-3 Clause license

Dude you need to change or add this....
        
        Send me an email at mikec@intelligentvisibility.com or on twitter: mike_cotrone
