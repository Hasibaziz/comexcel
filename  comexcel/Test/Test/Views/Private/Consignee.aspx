<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Test.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Consignee
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
     <fieldset><div id="RecordsContainer"></div></fieldset>
   </div>
</div>
    <script type="text/javascript">

        $(document).ready(function () {

            $('#RecordsContainer').jtable({
                paging: true,
                pageSize: 15,
                sorting: false,
                defaultSorting: 'Name ASC',
                actions: {
                    listAction: '<%=Url.Content("~/Private/ConsigneeDetailsList") %>',
                    createAction: '<%=Url.Content("~/Private/AddUpdateConsigneeDetails") %>',
                    updateAction: '<%=Url.Content("~/Private/AddUpdateConsigneeDetails") %>'
                    //deleteAction: '<%=Url.Content("~/Private/DeleteConsigneedeatils") %>'
                },
                fields: {
                    ID: {
                        key: true,
                        create: false,
                        edit: false,
                        list: false
                    },
                    ConsigneeNo: {
                        title: 'Consignee Name',
                        width: '20%'
                    },
                    ConsigneeName: {
                        title: 'Consignee Address',
                        type: 'textarea',
                        inputClass: 'validate[optional,maxSize[200]]'
                    },
                    Country: {
                        title: 'Country',
                        width: '25%',
                        inputClass: 'validate[optional,maxSize[100]]'
                    }
                },
                formCreated: function (event, data) {
                    data.form.find('input[name="ConsigneeNo"]').addClass('validate[required]');
                    data.form.find('input[name="ConsigneeName"]').addClass('validate[required]');
                    data.form.find('input[name="Country"]').addClass('validate[required]'); 
                    data.form.validationEngine();
                },
                //Validate form when it is being submitted
                formSubmitting: function (event, data) {
                    return data.form.validationEngine('validate');
                },
                //Dispose validation logic when form is closed
                formClosed: function (event, data) {
                    data.form.validationEngine('hide');
                    data.form.validationEngine('detach');
                }
            });
            $('#RecordsContainer').jtable('load');
        });
 
    </script>


</asp:Content>
