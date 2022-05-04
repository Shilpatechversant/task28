<cfcomponent displayname="task2" hint="ColdFusion Component for Customers">    
    <cffunction name="fetchdata" access="remote">   
        <cfquery datasource="newtech" name="result"> 
             SELECT * FROM sakila.cms_pages
        </cfquery>    
        <cfreturn result>     
    </cffunction> 
    <cffunction name="editdata" access="remote">
       <CFQUERY NAME="editform" DATASOURCE="newtech">
            select * from sakila.cms_pages   
         WHERE id=<CFQUERYPARAM VALUE="#URL.ID#"> 
        </CFQUERY>         
        <cfreturn editform>     
    </cffunction> 
</cfcomponent>