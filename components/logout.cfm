    
<cfapplication name="login" sessionTimeout="#CreateTimeSpan(0, 0, 60, 60)#"
sessionManagement="yes">
    <cfset StructClear(Session.mystruct)>
    <cflocation url="../index.cfm" >