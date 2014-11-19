<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Private.Master" Inherits="System.Web.Mvc.ViewPage<Test.Domain.Model.ExportformEntity>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    TTCMInformation
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div class="mp_left_menu">
        <% Html.RenderPartial("Control/LeftMenu"); %>
</div>
<div class="mp_right_content">
   <div class="page_list_container">
     <fieldset><div id="RecordsContainer">
                 TT No:  <%: Html.TextBoxFor(model => model.TTNo, new { style = "width: 150px;" })%>
                 <input type="button" value="Export Excel" title="Export Excel" class="btn btn-info btn-lg active"  onclick="SaveEXL()" />
                 <div>CM TOTAL : <span style="color:Green;" id="CMTotal" ></span> </div> 
               </div>                    
     </fieldset>                
   </div>
</div>
<script type="text/javascript">
    $('#TTNo').change(function () {
        var Result = $.post('<%: ResolveUrl("~/Reportpvt/GetCMTotalTTNo?ttNO=")%>' + $("#TTNo").attr("value"), function (data) {
            $("#CMTotal").html(data.CMTotal);            
        });
    });
</script>
<script type="text/javascript">

$(document).ready(function () {

            $('#RecordsContainer').jtable({
                paging: true,
                pageSize: 15,
                sorting: false,
                defaultSorting: 'Name ASC',
                actions: {
                    listAction: '<%=Url.Content("~/Reportpvt/TTCMInformationList") %>' 
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
                        width: '8%'
                    },
                    InvoiceDate: {
                        title: 'Invoice Date',
                        width: '10%'
                    },                  
                    ContractNo: {
                        title: 'Contract No',
                        width: '10%'
                    },
                    ContractDate: {
                        title: 'Contract Date',
                        width: '10%'
                    },
                    TTNo: {
                        title: 'TT No',
                        width: '8%'
                    },
                    TTDate: {
                        title: 'TT Date',
                        width: '8%'
                    },                   
                    Quantity: {
                        title: 'Qty',
                        width: '5%'
                    },
                    FOBValue: {
                        title: 'FOB',
                        width: '8%'
                    },
                    CMValue: {
                        title: 'C.M.',
                        width: '8%'
                    }
                }
            });
            $('#RecordsContainer').jtable('load');
        });

        $(document).ready(function () {
            $('input#TTNo').change(function () {

                $('#RecordsContainer').jtable({
                    paging: true,
                    pageSize: 15,
                    sorting: false,
                    defaultSorting: 'Name ASC',
                    actions: {
                        listAction: '/Reportpvt/AllTTCMInformationttno?ttNo=' + $("#TTNo").val()
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
                            width: '8%'
                        },
                        InvoiceDate: {
                            title: 'Invoice Date',
                            width: '10%'
                        },
                        ContractNo: {
                            title: 'Contract No',
                            width: '10%'
                        },
                        ContractDate: {
                            title: 'Contract Date',
                            width: '10%'
                        },
                        TTNo: {
                            title: 'TT No',
                            width: '8%'
                        },
                        TTDate: {
                            title: 'TT Date',
                            width: '8%'
                        },
                        Quantity: {
                            title: 'Qty',
                            width: '5%'
                        },
                        FOBValue: {
                            title: 'FOB',
                            width: '8%'
                        },
                        CMValue: {
                            title: 'C.M.',
                            width: '8%'
                        }
                    }
                });
                $('#RecordsContainer').jtable('load');
            });
        });
</script>

</asp:Content>
