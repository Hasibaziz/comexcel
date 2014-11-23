<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Test.Master" Inherits="System.Web.Mvc.ViewPage<Test.Domain.Model.GSPformDetailsEntity>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    GSPFormDetails
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


<script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>" type="text/javascript"></script>
<script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>" type="text/javascript"></script>

<script type="text/javascript" >
    $(document).ready(function () {
        ////////////////***********  For Not to Loose the Cursore Focus from Selecting Date Picker *****///////////////////////
        $.datepicker.setDefaults($.extend({},
            {
                changeMonth: true,
                changeYear: true,
                showStatus: true,
                dateFormat: 'dd-mm-yy',
                duration: 'fast',
                yearRange: '1890:2100'
            }
            )
        );
            $("input#ContractDate, #MasterContractDate, #BuyerContractDate, #SBDate, #ExpDate").datepicker({
            onSelect: function () {
                document.all ? $(this).get(0).fireEevent("onChange") :
                            $(this).change();
                this.focus();
            },
            onClose: function (dateText, inst) {
                if (!document.all)
                    this.select();
            }
        });
    });
</script>


<div class="mp_right_content">
   <div class="page_list_container">
     <div id="RecordsContainer"></div>
   </div>
<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>
    <fieldset>
        <legend>Means of Transport and Route</legend>

        <div class="editor-label01">           
            <label for="InvoiceNo">Invoice No:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.InvoiceNo) %>
            <a id="Invoiceno" href="#"><span>Search</span></a>
            <%: Html.ValidationMessageFor(model => model.InvoiceNo) %>            
        </div>
         <div class="editor-label01">
            <label for="TransportID">Local Transport:</label>
        </div>
        <div class="editor-field01">
            <%: Html.DropDownListFor(model => model.TransportID, (List<SelectListItem>)ViewData["Name"], new { @class = "validate[required]" })%>  
            <%: Html.ValidationMessageFor(model => model.TransportID)%>
        </div>
         <div class="editor-label01">
          <label for="BLNo">B/L No:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.BLNo)%>
            <%: Html.ValidationMessageFor(model => model.BLNo)%>
        </div>
        <div class="editor-label01">
          <label for="BLDate">B/L Date:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.BLDate)%>
            <%: Html.ValidationMessageFor(model => model.BLDate)%>
        </div>
         <div class="editor-label01">
            <label for="VesselNo">Vessel No:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.VesselNo) %>
            <%: Html.ValidationMessageFor(model => model.VesselNo) %>
        </div>

        <div class="editor-label01">
           <label for="VesselContractNo">Vessel Contract No:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.VesselContractNo) %>
            <%: Html.ValidationMessageFor(model => model.VesselContractNo) %>
        </div>
      </fieldset>


      <fieldset>
         <legend>Number and Kind of Packages: Description of goods</legend>

         <div class="editor-label01">           
            <label for="CartonNo">Carton No:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.CartonNo) %>
            <%: Html.ValidationMessageFor(model => model.CartonNo) %>
        </div>

        <div class="editor-label01">
           <label for="ContractNo">Contract No:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.ContractNo) %>
            <%: Html.ValidationMessageFor(model => model.ContractNo) %>
        </div>

        <div class="editor-label01">           
             <label for="ContractDate">Contract Date:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.ContractDate) %>
            <%: Html.ValidationMessageFor(model => model.ContractDate) %>
        </div>

        <div class="editor-label01">           
            <label for="MasterContractNo">Master Contract No:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.MasterContractNo) %>
            <%: Html.ValidationMessageFor(model => model.MasterContractNo) %>
        </div>

        <div class="editor-label01">           
            <label for="MasterContractDate">Master Contract Date:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.MasterContractDate) %>
            <%: Html.ValidationMessageFor(model => model.MasterContractDate) %>
        </div>

        <div class="editor-label01">
          <label for="ExpNo">Exp No:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.ExpNo)%>
            <%: Html.ValidationMessageFor(model => model.ExpNo)%>
        </div>

         <div class="editor-label01">
          <label for="ExpDate">Exp Date:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.ExpDate)%>
            <%: Html.ValidationMessageFor(model => model.ExpDate)%>
        </div>
<div class="New_Right_Begingspf">       

        <div class="editor-label01">            
            <label for="BuyerContractNo">Buyer Contract No:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.BuyerContractNo) %>
            <%: Html.ValidationMessageFor(model => model.BuyerContractNo) %>
        </div>

        <div class="editor-label01">
           <label for="BuyerContractDate">Buyer Contract Date:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.BuyerContractDate) %>
            <%: Html.ValidationMessageFor(model => model.BuyerContractDate) %>
        </div>

        <div class="editor-label01">
            <label for="BKMEANo">BKMEA No:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.BKMEANo) %>
            <%: Html.ValidationMessageFor(model => model.BKMEANo) %>
        </div>

        <div class="editor-label01">
            <label for="BINNo">BIN No:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.BINNo) %>
            <%: Html.ValidationMessageFor(model => model.BINNo) %>
        </div>

        <div class="editor-label01">
            <label for="SBNo">SB No:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.SBNo) %>
            <%: Html.ValidationMessageFor(model => model.SBNo) %>
        </div>

        <div class="editor-label01">           
            <label for="SBDate">SB Date:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.SBDate) %>
            <%: Html.ValidationMessageFor(model => model.SBDate) %>
        </div>  
        <div class="editor-label01">           
            <label for="Itemnumber">Item Number:</label>
        </div>
        <div class="editor-field01">
            <%: Html.TextAreaFor(model => model.Itemnumber)%>
            <%: Html.ValidationMessageFor(model => model.Itemnumber)%>
        </div>            
   </div>    
         <p>
           <input type="submit" class="btn btn-info btn-lg active" data-toggle="button" value="Save" />     
           <input type="button" onclick="window.location='<%: Url.Action("GSPFormInfo") %>'" class="btn btn-default btn-lg" value="Cancel" />
        
        </p>
    </fieldset>
<% } %>
</div>

<script type="text/javascript">

    $('#Invoiceno').click(function () {
        var Result = $.post('<%: ResolveUrl("~/Private/ExporterFormSearchByInvoiceNo?invoiceno=")%>' + $('#InvoiceNo').attr("value"), function (data) {
            $("#InvoiceNo").val(data.InvoiceNo);
            //$("#InvoiceDate").val(data.InvoiceDate);
            $("#ContractNo").val(data.ContractNo);
            $("#ContractDate").val(data.ContractDate);           
          
            //$("#ExporterID").val(data.ExporterID);
            //$("#ConsigneeID").val(data.ConsigneeID);          
            $("#TransportID").val(data.TransportID);
            $("#EPNo").val(data.EPNo);
            $("#ExpNo").val(data.ExpNo);
            $("#ExpDate").val(data.ExpDate);
            $("#BLNo").val(data.BLNo);
            $("#BLDate").val(data.BLDate);
            //$("#ExFactoryDate").val(data.ExFactoryDate);
        });
    });

</script>

</asp:Content>
