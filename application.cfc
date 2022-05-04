<cfcomponent output="false">
    <cfset this.name="cf_tasks">
    <cfset this.sessionManagement = true />
    <cfset this.sessionTimeout = createTimespan(0,0,30,0)/>
</cfcomponent>
