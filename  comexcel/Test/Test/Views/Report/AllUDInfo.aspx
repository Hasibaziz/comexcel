<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Test.Master" Inherits="System.Web.Mvc.ViewPage<Test.Domain.Model.ImportexcelEntity>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    AllUDInfo
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class="mp_left_menu">
        <% Html.RenderPartial("Control/LeftMenu"); %>
</div>
<div class="mp_right_content">
   <div class="page_list_container">
     <fieldset>
        <div style="float: left; width: 100%;"> 
          Factory: <%: Html.DropDownListFor(m => m.Factory, (List<SelectListItem>)ViewData["Location"], "Select", new { @readonly = "true", @class = "Width=250" })%>       
        </div> 
     </fieldset>  
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
                listAction: '<%=Url.Content("~/Report/AllUDInfoList") %>',
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
                UDNo: {
                    title: 'U/D No',
                    width: '6%'
                },
                AMDNo: {
                    title: 'AMD No',
                    width: '7%'
                },
                AMDDate: {
                    title: 'AMD Date',
                    width: '8%'
                },
                Factory: {
                    title: 'Factory',
                    width: '5%'
                },
                Invoice: {
                    title: 'Invoice',
                    width: '10%'
                },
                Category: {
                    title: 'Category',
                    width: '10%'
                },
                Item: {
                    title: 'Item Name',
                    width: '25%'
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
                    width: '12%'
                },
                Mode: {
                    title: 'Mode',
                    width: '8%'
                },
                BLNo: {
                    title: 'B/L No',
                    width: '6%'
                },               
                BENo: {
                    title: 'B/E No',
                    width: '6%'
                },
                BEDate: {
                    title: 'B/E Date',
                    width: '8%'
                },
                Passbook: {
                    title: 'Passbook',
                    width: '5%'
                },
                Pageno: {
                    title: 'Pageno',
                    width: '5%'
                }
            }
        });
        $('#RecordsContainer').jtable('load');
    }); 
</script>

</asp:Content>
