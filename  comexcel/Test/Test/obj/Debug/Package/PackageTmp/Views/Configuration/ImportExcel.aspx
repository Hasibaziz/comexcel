<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Test.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    ImportExcel
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 <style>
.ui-progressbar {
    position: relative;
}
.progress-label {
    position: absolute;
    left: 50%;
    top: 4px;
    font-weight: bold;
    text-shadow: 1px 1px 0 #fff;
}
</style>
<title><%: (string) ViewBag.message %></title>
<div class="mp_left_menu">
   <% Html.RenderPartial("LeftMenu"); %>
</div>
<div class="mp_right_content">
   <div class="page_list_container">     
   <% using (Html.BeginForm("ImportExcel", "Configuration", FormMethod.Post, new { enctype = "multipart/form-data" }))
       { %>
        <%: Html.ValidationSummary(true) %>
        <fieldset>
             <div>       
                <input type="file" id="FileUpload" name="FileUpload"  required-data-val="true" data-val-required="please select a file" />            
                <input type="submit" id="Submit"  value="FileUpload"  title="Click to Upload file" class="btn btn-primary btn-lg active" onclick="return CheckFileName();"/>  
                <input type="button" value="Post" title="Post" class="btn btn-primary btn-lg active"   onclick="Forpost()" />
                <input id="Button1" type="button" value="Delete" title="Delete"  class="btn btn-primary btn-lg active"  onclick="Fordelete()" />       
             </div>
             <div><asp:Label ID="lblMessage" runat="server"  Font-Bold="true" /></div>
             <div id="progressbar"><div class="progress-label"></div></div>                     
         </fieldset>
        <% } %>        
   <div id="RecordsContainer"></div>
   </div>
   <div id="dialog" title="Dialog Title" style="display:none"> Some text</div> 
</div>
<script type="text/javascript">

    $(document).ready(function () {

        $('#RecordsContainer').jtable({
            paging: true,
            pageSize: 20,
            sorting: false,
            defaultSorting: 'Name ASC',
            actions: {
                listAction: '<%=Url.Content("~/Configuration/AllImportExcelList") %>',
                //createAction: '<%=Url.Content("~/Configuration/AddUpdateCategoryDetails") %>'
                deleteAction: '<%=Url.Content("~/Configuration/DeleteAllImportExcelList") %>'
                //updateAction: '<%=Url.Content("~/Configuration/AddUpdateServiceNameDetils") %>',
                //createAction: '<%=Url.Content("~/Configuration/AddUpdateServiceNameDetils") %>'
            },
            fields: {
                ID: {
                    key: true,
                    create: false,
                    edit: false,
                    list: false
                },
                SContract: {
                    title: 'SContract',
                    width: '10%'
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
                    width: '10%'
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
                    width: '10%'
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
<script type="text/javascript">
function CheckFileName() 
{
    var fileName = document.getElementById("FileUpload").value
    //debugger;
    if (fileName == "") 
    {
       alert("Browse to upload a valid File with xls / xlsx extension");
       return false;
     }
    else if (fileName.split(".")[1].toUpperCase() == "XLS" || fileName.split(".")[1].toUpperCase() == "XLSX")
    return true;
    else 
    {
      alert("File with " + fileName.split(".")[1] + " is invalid. Upload a validfile with xls / xlsx extensions");
      return false;
     }
    return true;
  }
</script>
<script type="text/javascript">
    function Forpost() {
       // $.post('<%: ResolveUrl("/Configuration/Postdata")%>');
        //alert("Process Done");
        // $("#dialog-message").dialog({
        $('<div></div>').html('Want to Post Data! Yes/Cancel').dialog({
            modal: true,
            dataType: "json",
            buttons: {
                "Yes": function () {
                    $(this).dialog("close");
                    //$.post('<%: ResolveUrl("/Configuration/Postdata")%>');
                    $.post('<%: ResolveUrl("/Configuration/Postdata")%>', function (result) {
                        //                $(function () {
                        //                    $("#progressbar").progressbar({ value: 0 });
                        //                    setTimeout(updateProgress, 3000);                   
                        //                });

                        if (result.result) {
                            //alert("Already Posted  " + result.result);
                            alert("Data Already Posted!  ");
                            $(".dialog").dialog("option", "buttons", { "Ok": function () { $(this).dialog("close"); } });
                        } else {
                            ///////////////////////////////////////////////////
                            $(function () {
                                $(this).dialog("close");
                                var progressbar = $("#progressbar"),
                                progressLabel = $(".progress-label");
                                progressbar.progressbar({
                                    value: false,
                                    change: function () {
                                        progressLabel.text(progressbar.progressbar("value") + "%");
                                    },
                                    complete: function () {
                                        progressLabel.text("Complete!");
                                        window.location.href = window.location.href;
                                    }
                                });
                                function progress() {
                                    var val = progressbar.progressbar("value") || 0;
                                    progressbar.progressbar("value", val + 1);
                                    if (val < 99) {
                                        setTimeout(progress, 100);
                                    }
                                }
                                setTimeout(progress, 3000);
                            });
                            //window.location.href = window.location.href;
                            // $(this).dialog("close");

                            ///////////////////////////////
                        }
                    }, "json");

                    ///////////////////////////////


                },
                "Cancel": function () {
                    $(this).dialog("close");
                }
            }
        }); 
   return true;

}
//function updateProgress() {
//    var progress;
//    progress = $("#progressbar")
//    .progressbar("option", "value");
//    if (progress < 100) {
//        $("#progressbar").progressbar("option", "value", progress + 1);
//        setTimeout(updateProgress, 3000);
//    }
//    window.location.href = window.location.href;
//}
</script>
</asp:Content>
