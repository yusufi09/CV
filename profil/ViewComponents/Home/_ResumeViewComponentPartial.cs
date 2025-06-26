using Microsoft.AspNetCore.Mvc;

namespace CV.ViewComponents.Home
{
	public class _ResumeViewComponentPartial : ViewComponent
	{
		public IViewComponentResult Invoke()
		{
			return View();
		}
	}
}
