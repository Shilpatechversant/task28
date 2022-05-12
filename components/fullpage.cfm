  <cfif StructKeyExists(Session.mystruct,"loggedin")>
      <cfif Session.mystruct.role eq "user">
          <cfinclude template="header.cfm">
           <cfset data=createObject("component","task2")>
            <cfset PageList=data.rdata()>         
              <cfoutput query="PageList">
                  <html>
                      <head>
                          <link rel="stylesheet" href="components/css/style.css">
                          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
                          <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
                          <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
                          <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
                          <title>Page Details</title>
                      </head>
                      <body>
                          <section>
                              <div class="pagedetails">
                                  <div class="col-md-6 col-md-offset-2">
                                      <h3>Page Details</h3>
                                      <h6>#page_name#</h6>
                                      <br>
                                      <p> #page_desc# </p>
                                  </div>
                              </div>
                              </div>
                          </section>
                      </body>
                  </html>
              </cfoutput>
              <cfelse>
            <cflocation url="../index.cfm">
        </cfif>
      <cfelse>
    <cflocation url="../index.cfm">
  </cfif>