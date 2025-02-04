using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace busTicketsWeb.Models
{
    public class Bus
    {
        public int Id { get; set; }
        public string FromCity { get; set; }
        public string ToCity { get; set; }
        public DateTime TravelDate { get; set; }
        public string BusName { get; set; }
        public decimal Price { get; set; }
        public int AvailableSeats { get; set; }
    }
}