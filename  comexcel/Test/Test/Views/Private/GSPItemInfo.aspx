<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Private.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    GSPItemInfo
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


<link href="~/Scripts/validationEngine/validationEngine.jquery.css" rel="stylesheet" type="text/css" />
<script src="<%: Url.Content("~/Scripts/validationEngine/jquery.validationEngine.js") %>" type="text/javascript"></script>
<script src="<%: Url.Content("~/Scripts/validationEngine/jquery.validationEngine-en.js") %>" type="text/javascript"></script>
<script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>" type="text/javascript"></script>
<script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>" type="text/javascript"></script>

<div class="mp_left_menu">
        <% Html.RenderPartial("LeftMenu"); %>
</div>
<div class="mp_right_content">
   <div class="page_list_container">
     <fieldset><div id="RecordsContainer"></div></fieldset>
   </div>
</div>
    <script type="text/javascript">

        $(document).ready(function () {

            $('#RecordsContainer').jtable({
                paging: true,
                pageSize: 15,
                sorting: false,
                defaultSorting: 'Name ASC',
                actions: {
                    listAction: '<%=Url.Content("~/Private/ConsigneeDetailsList") %>',
                    createAction: '<%=Url.Content("~/Private/AddUpdateConsigneeDetails") %>',
                    updateAction: '<%=Url.Content("~/Private/AddUpdateConsigneeDetails") %>',
                    deleteAction: '<%=Url.Content("~/Private/DeleteConsigneedeatils") %>'
                },
                fields: {
                    ID: {
                        key: true,
                        create: false,
                        edit: false,
                        list: false
                    },
                    InvoiceNo: {
                        title: 'Invoice No',
                        width: '10%'
                    },
                    OrderNo: {
                        title: 'Order No',
                        width: '10%'
                    },
                    StyleNo: {
                        title: 'Style No',
                        width: '10%'
                    },
                    Category: {
                        title: 'Category',
                        width: '10%'
                    },
                    Origion: {
                        title: 'Origion',
                        width: '10%'
                    },
                    Quantity: {
                        title: 'Quantity',
                        width: '10%'                       
                    }
                }               
            });
            $('#RecordsContainer').jtable('load');
        });
 
    </script>

</asp:Content>
