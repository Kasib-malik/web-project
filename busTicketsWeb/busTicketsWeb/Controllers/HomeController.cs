using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using busTicketsWeb.Models; // ✅ Add this to access the Bus model


namespace busTicketsWeb.Controllers
{
    public class HomeController : Controller
    {
        private static List<Bus> buses = new List<Bus>
        {
            new Bus { Id = 1, FromCity = "Lahore", ToCity = "Islamabad", TravelDate = DateTime.Parse("2025-01-30"), BusName = "Daewoo", Price = 1500, AvailableSeats = 10 },
            new Bus { Id = 2, FromCity = "Karachi", ToCity = "Lahore", TravelDate = DateTime.Parse("2025-01-31"), BusName = "Faisal Movers", Price = 3500, AvailableSeats = 5 },
            new Bus { Id = 3, FromCity = "Islamabad", ToCity = "Multan", TravelDate = DateTime.Parse("2025-01-30"), BusName = "Skyways", Price = 2500, AvailableSeats = 8 }
        };

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult SignUp()
        {
            return View();
        }

        public ActionResult Login()
        {
            return View();
        }

        public ActionResult Admin()
        {
            return View();
        }

        [HttpPost]
        public ActionResult SearchBuses(string fromCity, string toCity, DateTime travelDate)
        {
            var results = buses.Where(b =>
                b.FromCity.Equals(fromCity, StringComparison.OrdinalIgnoreCase) &&
                b.ToCity.Equals(toCity, StringComparison.OrdinalIgnoreCase) &&
                b.TravelDate.Date == travelDate.Date
            ).ToList();

            return View("SearchResults", results);
        }
    }
}
    
