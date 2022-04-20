<cfapplication name="login" sessionTimeout="#CreateTimeSpan(0, 0, 60, 60)#"
sessionManagement="yes">
  <cfif  StructKeyExists(Session.mystruct,"loggedin")>
     <cfif Session.mystruct.role eq "user" >
<cfinclude template = "header.cfm">
    <cfquery name="pageList" datasource="newtech">
            SELECT * FROM sakila.cms_pages
    </cfquery>
<cfoutput query="pageList">
<li>
<a href="fullpage.cfm?id=#id#" >#page_name#</a>
</li>
</cfoutput>
     <cfelse>
        <cflocation url="../index.cfm" >
     </cfif>
 <cfelse>
    <cflocation url="../index.cfm" >
 </cfif>