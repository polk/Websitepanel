﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="OrgPolicyEditor.ascx.cs" Inherits="WebsitePanel.Portal.UserControls.OrgPolicyEditor" %>

<asp:UpdatePanel runat="server" ID="OrgPolicyPanel" UpdateMode="Conditional" ChildrenAsTriggers="true">
    <ContentTemplate>
        <asp:CheckBox id="chkEnablePolicy" runat="server" meta:resourcekey="chkEnablePolicy" Text="Enable Policy"
            CssClass="NormalBold" AutoPostBack="true" OnCheckedChanged="chkEnablePolicy_CheckedChanged"/>
        <table id="PolicyBlock" runat="server" style="width:500px;">
            <tr>
                <td colspan="2" style="padding-top: 10px;">
	                <asp:GridView id="gvAdditionalGroups" runat="server"  EnableViewState="true" AutoGenerateColumns="false"
		                Width="100%" meta:resourcekey="gvAdditionalGroups" CssSelectorClass="NormalGridView" OnRowCommand="gvAdditionalGroup_RowCommand" DataKeyNames="GroupId">
		                <Columns>
                            <asp:TemplateField meta:resourcekey="gvAdditionalGroupEdit" HeaderText="gvAdditionalGroupEdit">
                                <ItemTemplate>
                                    <asp:ImageButton ID="cmdEdit" runat="server" SkinID="EditSmall" CommandName="EditItem" AlternateText="Edit record" CommandArgument='<%# Eval("GroupId") %>' ></asp:ImageButton>
                                </ItemTemplate>
                                </asp:TemplateField>
			                <asp:TemplateField meta:resourcekey="gvAdditionalGroup" HeaderText="gvAdditionalGroup">
				                <ItemStyle Width="100%"></ItemStyle>
				                <ItemTemplate>
					                <asp:Literal id="litDisplayAdditionalGroup" runat="server" Text='<%# Eval("GroupName") %>'></asp:Literal>
                                </ItemTemplate>
			                </asp:TemplateField>
			                <asp:TemplateField>
                                <ItemStyle Width="30px" Wrap="false"></ItemStyle>
				                <ItemTemplate>
					                &nbsp;<asp:ImageButton id="imgDelAdditionalGroup" runat="server" Text="Delete" SkinID="ExchangeDelete"
						                CommandName="DeleteItem" CommandArgument='<%# Eval("GroupId") %>' 
						                meta:resourcekey="cmdDelete" OnClientClick="return confirm('Are you sure you want to delete selected group?')"></asp:ImageButton>
				                </ItemTemplate>
			                </asp:TemplateField>
		                </Columns>
	                </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="Normal" style="width:150px; padding-top: 10px;">
                    <asp:Label ID="lblAdditionalGroupName" runat="server" meta:resourcekey="lblAdditionalGroupName" Text="Display Name:"/>
                </td>
                <td class="Normal" style="padding-top: 10px;">
                    <asp:TextBox ID="txtAdditionalGroup" runat="server" CssClass="NormalTextBox" Width="200"/>
                    <asp:RequiredFieldValidator ID="valRequireAdditionalGroup" runat="server" meta:resourcekey="valRequireAdditionalGroup" ControlToValidate="txtAdditionalGroup"
					    ErrorMessage="Enter Display Name" Display="Dynamic" Text="*" ValidationGroup="SettingsAdditionalGroupEditor" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="valDuplicateAdditionalGroup" runat="server" meta:resourcekey="valDuplicateAdditionalGroup" ControlToValidate="txtAdditionalGroup"
                        OnServerValidate="DuplicateName_Validation" ErrorMessage="Duplicate Display Name" ValidateEmptyText="false" Display="Dynamic" Text="*"
                        ValidationGroup="SettingsAdditionalGroupEditor" SetFocusOnError="True"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="padding-top: 10px;">
                    <div class="FormButtonsBarClean">
                        <asp:Button ID="btnAddAdditionalGroup" runat="server" meta:resourcekey="btnAddAdditionalGroup"
                            Text="Add New Group" CssClass="Button1" OnClick="btnAddAdditionalGroup_Click" ValidationGroup="SettingsAdditionalGroupEditor" />
                        <asp:Button ID="btnUpdateAdditionalGroup" runat="server" meta:resourcekey="btnUpdateAdditionalGroup"
                            Text="Update Group" CssClass="Button1" OnClick="btnUpdateAdditionalGroup_Click" ValidationGroup="SettingsAdditionalGroupEditor" />
                    </div>
                </td>
            </tr>
        </table>
	</ContentTemplate>
</asp:UpdatePanel>