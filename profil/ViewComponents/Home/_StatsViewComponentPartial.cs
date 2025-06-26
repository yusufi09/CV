using BLL;
using Microsoft.AspNetCore.Mvc;

namespace CV.ViewComponents.Home
{
	public class _StatsViewComponentPartial : ViewComponent
	{
		public IViewComponentResult Invoke()
		{
			return View();
		}
	}
}
