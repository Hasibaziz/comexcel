﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Test.Master" Inherits="System.Web.Mvc.ViewPage<Test.Domain.Model.ShippinginfoEntity>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    ShippingInfo
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
                   <%: Html.ActionLink("Add New Entry", "ShippingformEntry", new { @href = "#", @id = "dialog_link", title = "Receive Item" })%>
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
            title: 'Invoice List for Sales',
            defaultSorting: 'Name ASC',
            actions: {
                listAction: '<%=Url.Content("~/Shipping/ShippingInfoList") %>'
                //deleteAction: '<%=Url.Content("~/Private/DeleteExportFormEntryDetails") %>'               
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
                        return '<a href="/Shipping/ShippingformEntryUpdByInvoiceNo/' + data.record.ID + '">' + data.record.InvoiceNo + '</a>';
                    }
                },
                EPNo: {
                    title: 'EP No',
                    width: '6%'
                },
                EPDate: {
                    title: 'EP Date',
                    width: '7%'
                },
                EXPNo: {
                    title: 'EXP No',
                    width: '7%'
                },
                EXPDate: {
                    title: 'EXP Date',
                    width: '8%'
                },
                SBNo: {
                    title: 'SB No',
                    width: '8%'
                },
                SBDate: {
                    title: 'SB Date',
                    width: '8%'
                },
                VesselNo: {
                    title: 'Vessel No',
                    width: '8%'
                },
                CnFAgent: {
                    title: 'C&F Agent',
                    width: '8%'
                },
                ExFactoryDate: {
                    title: 'Ex-Factory Date',
                    width: '10%'
                },
                ExFactoryDate: {
                    title: 'Ex-Factory Date',
                    width: '10%'
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
            title: 'Invoice List for Sales',
            defaultSorting: 'Name ASC',
            actions: {
                listAction: '/Shipping/ShippingInvoiceSearchByNo?InvNo=' + $("#InvoiceNo").val()
                //deleteAction: '<%=Url.Content("~/Private/DeleteExportFormEntryDetails") %>'               
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
                        return '<a href="/Shipping/ShippingformEntryUpdByInvoiceNo/' + data.record.ID + '">' + data.record.InvoiceNo + '</a>';
                    }
                },
                EPNo: {
                    title: 'EP No',
                    width: '6%'
                },
                EPDate: {
                    title: 'EP Date',
                    width: '7%'
                },
                EXPNo: {
                    title: 'EXP No',
                    width: '7%'
                },
                EXPDate: {
                    title: 'EXP Date',
                    width: '8%'
                },
                SBNo: {
                    title: 'SB No',
                    width: '8%'
                },
                SBDate: {
                    title: 'SB Date',
                    width: '8%'
                },
                VesselNo: {
                    title: 'Vessel No',
                    width: '8%'
                },
                CnFAgent: {
                    title: 'C&F Agent',
                    width: '8%'
                },
                ExFactoryDate: {
                    title: 'Ex-Factory Date',
                    width: '10%'
                }
            }
        });
        $('#RecordsContainer').jtable('load');
    });


 </script>

</asp:Content>