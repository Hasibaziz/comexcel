<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Test.Master" Inherits="System.Web.Mvc.ViewPage<Test.Domain.Model.CustomsAuditEntity>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    CustomsAuditDetailsUpdate
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<script type="text/javascript" >
$(document).ready(function () {
        // Define a custom validation function.
        //        $.validationEngineLanguage.allRules['test_value'] = {
        //            "func": function (field, rules, i, options) {
        //                return (field.val() == 'test');
        //            },
        //            "alertText": "* Value must be 'test'."
        //        };

        // Initiate the validation engine.
        $('#frmSID').validationEngine();
        $(function () {
            $("#InvoiceNo option").each(function () {
                $(this).attr({ 'title': $(this).html() });
            });
        });
    });
   
</script>

<div class="mp_left_menu">
        <% Html.RenderPartial("LeftMenu"); %>
</div>
<div class="mp_right_content">
   <div class="page_list_container">
     <div id="RecordsContainer">       
     </div>
   </div>
<% using (Html.BeginForm("CustomsAuditDetails", "Audit", new { @id = "frmSID" }))
   { %>
    <%: Html.ValidationSummary(true) %>
     <%: Html.HiddenFor(model => model.ID) %>
    <fieldset>
        <legend>Customs Audit Entry</legend>

        <div class="editor-label01">
           <label for="InvoiceNo">Invoice No:</label>           
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.InvoiceNo, new { @readonly = "true", @class = "validate[required]" })%>
            <%: Html.ValidationMessageFor(model => model.InvoiceNo) %>
        </div>

        <div class="editor-label01">
            <label for="IRegisterNo">Import Register No:</label>            
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.IRegisterNo, new { @class = "validate[required]" })%>
            <%: Html.ValidationMessageFor(model => model.IRegisterNo) %>
        </div>

        <div class="editor-label01">
            <label for="IBond">Import Bond:</label>            
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.IBond, new { @class = "validate[required]" })%>
            <%: Html.ValidationMessageFor(model => model.IBond) %>
        </div>

        <div class="editor-label01">            
            <label for="TotalFabric">Total Fabric Used:</label> 
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.TotalFabric, new { style = "width: 70px;", @class = "validate[required]" })%>
            <%: Html.ValidationMessageFor(model => model.TotalFabric) %>
        </div>

        <div class="editor-label01">            
            <label for="AdjustReg">Adjusted in Register:</label> 
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.AdjustReg, new { @class = "validate[required]" })%>
            <%: Html.ValidationMessageFor(model => model.AdjustReg) %>
        </div>

        <div class="editor-label01">            
            <label for="AdjustRegPage">Adjusted in Register Page:</label> 
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.AdjustRegPage, new {style = "width: 50px;", @class = "validate[required]" })%>
            <%: Html.ValidationMessageFor(model => model.AdjustRegPage) %>
        </div>       

        <p>
           <input type="submit" class="btn btn-info btn-lg active" data-toggle="button" value="Update" />     
           <input type="button" onclick="window.location='<%: Url.Action("CustomsAuditInfo") %>'" class="btn btn-default btn-lg" value="Cancel" />   
        </p>
    </fieldset>
<% } %>

    <div>
        <%: Html.ActionLink("Back to List", "CustomsAuditInfo")%>
    </div>
</div>

</asp:Content>
