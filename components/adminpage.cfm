  <cfapplication name="login" sessionTimeout="#CreateTimeSpan(0, 0, 60, 60)#" sessionManagement="yes">
      <cfif StructKeyExists(Session.mystruct,"loggedin")>
          <cfif Session.mystruct.role eq "admin" OR Session.mystruct.role eq "editor">
              <cfinclude template="header.cfm">
                  <hr>
                  <cfoutput>
                      <div class="col-md-6 col-md-offset-4">
                          <h6>Add Pages</h6>
                          <hr>
                          <form action="task1.cfc?method=getdata" method="post">
                              <div class="form-group"> Page Name : <input type="text" class="form-control" name="head" />
                                  <br />
                              </div>
                              <div class="form-group"> Page description : <textarea name="des" class="form-control"></textarea>
                                  <br />
                              </div>
                              <button type="submit" name="form_submit" class="btn btn-success"> Add </button>
                          </form>
                      </div>
                  </cfoutput>  
                  <cfif structKeyExists(url, "success")>  
                  <p>Data saved successfully</p>
                  </cfif>         
                  <hr>
                  <cfinvoke component="task1" method="fetch_data" returnVariable="pageList">    
                  </cfinvoke>               
                  <div class="col-md-6 col-md-offset-4">
                      <h5>ALL Page List </h5>
                      <table border="1">
                          <thead>
                              <tr>
                                  <th>Heading</th>
                                  <th>Description</th>
                                  <th>Action</th>
                              </tr>
                          </thead>
                          <cfoutput query="pageList">
                              <tr>
                                  <td> #page_name# </td>
                                  <td> #page_desc# </td>
                                  <td>
                                      <a href="deletepage.cfm?id=#id#">Delete <a />
                                          <br />
                                          <a href="editpage.cfm?id=#id#">edit <a />
                                  </td>
                              </tr>
                          </cfoutput>
                      </table>
                  </div>
                  <cfelse>
              <cflocation url="../index.cfm">
          </cfif>
          <cfelse>
              <cflocation url="../index.cfm">
      </cfif>