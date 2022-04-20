    <cfif isDefined("submit")>
    <cfinvoke component="components.task1"
    method="get_row" returnVariable="show_msg"
    argumentCollection="#Form#">
    </cfinvoke>
<cfelse>
<p>failed to get it!
</cfif>