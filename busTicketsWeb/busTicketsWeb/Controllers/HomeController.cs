using System;
using System.Linq;
using System.Web.Mvc;
using busTicketsWeb.Models;
using System.Data;
using Dapper;
using System.Configuration;

namespace busTicketsWeb.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult SignUp()
        {
            return View();
        }

        [HttpPost]
        public ActionResult SignUp(User user)
        {
            using (IDbConnection db = DatabaseHelper.GetConnection())
            {
                string query = "INSERT INTO Users (FullName, Email, PasswordHash) VALUES (@FullName, @Email, @PasswordHash)";
                db.Execute(query, user);
            }
            ViewBag.Message = "Sign-up successful! You can now log in.";
            return RedirectToAction("Login");
        }

        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Login(string email, string password)
        {
            using (IDbConnection db = DatabaseHelper.GetConnection())
            {
                string query = "SELECT * FROM Users WHERE Email = @Email AND PasswordHash = @PasswordHash";
                var user = db.QueryFirstOrDefault<User>(query, new { Email = email, PasswordHash = password });

                if (user != null)
                {
                    Session["UserEmail"] = user.Email;
                    Session["UserName"] = user.FullName;
                    return RedirectToAction("Index");
                }
            }

            ViewBag.Message = "Invalid email or password.";
            return View();
        }

        public ActionResult Logout()
        {
            Session.Clear();
            return RedirectToAction("Index");
        }


        public ActionResult TestConnection()
        {
            string connString = ConfigurationManager.ConnectionStrings["DefaultConnection"]?.ConnectionString;

            if (string.IsNullOrEmpty(connString))
            {
                return Content("❌ Connection string is missing or invalid.");
            }
            else
            {
                return Content("✅ Connection string found: " + connString);
            }
        }

    }






}

