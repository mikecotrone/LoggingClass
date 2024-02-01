Logging Module For Xojo
=======================

Written by: Mike Cotrone (mikec@intelligentvis.com)


Logging Module Q & A
===================
What is this Logging Module?
        
        This is a Xojo module that supports facility log levels, subsystem category, and log messages using a timestamp
        format similar to syslog

Is this a GUI App?
        
        I have provided a brief quick demo GUI for demo purposes. The GUI has a "Submit Buttons" that has actions in
        which submits your entries to the actual logfile and then calls a function to display your log on the GUI Text
        Area.
        
How Do I see the log file directly?
        
        There are a few Constants that you will want to change in order to set the desired file names and paths for the 
        following:
                    
                    System Log File: systemLogFile
                    
                    System Log Dir:  systemLogFileDir
                        
                    Default Log File Directory (if you dont change it): LogFileDir
                    
                    Open a Shell: tail -f <logfile>
                    
        
Does this class cost anything?
        
        NO this class is free to use and is licensed under the BSD-3 Clause license

Dude you need to change or add this....
        
        Send me an email mikec@vistatechgso.com
