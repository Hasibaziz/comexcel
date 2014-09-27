<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Test.Master" Inherits="System.Web.Mvc.ViewPage<Test.Domain.Model.ImportexcelEntity>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Invoice
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 <script type="text/javascript">
     $(function () {
         $("#StartDate, #EndDate").datepicker({
             dateFormat: 'dd/mm/yy',
             numberOfMonths: 3,
             buttonImage: "~/Content/images/calendar.png",
             showButtonPanel: true
         });
     });
</script>
<div class="mp_left_menu">
        <% Html.RenderPartial("Control/LeftMenu"); %>
</div>
<div class="mp_right_content">
   <div class="page_list_container">
     <fieldset>
        <div style="float: left; width: 100%;"> 
                <div style="margin:5px 40px; padding:5px;">
                    Invoice : <%: Html.TextBoxFor(m => m.Invoice, new { @class = "Control_Moni_Width_100" })%>                   
                    Category: <%: Html.DropDownListFor(m => m.CategoryID, (List<SelectListItem>)ViewData["Name"], "Please Select", new {  @class = "Width=250" })%>              
                    Item:  <%: Html.DropDownListFor(m => m.ID, (List<SelectListItem>)ViewData["Item"], "Items", new { @class = "Width=250" })%>  
                </div>
                <div>
                    B/E From Date : <%: Html.TextBoxFor(m => m.StartDate, new { @class = "Control_Moni_Width_100" })%>  
                    B/E To Date : <%: Html.TextBoxFor(m => m.EndDate, new { @class = "Control_Moni_Width_100" })%>  
                </div>
                <input type="button" value="Export Excel" title="Print" class="btn btn-primary btn-lg active"  onclick="impexcel()" />
              <%-- <span>Sum of QTY: <p id="Results" ></p></span>--%>              
               <div>Sum of QTY  : <span style="color:Red;" id="SumQTY" ></span> </div>   
               <div>Sum of Value: <span style="color:Red;" id="SumTotalval" ></span> </div>    
        </div> 
     </fieldset>  
     <fieldset><div id="RecordsContainer"></div></fieldset>
   </div>
</div>
<script type="text/javascript">
    function impexcel() {
        EX1 = $("#Invoice").val();
        EX2 = $("#CategoryID option:selected").text();
        EX3 = $("#CategoryID").val();
        EX4 = $("#StartDate").val();
        EX5 = $("#EndDate").val();
        window.location = "/Report/InvoiceExcelReport?EX1=" + EX1 + "&EX2=" + EX2;
    }
</script>
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
                    width: '25%'
                },
                QTY: {
                    title: 'QTY',
                    width: '7%'
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

    $('input#Invoice, #CategoryID, #StartDate, #EndDate ').change(function () {
        $('#RecordsContainer').jtable({
            paging: true,
            pageSize: 20,
            sorting: false,
            defaultSorting: 'Name ASC',
            actions: {
                listAction: '/Report/AllInvoiceBycatname?invoice=' + $("#Invoice").val() + "&CatName=" + $("#CategoryID option:selected").text() + "&SDate=" + $("#StartDate").val() + "&EDate=" + $("#EndDate").val()
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
                    width: '25%'
                },
                QTY: {
                    title: 'QTY',
                    width: '7%'
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
        $.post('<%: ResolveUrl("~/Report/Getqtytotalval?categoryname=")%>' + $("#CategoryID option:selected").text() + "&invoice=" + $("#Invoice").val() + "&SDate=" + $("#StartDate").val() + "&EDate=" + $("#EndDate").val(), function (data) {            
            $("#SumQTY").html(data.SumQTY);
            $("#SumTotalval").html(data.SumTotalval);                 
        });
    });
</script>
<script type="text/javascript">

    $('#CategoryID').change(function () {
        $.ajaxSetup({ cache: false });
        var selectedItem = $(this).val();
        if (selectedItem == "" || selectedItem == 0) {
            var items = "<option value=''></option>";
        } else {
            $.post('<%: ResolveUrl("~/Report/GetItemByCategoryID?CategoryName=")%>' + $("#CategoryID > option:selected").text(), function (data) {
                var items = "";
                var items1 = "";
                var isSeleted = '';
                if (data.Selected) {
                    isSeleted = " selected='selected'";
                }
                $.each(data, function (i, data) {
                    items += "<option value='" + data.Value + isSeleted + "'>" + data.Text + "</option>";
                });
                $("#ID").html(items);
                $("#ID").removeAttr('disabled');
            });
        }
    });
                   
</script>
</asp:Content>
