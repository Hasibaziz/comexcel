<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Test.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    TTRecord
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
                    listAction: '<%=Url.Content("~/Private/TTRecordList") %>',
                    createAction: '<%=Url.Content("~/Private/AddUpdateTTRecord") %>',
                    updateAction: '<%=Url.Content("~/Private/AddUpdateTTRecord") %>'
                    //deleteAction: '<%=Url.Content("~/Private/DeleteExporterdeatils") %>'
                },
                fields: {
                    ID: {
                        key: true,
                        create: false,
                        edit: false,
                        list: false
                    },
                    TTNumber: {
                        title: 'TT Number',
                        width: '15%'
                    },
                    TTAmount: {
                        title: 'TT Amount',
                        width: '10%',
                        //inputClass: 'validate[required,minSize[6]]' ---For Interger Value----validate[required,custom[integer],max[50]]
                        inputClass: 'validate[optional,maxSize[50]]'
                    },
                    BankName: {
                        title: 'Bank Name',
                        width: '12%',
                        //inputClass: 'validate[required,minSize[6]]' ---For Interger Value----validate[required,custom[integer],max[50]]
                        inputClass: 'validate[optional,maxSize[100]]'
                    },
                    ExporterDetailsID: {
                        title: 'Location',
                        width: '10%',
                        options: '<%=Url.Content("~/Private/AllExporterDetails") %>',
                        inputClass: 'validate[optional,maxSize[50]]'
                    },
                    TTDate: {
                        title: 'TT Date',
                        width: '15%',
                        inputClass: 'validate[optional,maxSize[50]]'
                    }
                },
                formCreated: function (event, data) {
                    data.form.find('input[name="TTNumber"]').addClass('validate[required]');
                    data.form.find('input[name="TTAmount"]').addClass('validate[required]');
                    data.form.find('input[name="ExporterDetailsID"]').addClass('validate[required]');
                    data.form.find('input[name="TTDate"]').addClass('validate[required]');
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
