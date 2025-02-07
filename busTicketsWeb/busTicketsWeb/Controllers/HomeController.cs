using System;
using System.Linq;
using System.Web.Mvc;
using busTicketsWeb.Models;
using System.Data;
using Dapper;

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
        public ActionResult SearchBuses()
        {
            return View(); // Show search form
        }

        [HttpPost]
        public ActionResult SearchBuses(string fromCity, string toCity, DateTime travelDate)
        {
            using (IDbConnection db = DatabaseHelper.GetConnection())
            {
                string query = "SELECT * FROM Buses WHERE FromCity = @FromCity AND ToCity = @ToCity AND TravelDate = @TravelDate";
                var buses = db.Query<Bus>(query, new { FromCity = fromCity, ToCity = toCity, TravelDate = travelDate }).ToList();

                return View("SearchResults", buses);
            }
        }
        public ActionResult Logout()
        {
            Session.Clear();
            return RedirectToAction("Index");
        }
        public ActionResult TestConnection()
        {
            try
            {
                using (IDbConnection db = DatabaseHelper.GetConnection())
                {
                    db.Open(); // Try opening the connection
                    return Content("✅ Database connection successful!");
                }
            }
            catch (Exception ex)
            {
                return Content("❌ Database connection failed: " + ex.Message);
            }
        }



    }
}
