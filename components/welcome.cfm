<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<cfif NOT StructKeyExists(Session, "mystruct")>
<cfoutput><h3> session not exist </h3></cfoutput>
        <cflocation url="../index.cfm" >
</cfif>
   
   <cfif  StructKeyExists(Session.mystruct,"loggedin")>
    <cfoutput><h1>Welcome #Session.mystruct.role#</h1>
    <form action="" method="post">

    <cfquery name="get_pages" result="output" datasource="newtech">
SELECT * from sakila.cms_pages
</cfquery>
 <cfif output.RECORDCOUNT GT 0> 
<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Name</th>
      <th scope="col">Description</th>
      <th scope="col">manage</th>
    </tr>
  </thead>
  <tbody>
      <cfloop query = "get_pages"> 
    <tr>
      <th scope="row">1</th>
      <td>#page_name#</td>
      <td>#page_desc#</td>
      <td></td>
  </tr>
  </cfloop>

  </tbody>
</table>
</cfif>

    <button type="submit" name="form_submit"> logout</button>
    
    
    
    </form>
     </cfoutput>

     

     
             <cfelse>
             <cflocation url="../index.cfm" >
 </cfif>


 <cfif IsDefined("form.form_submit")>
    <cfset StructClear(Session.mystruct)>
    <cflocation url="../index.cfm" >
 </cfif>



