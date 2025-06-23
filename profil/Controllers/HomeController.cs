using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;


namespace profil.Controllers
{
    public class HomeController : Controller
    {
        
        public IActionResult Index()
        {
            return View();
        }

     
    }
}
