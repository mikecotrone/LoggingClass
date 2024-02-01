#tag Module
Protected Module LogModule
	#tag Method, Flags = &h0
		Function formatReadLogResult(timestampStr as String, loglevelStr as String, subsystemStr as String, logMsgStr as String) As String
		  Const col02SpacingStr as String = "     "
		  Const col04SpacingStr as String = "     "
		  Const col06SpacingStr as String = "        "
		  
		  Return timestampStr + col02SpacingStr + loglevelStr + col04SpacingStr + subsystemStr + col06SpacingStr + logMsgStr + EndOfLine
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function formatWriteLogResult(timestampStr as String, loglevelStr as String, subsystemStr as String, logMsgStr as String) As String
		  Return timestampStr + "," + loglevelStr + "," + subsystemStr + "," + logMsgStr + EndOfLine
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function systemLog(logfacility as Integer, subsystem as String, message as String) As Boolean
		  Var isProcessedBln as Boolean
		  Var thisDateTime as New Date
		  Var thisDateTimeStr as String = Str(thisDateTime)
		  
		  Select Case userLogFacilityLevelInt
		  Case 0
		    // Do Nothing as Facilty Log Level 0 means Logging Disabled
		    
		  Case 1
		    
		    if logfacility = 1 Then
		      isProcessedBln = writeLogFile(thisDateTimeStr, logfacility, subsystem,message)
		    end if
		    
		  Case 2
		    
		    if logfacility = 1 OR logfacility = 2 Then
		      isProcessedBln = writeLogFile(thisDateTimeStr, logfacility,subsystem,message)
		    end if
		    
		  Case 3
		    
		    if logfacility = 1 OR logfacility = 2 OR logfacility = 3  Then
		      isProcessedBln = writeLogFile(thisDateTimeStr, logfacility,subsystem,message)
		    end if
		    
		  Case 4
		    
		    if logfacility = 1 OR logfacility = 2 OR logfacility = 3  OR logfacility = 4 Then
		      isProcessedBln = writeLogFile(thisDateTimeStr, logfacility,subsystem,message)
		    end if
		    
		  End Select
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function writeLogFile(timeStamp as String, logfacility as Integer, subsystem as string, message as String) As Boolean
		  Var LogFile As FolderItem
		  Var Tos as TextOutputStream
		  Var LogMessage as String
		  
		  // FOLDER LOCATION FOR LOG FILE
		  LogFile = SpecialFolder.UserHome
		  
		  // LOG MESSAGE STRING CREATION
		  Var thisTimeStampStr as String = Str(TimeStamp)
		  Var thisLogFacilityStr as String = Str(logfacility)
		  LogMessage = formatWriteLogResult(thisTimeStampStr, thisLogFacilityStr, subsystem, message)
		  
		  if LogFile <> nil AND LogFile.Exists AND LogFile.Directory then
		    LogFile = SpecialFolder.UserHome.Child(kSystemLogFileDir)
		    if LogFile <> nil then
		      if not LogFile.Exists then LogFile.CreateAsFolder
		      if LogFile.Directory then
		        LogFile = LogFile.Child(kSystemLogFile)
		        if LogFile <> nil then
		          if not LogFile.Directory then
		            if LogFile.Exists then
		              Tos = TextOutputStream.append(LogFile)
		              
		            else
		              Tos = TextOutputStream.Create(LogFile)
		              
		            end if
		            
		            Tos.Write(LogMessage)
		            Tos.Close
		            
		          end if
		        end if
		      end if
		    end if
		  end if
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		userLogFacilityLevelInt As Integer
	#tag EndProperty


	#tag Constant, Name = kSystemLogFile, Type = String, Dynamic = False, Default = \"testlogfile.log", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kSystemLogFileDir, Type = String, Dynamic = False, Default = \"LogFileDir", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="userLogFacilityLevelInt"
			Visible=false
			Group="Behavior"
			InitialValue="4"
			Type="Integer"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
