﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Test.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Transhipment
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


<link href="~/Scripts/validationEngine/validationEngine.jquery.css" rel="stylesheet" type="text/css" />
<script src="<%: Url.Content("~/Scripts/validationEngine/jquery.validationEngine.js") %>" type="text/javascript"></script>
<script src="<%: Url.Content("~/Scripts/validationEngine/jquery.validationEngine-en.js") %>" type="text/javascript"></script>

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
                    listAction: '<%=Url.Content("~/Private/TranshipmentDetailsList") %>',
                    createAction: '<%=Url.Content("~/Private/AddUpdateTranshipmentDetails") %>'
//                    updateAction: '<%=Url.Content("~/Private/AddUpdateDestinationDetails") %>',
//                    deleteAction: '<%=Url.Content("~/Private/DeleteDestinationdeatils") %>'

                },
                fields: {
                    ID: {
                        key: true,
                        create: false,
                        edit: false,
                        list: false
                    },
                    CountryName: {
                        title: 'Country Name',
                        width: '10%'
                    },
                    Details: {
                        title: 'Details',
                        width: '20%'
                    }
                },
                formCreated: function (event, data) {
                    data.form.find('input[name="CountryName"]').addClass('validate[required]');
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
