<%@ Control ValidateRequestMode="Disabled" Language="C#" CodeBehind="PostEdit.ascx.cs" Inherits="SimpleCMS.Views.PostEdit" %>

<div class="wrap">

    <asp:Label CssClass="regular-text " ID="titleLabel" runat="server" Text="Title"/>
    <asp:TextBox ID="PostTitle" OnTextChanged="PostTitle_OnTextChanged" runat="server" Text="<%# Title %>"/>
    <asp:RequiredFieldValidator ErrorMessage="Post title is required" runat="server" ControlToValidate="PostTitle"/>
    <asp:Label CssClass="regular-text" ID="contentLabel" runat="server" Text="Content"/>
    <textarea class="editor" name="editor" runat="server" ID="ContentTextArea" cols="25"><%# Content %></textarea>

    <div class="button-row">
        <asp:Button
            CssClass="button"
            ID="Button1"
            OnClick="Button1_OnClick" runat="server"/>
    </div>
</div>

<script>
        tinymce.init({
            selector: '.editor',
          height: 500,
          menubar: false,
          plugins: [
            'advlist autolink lists link image charmap print preview anchor',
            'searchreplace visualblocks code fullscreen',
            'insertdatetime media table paste code help wordcount'
          ],
            setup: function(editor) {
              editor.on('init', function(e) {
                  console.log(e);
                console.log('The Editor has initialized.');
              }); 
              
              editor.on('change', function(e) {
                       console.log('The Editor has change.');
              });   

            },
       
          toolbar: 'undo redo | formatselect | ' +
          'bold italic backcolor | alignleft aligncenter ' +
          'alignright alignjustify | bullist numlist outdent indent | ' +
          'removeformat | help',
          content_style: 'body { font-family:Helvetica,Arial,sans-serif; font-size:14px }'
        });
</script>