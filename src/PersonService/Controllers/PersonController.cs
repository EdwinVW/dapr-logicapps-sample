using System;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using PersonService.Models;
using RandomNameGeneratorLibrary;

namespace PersonService.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class PersonController : ControllerBase
    {
        private PersonNameGenerator _personGenerator;
        private readonly ILogger<PersonController> _logger;

        public PersonController(ILogger<PersonController> logger)
        {
            _logger = logger;
            _personGenerator = new PersonNameGenerator();
        }

        [HttpGet]
        public Person GetOwnerInfo([FromQuery]string ownerId)
        {
            var name = _personGenerator.GenerateRandomFirstAndLastName();
            return new Person
            {
                Id = ownerId,
                Name = name,
                Email = $"{name.ToLowerInvariant().Replace(' ', '.')}@outlook.com"
            };
        }
    }
}
