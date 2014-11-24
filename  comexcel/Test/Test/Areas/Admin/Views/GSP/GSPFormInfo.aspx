<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Test.Master" Inherits="System.Web.Mvc.ViewPage<Test.Domain.Model.GSPformDetailsEntity>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    GSPFormInfo
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
     <fieldset>
     <div id="RecordsContainer">
         Invoice No:  <%: Html.TextBoxFor(model => model.InvoiceNo, new { style = "width: 120px;" })%>
         <%--Buyer Name: <%: Html.DropDownListFor(model => model.ConsigneeID, (List<SelectListItem>)ViewData["ConsigneeNo"], "Please Select", new { @class = "validate[required]" })%>--%>
         <input type="button" value="Print Preview" title="Print" class="btn btn-info btn-lg active" onclick="printItem()" />
     </div></fieldset>
   </div>
</div>
<script type="text/javascript">
    function printPDF() {
        var CON = $('#ConsigneeID').val();
        var url = "/Private/PDFView?headspc=" + headspaces + "&LeftSpace=" + LeftSpc;
        var win = window.open('', '', 'left=0px, top=0px, width=600px, height=650px, scrollbars=no, status =no, resizable=no');
        win.location.href = url;
        win = null;
        return false;
    } 
</script>
<script type="text/javascript">

    $('input#InvoiceNo').change(function () {

        $('#RecordsContainer').jtable({
            paging: true,
            pageSize: 15,
            sorting: false,
            defaultSorting: 'Name ASC',
            actions: {
                listAction: '/GSP/GSPFormSearchByInvoiceno?Invno=' + $("#InvoiceNo").val()
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
                    width: '4%'
                },
                ExporterNo: {
                    title: 'Exporter No',
                    width: '6%'
                },
                ConsigneeNo: {
                    title: 'Consignee No',
                    width: '8%'
                },
                ContractNo: {
                    title: 'Contract No',
                    width: '10%'
                },
                StyleNo: {
                    title: 'Style No',
                    width: '12%'
                },
                Category: {
                    title: 'Category',
                    width: '5%'
                },
                Origion: {
                    title: 'Origion',
                    width: '5%'
                },
                Quantity: {
                    title: 'Quantity',
                    width: '5%'
                },
                TranshipmentID: {
                    title: 'Transhipment',
                    width: '10%'
                }
            }
        });
        $('#RecordsContainer').jtable('load');
    });

    $(document).ready(function () {

        $('#RecordsContainer').jtable({
            paging: true,
            pageSize: 15,
            sorting: false,
            defaultSorting: 'Name ASC',
            actions: {
                listAction: '<%=Url.Content("~/GSP/GSPFormInfoList") %>'
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
                    width: '4%'
                },
                ExporterNo: {
                    title: 'Exporter No',
                    width: '6%'
                },
                ConsigneeNo: {
                    title: 'Consignee No',
                    width: '8%'
                },
                ContractNo: {
                    title: 'Contract No',
                    width: '10%'
                },
                StyleNo: {
                    title: 'Style No',
                    width: '12%'
                },
                Category: {
                    title: 'Category',
                    width: '5%'
                },
                Origion: {
                    title: 'Origion',
                    width: '5%'
                },
                Quantity: {
                    title: 'Quantity',
                    width: '5%'
                },
                TranshipmentID: {
                    title: 'Transhipment',
                    width: '10%'
                }
            }
        });
        $('#RecordsContainer').jtable('load');
    });
 
    </script>

</asp:Content>
