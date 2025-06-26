using Microsoft.AspNetCore.Mvc;

namespace CV.ViewComponents.Home
{
	public class _TestimonialsViewComponentPartial : ViewComponent
	{
		public IViewComponentResult Invoke()
		{
			return View();
		}
	}
}