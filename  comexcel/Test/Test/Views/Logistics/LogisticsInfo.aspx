<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Test.Master" Inherits="System.Web.Mvc.ViewPage<Test.Domain.Model.LogisticsInfoEntity>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    LogisticsInfo
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div class="mp_left_menu">
        <% Html.RenderPartial("LeftMenu"); %>
</div>
<div class="mp_right_content">
   <div class="page_list_container">
     <fieldset><div id="RecordsContainer">
                 Invoice No:  <%: Html.TextBoxFor(model => model.InvoiceNo, new { style = "width: 120px;" })%>               
                 <%--<input type="button" value="Export to Excel" title="Print" class="btn btn-info btn-lg active"  onclick="printPDF()" />                --%>
                 <div>
                   <%: Html.ActionLink("Add New Entry", "ComsalesEntry", new { @href = "#", @id = "dialog_link", title = "Receive Item" })%>
                 </div> 
               </div>
     </fieldset>                
   </div>
</div>
<script type="text/javascript">
    $(document).ready(function () {

        $('#RecordsContainer').jtable({
            paging: true,
            pageSize: 15,
            sorting: false,
            title: 'Invoice List for Logistics',
            defaultSorting: 'Name ASC',
            actions: {
                listAction: '<%=Url.Content("~/Logistics/LogisticsInfoList") %>'                              
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
                    width: '8%',
                    display: function (data) {
                        return '<a href="/Logistics/ComsalesEntryUpdByInvoiceNo/' + data.record.ID + '">' + data.record.InvoiceNo + '</a>';
                    }
                },
                ReceitableAmount: {
                    title: 'Receitable Amount',
                    width: '8%'
                },
                DocProcessFee: {
                    title: 'DocProcess Fee',
                    width: '10%'
                },
                SSCertificateFee: {
                    title: 'ShortS Cer Fee',
                    width: '7%'
                },
                SealLockCharge: {
                    title: 'SealLock Charge',
                    width: '7%'
                },
                AgencyCommission: {
                    title: 'Agency Commission',
                    width: '7%'
                },
                DocumentaionCharge: {
                    title: 'Doc Charge',
                    width: '8%'
                },
                TransportationCharge: {
                    title: 'Tns Charge',
                    width: '12%'
                },
                FactoryLoadingFee: {
                    title: 'FactoryLoadingFee',
                    width: '12%'
                },
                CargoHODate: {
                    title: 'CargoH/O Date',
                    width: '9%'
                }
            }
        });
        $('#RecordsContainer').jtable('load');
    });
</script>

</asp:Content>
