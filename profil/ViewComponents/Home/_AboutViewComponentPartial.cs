using BLL;
using Microsoft.AspNetCore.Mvc;

namespace WEBUI.ViewComponents.Home
{
	public class _AboutViewComponentPartial : ViewComponent
	{
		private readonly AboutService aboutService;
		public _AboutViewComponentPartial()
		{
			aboutService=new AboutService();
		}
		public IViewComponentResult Invoke()
		{
			var about = aboutService.GetAbout();
			return View(about);
		}
	}
}
