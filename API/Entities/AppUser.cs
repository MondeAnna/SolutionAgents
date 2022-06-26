namespace API.Entities
{

    public class AppUser
    {
        public int Id { get; set; }

        public string email { get; set; }

        public string companyName { get; set; }

        public string address { get; set; }

        public byte[] passwordHash { get; set; }

        public byte[] passwordSalt { get; set; }
    }

} 