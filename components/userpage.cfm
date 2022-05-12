    <cfif StructKeyExists(Session.mystruct,"loggedin")>
        <cfif Session.mystruct.role eq "user">
            <cfinclude template="header.cfm">
            <cfset data=createObject("component","task2")>
            <cfset PageList=data.fetchdata()> 
                <cfoutput query="pageList">
                    <li>
                        <a href="fullpage.cfm?id=#id#">#page_name#</a>
                    </li>
                </cfoutput>
                <cfelse>
                    <cflocation url="../index.cfm">
        </cfif>
        <cfelse>
            <cflocation url="../index.cfm">
    </cfif>