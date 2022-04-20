<cfapplication name="login" sessionTimeout="#CreateTimeSpan(0, 0, 60, 60)#"
sessionManagement="yes">

 <cfif StructKeyExists(Session, "mystruct")>

                     <cfset Session.mystruct["loggedin"] = true>                                
              <cfif Session.mystruct.role  eq "admin" OR Session.mystruct.role eq "editor">     
              <cflocation url="components/adminpage.cfm" >                
            <cfelseif Session.mystruct.role  eq "user">  
          <cflocation url="components/userpage.cfm" >          
            </cfif>  

     </cfif> 