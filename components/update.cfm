<CFQUERY NAME="DoUpdate" DATASOURCE="newtech">
   UPDATE sakila.cms_pages
   SET page_name='#form.page_name#',
   page_desc='#form.page_desc#'
   WHERE ID=#URL.ID#
</CFQUERY>
<cflocation url="../index.cfm">