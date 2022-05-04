<cfcomponent>
    <cfapplication name="login" sessionTimeout="#CreateTimeSpan(0, 0, 60, 60)#" sessionManagement="yes">

    <cffunction name="insertdetails" access="remote">
        <cfargument name="username" type="string" required="true">
        <cfargument name="password" type="string" required="true">
        <cfquery datasource="newtech" name="result" result="outputdata"> SELECT * FROM sakila.cms_table WHERE username = "#arguments.username#" AND pwd="#arguments.password#" </cfquery>
            <cfif outputdata.RECORDCOUNT GT 0>
                <cfloop query="result">
                    <cfset user_role=#role#>
                </cfloop>
                <cfif NOT StructKeyExists(Session, "mystruct" )>
                    <cflock timeout=20 scope="Session" type="Exclusive">
                        <cfset Session.mystruct=structNew()>
                    </cflock>
                </cfif>
                <cfset Session.mystruct["username"]=arguments.username>
                <cfset Session.mystruct["role"]=#user_role#>
                <cfset Session.mystruct["loggedin"]=true>
                <cfif result.role eq "admin" OR result.role eq "editor">
                    <cflocation url="adminpage.cfm">
                    <cfelseif result.role eq "user">
                    <cflocation url="userpage.cfm">
                </cfif>
                <cfif #user_role# eq 'user'>
                    <cflocation url="userpage.cfm">
                </cfif>
            </cfif>
            <cflocation url="../index.cfm?error=2">
    </cffunction>

    <cffunction name="logout" access="remote">      
        <cfset StructClear(Session.mystruct)>
        <cflocation url="../index.cfm">
    </cffunction>

    <cffunction name="getdata" access="remote">      
        <cfquery datasource="newtech"> 
         INSERT INTO sakila.cms_pages (page_name, page_desc) VALUES
         (<cfqueryparam value="#form.head#" cfsqltype="cf_sql_longvarchar">,<cfqueryparam value="#form.des#" cfsqltype="cf_sql_longvarchar">) 
         </cfquery>
        <cflocation url="adminpage.cfm?sucess=1">
    </cffunction>

    <cffunction name="fetchdata" access="remote">   
        <cfquery datasource="newtech" name="result" result="sdata"> 
             SELECT * FROM sakila.cms_table
        </cfquery>    
        <cfreturn sdata>     
    </cffunction> 
</cfcomponent>