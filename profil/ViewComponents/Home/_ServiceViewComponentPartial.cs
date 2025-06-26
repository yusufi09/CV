using Microsoft.AspNetCore.Mvc;

namespace CV.ViewComponents.Home
{
	public class _ServiceViewComponentPartial : ViewComponent
	{
		public IViewComponentResult Invoke()
		{
			return View();
		}
	}
}