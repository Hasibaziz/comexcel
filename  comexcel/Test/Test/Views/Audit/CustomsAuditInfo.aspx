<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Test.Master" Inherits="System.Web.Mvc.ViewPage<Test.Domain.Model.CustomsAuditEntity>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    CustomsAuditInfo
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
      Invoice No:  <%: Html.TextBoxFor(model => model.InvoiceNo, new { style = "width: 120px;" })%> 
     <div>
        <%: Html.ActionLink("Add New Entry", "CustomsAuditDetails", new { @href = "#", @id = "dialog_link", title = "Receive Item" })%>
     </div>
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
                    listAction: '<%=Url.Content("~/Audit/CustomsAuditInfoList") %>'
                    //                    createAction: '<%=Url.Content("~/Private/AddUpdateConsigneeDetails") %>',
                    //                    updateAction: '<%=Url.Content("~/Private/AddUpdateConsigneeDetails") %>',
                    //                    deleteAction: '<%=Url.Content("~/Private/DeleteConsigneedeatils") %>'
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
                        width: '6%',
                        display: function (data) {
                            return '<a href="/Audit/CustomsAuditDetailsUpdateByInvoiceNo/' + data.record.ID + '">' + data.record.InvoiceNo + '</a>';
                        }
                    },
                    IRegisterNo: {
                        title: 'Import Reg No',
                        width: '10%'
                    },
                    IBond: {
                        title: 'Import Bond',
                        width: '10%'
                    },
                    TotalFabric: {
                        title: 'Total Fabric Used',
                        width: '15%'
                    },
                    AdjustReg: {
                        title: 'Adjusted Reg',
                        width: '10%'
                    },
                    AdjustRegPage: {
                        title: 'Adjusted Reg Page',
                        width: '15%'
                    }
                }
            });
            $('#RecordsContainer').jtable('load');
        });

$('input#InvoiceNo').change(function () {  
            $('#RecordsContainer').jtable({
                paging: true,
                pageSize: 15,
                sorting: false,
                defaultSorting: 'Name ASC',
                actions: {
                    listAction: '/Audit/CustomsAuditInvoiceSearchByNo?InvNo=' + $("#InvoiceNo").val()                   
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
                        width: '6%',
                        display: function (data) {
                            return '<a href="/Audit/CustomsAuditDetailsUpdateByInvoiceNo/' + data.record.ID + '">' + data.record.InvoiceNo + '</a>';
                        }
                    },
                    IRegisterNo: {
                        title: 'Import Reg No',
                        width: '10%'
                    },
                    IBond: {
                        title: 'Import Bond',
                        width: '10%'
                    },
                    TotalFabric: {
                        title: 'Total Fabric Used',
                        width: '15%'
                    },
                    AdjustReg: {
                        title: 'Adjusted Reg',
                        width: '10%'
                    },
                    AdjustRegPage: {
                        title: 'Adjusted Reg Page',
                        width: '15%'
                    }
                }
            });
            $('#RecordsContainer').jtable('load');
        });
    </script>


</asp:Content>
