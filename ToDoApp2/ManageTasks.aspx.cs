using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;


namespace ToDoApp2
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                usernamelbl.Text = "Welcome "+ Session["username"].ToString();
                string filepath = "C:\\Users\\Student\\Documents\\ISTN212\\C# PRACS\\ToDoApp2\\ToDoApp2\\tasks.txt";

                if (File.Exists(filepath))
                {
                    string[] lines = File.ReadAllLines(filepath);

                    foreach (string line in lines)
                    {
                        string[] parts = line.Split(',');

                        if (parts[0] == Session["username"].ToString())
                        {
                            string taskName = parts[1];
                            bool completed = false;

                            if (parts.Length > 2)
                                completed = parts[2] == "true";

                            ListItem item = new ListItem(taskName);
                            item.Selected = completed;

                           
                            if (completed)
                            {
                                item.Attributes.CssStyle.Add("text-decoration", "line-through");
                                item.Attributes.CssStyle.Add("color", "gray");
                            }

                            TaskList.Items.Add(item);
                        }
                    }
                }
            }
        }


        protected void AddBtn_Click(object sender, EventArgs e)
        {
            string username = Session["username"].ToString();
            string taskName = tasktxt.Text.Trim();

            if (taskName == "") return;

            string filepath = "C:\\Users\\Student\\Documents\\ISTN212\\C# PRACS\\ToDoApp2\\ToDoApp2\\tasks.txt";

            File.AppendAllText(filepath, username + "," + taskName + ",false" + Environment.NewLine);

            TaskList.Items.Add(new ListItem(taskName));
            tasktxt.Text = "";
        }

        protected void CompleteBtn_Click(object sender, EventArgs e)
        {
            string username = Session["username"].ToString();
            string filepath = "C:\\Users\\Student\\Documents\\ISTN212\\C# PRACS\\ToDoApp2\\ToDoApp2\\tasks.txt";

            string[] lines = File.ReadAllLines(filepath);
            List<string> updated = new List<string>();

            foreach (string line in lines)
            {
                string[] parts = line.Split(',');

                if (parts[0] == username)
                {
                    bool isCompleted = false;

                    
                    foreach (ListItem item in TaskList.Items)
                    {
                        if (item.Text == parts[1] && item.Selected)
                        {
                            isCompleted = true;
                            item.Attributes.CssStyle.Add("text-decoration", "line-through");
                            item.Attributes.CssStyle.Add("color", "gray");
                        }
                    }

                    updated.Add($"{parts[0]},{parts[1]},{isCompleted.ToString().ToLower()}");
                }
                else
                {
                    updated.Add(line);
                }
            }

            File.WriteAllLines(filepath, updated);
        }


        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            string username = Session["username"].ToString();
            string filepath = "C:\\Users\\Student\\Documents\\ISTN212\\C# PRACS\\ToDoApp2\\ToDoApp2\\tasks.txt";

            string[] lines = File.ReadAllLines(filepath);
            List<string> updated = new List<string>();

            foreach (string line in lines)
            {
                string[] parts = line.Split(',');

                bool remove = false;
                if (parts[0] == username)
                {
                    foreach (ListItem item in TaskList.Items)
                    {
                        if (item.Selected && item.Text == parts[1])
                        {
                            remove = true;
                        }
                    }
                }

                if (!remove)
                    updated.Add(line);
            }

            File.WriteAllLines(filepath, updated);

          
            Response.Redirect(Request.RawUrl);
        }

        protected void logOutBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}