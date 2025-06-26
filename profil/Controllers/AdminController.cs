using Microsoft.AspNetCore.Mvc;

namespace Profil.Controllers
{
	public class AdminController : Controller
	{
		public IActionResult Index()
		{
			return View();
		}
	}
}
