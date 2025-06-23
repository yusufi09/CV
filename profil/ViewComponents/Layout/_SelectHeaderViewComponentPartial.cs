using BLL;
using Microsoft.AspNetCore.Mvc;

namespace WEBUI.ViewComponents.Layout
{
    public class _SelectHeaderViewComponentPartial : ViewComponent
    {
        private readonly HeaderService headerService;
        public _SelectHeaderViewComponentPartial()
        {
            headerService = new HeaderService();
        }
        public IViewComponentResult Invoke()
        {
            var header = headerService.GetHeader();
            return View(header);
        }
    }
}

