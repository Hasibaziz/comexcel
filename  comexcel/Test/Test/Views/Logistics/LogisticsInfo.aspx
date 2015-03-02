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
                 <div style=" margin: 0em .5cm -20px 29cm;"> 
                   <a href="#" id="dialog_link" ><img src="../../Content/images/Index.png", alt="Search" /></a> 
                 </div>
                 <div id="dialog" title="Search">
                      Invoice No:  <%: Html.TextBoxFor(model => model.InvoiceNo, new { style = "width: 120px;" })%>                              
                      <%--<input type="button" value="Export to Excel" title="Print" class="btn btn-info btn-lg active"  onclick="printPDF()" /> --%>                 
                 </div> 
                 <div>
                   <%: Html.ActionLink("Add New Entry", "LogisticsEntry", new { @href = "#", @id = "dialog_link", title = "Receive Item" })%>
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
                        return '<a href="/Logistics/LogisticsEntryUpdByInvoiceNo/' + data.record.ID + '">' + data.record.InvoiceNo + '</a>';
                    }
                },
                ReceitableAmount: {
                    title: 'ReceitableAmt',
                    width: '6%'
                },
                DocProcessFee: {
                    title: 'DocProcessFee',
                    width: '8%'
                },
                SSCertificateFee: {
                    title: 'ShortSCerFee',
                    width: '7%'
                },
                SealLockCharge: {
                    title: 'SealLockChrg',
                    width: '7%'
                },
                AgencyCommission: {
                    title: 'AgencyCom',
                    width: '6%'
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
                TotalFees: {
                    title: 'TotalCharges',
                    width: '5%'
                },
                CargoHODate: {
                    title: 'CargoH/O Date',
                    width: '9%'
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
            title: 'Invoice List for Logistics',
            defaultSorting: 'Name ASC',
            actions: {
                listAction: '/Logistics/LogisticsInvoiceSearchByNo?InvNo=' + $("#InvoiceNo").val()
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
                        return '<a href="/Logistics/LogisticsEntryUpdByInvoiceNo/' + data.record.ID + '">' + data.record.InvoiceNo + '</a>';
                    }
                },
                ReceitableAmount: {
                    title: 'ReceitableAmt',
                    width: '6%'
                },
                DocProcessFee: {
                    title: 'DocProcessFee',
                    width: '8%'
                },
                SSCertificateFee: {
                    title: 'ShortSCerFee',
                    width: '7%'
                },
                SealLockCharge: {
                    title: 'SealLockChrg',
                    width: '7%'
                },
                AgencyCommission: {
                    title: 'AgencyCom',
                    width: '6%'
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
                TotalFees: {
                    title: 'TotalCharges',
                    width: '5%'
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
<script type="text/javascript">
    $(document).ready(function () {
        // Dialog
        $('#dialog').dialog({
            autoOpen: false,
            resizable: false,    /// To make the Popup Window Customs resize (Big or Small)
            width: 500,
            modal: true,    // For Background Disable... 
            show: {
                effect: "blind",
                duration: 1000
            },
            hide: {
                effect: "blind",       //effect: "explode",
                duration: 1000
            },
            buttons: {
                "Search": function () {
                    $(this).dialog("close");
                },
                "Cancel": function () {
                    $(this).dialog("close");
                }
            }
        });
        // Dialog Link
        $('#dialog_link').click(function () {
            $('#dialog').dialog('open');
            return false;
        });
    });

</script>
</asp:Content>
