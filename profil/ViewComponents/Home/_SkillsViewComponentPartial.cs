using Microsoft.AspNetCore.Mvc;

namespace CV.ViewComponents.Home
{
	public class _SkillsViewComponentPartial : ViewComponent
	{
		public IViewComponentResult Invoke()
		{
			return View();
		}
	}
}
