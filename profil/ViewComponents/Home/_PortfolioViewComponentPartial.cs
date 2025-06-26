using Microsoft.AspNetCore.Mvc;

namespace CV.ViewComponents.Home
{
	public class _PortfolioViewComponentPartial : ViewComponent
	{
		public IViewComponentResult Invoke()
		{
			return View();
		}
	}
}
