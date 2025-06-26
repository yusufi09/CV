using Microsoft.AspNetCore.Mvc;

namespace CV.ViewComponents.Home
{
	public class _ContactViewComponentPartial : ViewComponent
	{
		public IViewComponentResult Invoke()
		{
			return View();
		}
	}
}
