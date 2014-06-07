<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Test.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    ImportExcel
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<title><%: (string) ViewBag.message %></title>
<div class="mp_left_menu">
   <% Html.RenderPartial("LeftMenu"); %>
</div>
<div class="mp_right_content">
   <div class="page_list_container">     
   <% using (Html.BeginForm("ImportExcel", "Configuration", FormMethod.Post, new { enctype = "multipart/form-data" }))
       { %>
        <%: Html.ValidationSummary(true) %>
        <fieldset>
             <div>       
                <input type="file" id="FileUpload" name="FileUpload" required-data-val="true" data-val-required="please select a file"/>            
                <input type="submit" id="Submit" class="submit" value="Upload"  title="Click to upload file"/>         
             </div>
         </fieldset>
        <% } %>
   <div id="RecordsContainer"></div>
   </div>
</div>
<script type="text/javascript">

    $(document).ready(function () {

        $('#RecordsContainer').jtable({
            paging: true,
            pageSize: 20,
            sorting: false,
            defaultSorting: 'Name ASC',
            actions: {
                listAction: '<%=Url.Content("~/Configuration/AllImportExcelList") %>',
                //createAction: '<%=Url.Content("~/Configuration/AddUpdateCategoryDetails") %>'
                //deleteAction: '<%=Url.Content("~/Configuration/DeleteServiceNameDetils") %>',
                //updateAction: '<%=Url.Content("~/Configuration/AddUpdateServiceNameDetils") %>',
                //createAction: '<%=Url.Content("~/Configuration/AddUpdateServiceNameDetils") %>'
            },
            fields: {
                Id: {
                    key: true,
                    create: false,
                    edit: false,
                    list: false
                },
                Invoice: {
                    title: 'Invoice',
                    width: '15%'
                },
                Category: {
                    title: 'Category',
                    width: '10%'
                },
                Item: {
                    title: 'Item Name',
                    width: '20%'
                },
                QTY: {
                    title: 'QTY',
                    width: '10%'
                },
                Unit: {
                    title: 'Unit',
                    width: '5%'
                },
                TotalValue: {
                    title: 'Total Value',
                    width: '10%'
                },
                Mode: {
                    title: 'Mode',
                    width: '8%'
                }

            }
        });
        $('#RecordsContainer').jtable('load');
    });
 
</script>
</asp:Content>
