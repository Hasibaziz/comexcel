<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Test.Master" Inherits="System.Web.Mvc.ViewPage<Test.Domain.Model.ImportexcelEntity>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Invoice
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class="mp_left_menu">
        <% Html.RenderPartial("Control/LeftMenu"); %>
</div>
<div class="mp_right_content">
   <div class="page_list_container">
     <fieldset>
        <div style="float: left; width: 100%;">
                
                Invoice : <%: Html.TextBoxFor(m => m.Invoice, new { @class = "Control_Moni_Width_100" })%>                   
                Category: <%: Html.DropDownListFor(m => m.CategoryID, (List<SelectListItem>)ViewData["Name"], "Please Select", new { @readonly = "true", @class = "Width=250" })%>              
                <%--<input type="button" value="Show" title="Save"  id="Getvalue" /> &nbsp; &nbsp;&nbsp;--%>
                <%--<input type="button" value="Save As Excel" title="Save As Excel"   onclick="impexcel()" />--%>   
                
              <%-- <span>Sum of QTY: <p id="Results" ></p></span>--%>
               <div>Sum of QTY  : <span style="color:Red;" id="SumQTY" ></span> </div>   
               <div>Sum of Value: <span style="color:Red;" id="SumTotalval" ></span> </div>    
        </div> 
     </fieldset>  
     <fieldset><div id="RecordsContainer"></div></fieldset>
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
                listAction: '<%=Url.Content("~/Report/AllInvoiceList") %>'
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
                    width: '10%'
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
                    width: '12%'
                },
                Mode: {
                    title: 'Mode',
                    width: '8%'
                },
                BENo: {
                    title: 'B/E No',
                    width: '6%'
                },
                BEDate: {
                    title: 'B/E Date',
                    width: '8%'
                }
            }
        });
        $('#RecordsContainer').jtable('load');
    });
 
</script>
<script type="text/javascript">

    $('input#Invoice, #CategoryID').change(function () {
        $('#RecordsContainer').jtable({
            paging: true,
            pageSize: 20,
            sorting: false,
            defaultSorting: 'Name ASC',
            actions: {
                listAction: '/Report/AllInvoiceBycatname?invoice=' + $("#Invoice").val() + "&CatName=" + $("#CategoryID option:selected").text()
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
                    width: '10%'
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
                    width: '12%'
                },
                Mode: {
                    title: 'Mode',
                    width: '8%'
                },
                BENo: {
                    title: 'B/E No',
                    width: '6%'
                },
                BEDate: {
                    title: 'B/E Date',
                    width: '8%'
                }
            }
        });
        $('#RecordsContainer').jtable('load');
    });
 
</script>
<script type="text/javascript">
    $('input#Invoice, #CategoryID').change(function () {
        $.post('<%: ResolveUrl("~/Report/Getqtytotalval?categoryname=")%>' + $("#CategoryID option:selected").text() + "&invoice=" + $("#Invoice").val(), function (data) {            
            $("#SumQTY").html(data.SumQTY);
            $("#SumTotalval").html(data.SumTotalval);                 
        });

    });
</script>
</asp:Content>
