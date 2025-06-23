namespace Core
{
	public class Header
	{
		public int Id { get; set; }
		public string Name { get; set; }
		public string Surname { get; set; }
		public string ProfileImage { get; set; }

		public List<SocialMedia> SocialMedias { get; set; }
	}

	public class SocialMedia
	{
		public int Id { get; set; }
		public string Name { get; set; }
		public string Icon { get; set; }
		public string Url { get; set; }
	}
}
