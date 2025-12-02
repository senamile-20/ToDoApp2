<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ToDoApp2._Default" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
    <style>

        
        body {
            background: linear-gradient(135deg, #a8c0ff, #fbc2eb);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

     
        .center-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 85vh;
            text-align: center;
        }

       
        .welcome-card {
            background: rgba(255, 255, 255, 0.85);
            padding: 40px 50px;
            border-radius: 20px;
            box-shadow: 0px 10px 25px rgba(0,0,0,0.15);
            width: 380px;
            backdrop-filter: blur(8px);
            animation: fadeIn 0.9s ease-in-out;
        }

        
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

       
        .welcome-title {
            font-size: 34px;
            font-weight: 800;
            color: #333;
            margin-bottom: 10px;
        }

     
        .subtitle-label {
            font-size: 16px;
            color: #555;
            margin-bottom: 25px;
            display: block;
        }

     
        .input-label {
            display: block;
            margin-bottom: 6px;
            font-size: 15px;
            color: #444;
        }

        #nametxt {
            padding: 12px;
            width: 100%;
            border-radius: 10px;
            border: 1px solid #bbb;
            font-size: 16px;
            margin-bottom: 22px;
            outline: none;
            box-sizing: border-box;
        }

        #nametxt:focus {
            border-color: #7a5cf5;
            box-shadow: 0px 0px 6px #c6b7ff;
        }

      
        .submit-button {
            background-color: #7a5cf5;
            color: white;
            padding: 12px 20px;
            border: none;
            width: 100%;
            border-radius: 10px;
            cursor: pointer;
            font-size: 18px;
            transition: 0.3s ease;
        }

        .submit-button:hover {
            background-color: #6a4ae3;
            transform: translateY(-2px);
            scroll-margin-top:20px;
        }

    </style>
</asp:Content>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="center-container">
        <div class="welcome-card">

            <asp:Label ID="Label1" runat="server" Text="Welcome!"   CssClass="welcome-title">
               
               
            </asp:Label>

            <asp:Label ID="Label2" runat="server"
                Text="Manage your daily tasks easily ❤️"
                CssClass="subtitle-label">
            </asp:Label>

            <asp:Label ID="enterlbl" runat="server"
                Text="Enter your username"
                CssClass="input-label">
            </asp:Label>

            <asp:TextBox ID="nametxt" runat="server"></asp:TextBox>

            <asp:Button ID="submitBtn" runat="server"
                Text="Continue"
                CssClass="submit-button"
                OnClick="submitBtn_Click" />

        </div>
    </div>

</asp:Content>
