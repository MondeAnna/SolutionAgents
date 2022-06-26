using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using API.Data;
using API.Entities;
using Microsoft.AspNetCore.Mvc;
using API.DTOs;
using Microsoft.EntityFrameworkCore;
 
namespace API.Controllers
{
    public class AccountController : BaseApiController
    {
        private readonly DataContext _context;
        
        public AccountController(DataContext context)
        {
            _context = context;
        }
 
        [HttpPost("register")]
        public async Task<ActionResult<userDTO>> Register(registerDTO registerDto)
        {
 
             if(await EmailExists(registerDto.email))
                return BadRequest("email is taken");    
 
            using var hmac = new HMACSHA512();
 
            var user = new AppUser
            {
                email = registerDto.email.ToLower(),
                passwordHash = hmac.ComputeHash(Encoding.UTF8.GetBytes(registerDto.password)),
                passwordSalt = hmac.Key
            };
 
            _context.Users.Add(user);
            await _context.SaveChangesAsync();
 
            return new userDTO
            {
                email = user.email,
            };
        }
 
        [HttpPost("login")]
        public async Task<ActionResult<userDTO>> Login(loginDTO loginDto)
        {
            var user = await _context.Users
                .SingleOrDefaultAsync(x => x.email == loginDto.email);
 
            if (user == null) return Unauthorized("Invalid username");
 
            using var hmac = new HMACSHA512(user.passwordSalt);
 
            var computedHash = hmac.ComputeHash(Encoding.UTF8.GetBytes(loginDto.password));
 
            for (int i = 0; i < computedHash.Length; i++)
            {
                if (computedHash[i] != user.passwordHash[i]) return Unauthorized("Invalid password");
            }
 
            return new userDTO
            {
                email = user.email,
            };
        }
 
        private async Task<bool> EmailExists(string email)
        {
            return await _context.Users.AnyAsync(x => x.email == email.ToLower());
        }
 
    }
 
   
}
