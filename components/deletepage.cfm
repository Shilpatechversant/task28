
<CFQUERY NAME="Delete" DATASOURCE="newtech">
        DELETE  FROM sakila.cms_pages
 WHERE id = <cfqueryparam CFSQLType="CF_SQL_INTEGER" value="#Id#">
</CFQUERY>
<cflocation url="../index.cfm">


