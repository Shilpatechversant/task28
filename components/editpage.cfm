<cfapplication name="login" sessionTimeout="#CreateTimeSpan(0, 0, 60, 60)#" sessionManagement="yes">
    <cfif StructKeyExists(Session.mystruct,"loggedin")>
        <cfif Session.mystruct.role eq "admin" OR Session.mystruct.role eq "editor">
        <cfinclude template="header.cfm">
        <cfset data=createObject("component","task2")>
        <cfset editform=data.editdata()>
        <cfoutput query="editform">
            <html>
                <head>
                    <link rel="stylesheet" href="components/css/style.css">
                    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
                    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
                    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
                    <title>Page Edit Form</title>
                </head>
                <body>                    
                    <div class="special_class">
                        <div class="col-md-6 col-md-offset-2">
                            <h3>Edit Details</h3>
                            <form action="update.cfm?From=DoEdit&ID=#id#" method="post">
                                <div class="form-control">
                                    <input type="text" name="page_name" value="#page_name#">
                                </div>
                                <div class="form-control">
                                    <textarea name="page_desc" rows="5">#page_desc# </textarea>
                                </div>
                                <div class="form-btn-control">
                                    <input type="submit" class="btn btn-info" name="submit" value="update"/>
                                </div>
                            </form>
                        </div>
                    </div>             
                </body>
            </html>
        </cfoutput>
    <cfelse>
         <cflocation url="../index.cfm">
    </cfif>
    <cfelse>
        <cflocation url="../index.cfm">
    </cfif>