<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageTasks.aspx.cs" Inherits="ToDoApp2.About" %>


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
     height: 80vh;
     text-align: center;
     flex-direction: column;
    }
   .complete-button{
    background-color: cornflowerblue;
    border:none;
    color: white;
    padding: 10px 25px;
    text-align : center;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    border-radius: 5px;
   }

.complete-button:hover{
    background-color : #3e8e41;
}

.delete-button{
    background-color: red;
    color: white;
    text-align:center;
    border-radius :6px;
    padding: 10px 25px;
    cursor: pointer;
    font-size: 16px;
    margin: 4px 2px;
    border:none;
}

.delete-button:hover{
     background-color: #3e8e41;

}

.add-button{
    background-color: forestgreen;
    color: white;
    text-align:center;
    border-radius :6px;
    padding: 10px 25px;
    cursor: pointer;
    font-size: 16px;
}

.logout-button{
    background-color : black;
    color: whitesmoke;
    border-radius :6px;
    padding: 10px 25px;
    font-size:16px;
}

.welcome-card{
    padding:40px 50px;
    border-radius: 20px;
    box-shadow: 0px 10px 25px rgba(0,0,0,0.15);

    width: 610px;
    backdrop-filter : blur(5px);
    animation:fadein ease-in-out;

}

.instruction-label{
    font-size: 16px;
    color: #555;
    margin-bottom: 25px;
    display:block;
    
}
.username-label{
    font-size: 16px;
    color: #3e8e41;
    margin-bottom: 25px;
    display:block;

}

.name-label{
    font-size: 16px;
    color: #555;
    margin-bottom: 25px;
    display:block;

}
#tasktxt{
    padding:12px;
    width:100%;
    border-radius :10px;
    border:1px solid #bbb;
    font-size: 16px;
    margin-bottom: 20px;
    outline:none;
    box-sizing:border-box;

}

</style>

</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    <div class="center-container">
      <div class="welcome-card">
          <main aria-labelledby="title">
   

          <asp:Label ID="usernamelbl" runat="server" Text="Label" CssClass="username-label"></asp:Label>
   

    <asp:Label ID="instructionslbl" runat="server" Text="Below you can add, delete and mark tasks as completed ❤️" CssClass="instruction-label"></asp:Label>

    <div>
        <asp:Label ID="tasknamelbl" runat="server" Text="Write the name of the task and click Add" CssClass="name-label"></asp:Label>
        &nbsp;
        <asp:TextBox ID="tasktxt" runat="server"></asp:TextBox>
        <asp:Button ID="AddBtn" runat="server" Text="Add Task" CssClass ="add-button" OnClick="AddBtn_Click" />
    </div>

    <div style="margin-top: 15px;">
        <asp:CheckBoxList ID="TaskList" runat="server"></asp:CheckBoxList>  
    </div>

    <div style="margin-top: 15px;">
        <asp:Button ID="CompleteBtn" runat="server" Text="Mark Completed" CssClass ="complete-button" OnClick="CompleteBtn_Click" />
        <asp:Button ID="DeleteBtn" runat="server" Text="Delete Selected" CssClass ="delete-button" OnClick="DeleteBtn_Click" />
    </div>

    <div style ="margin-top: 20px;">
        <asp:Button ID="logOutBtn" runat="server" Text="Log Out" CssClass="logout-button" OnClick="logOutBtn_Click" />
    </div>
  </main>
 </div>
</div>

   

</asp:Content>
