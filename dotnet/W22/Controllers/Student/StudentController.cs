using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;

namespace MyWeb.Controllers.Student {

    public enum Height {
        Short,
        Medium,
        Tall,
    }

    public class Student {
        public int Id { set; get; }
        public string FirstName { set; get; }
        public string LastName { set; get; }
        public Height Height { set; get; }
    }

    public class Query {
        public string Name { set; get; }
    }

    [ApiController]
    [Route("api/[controller]/[action]")]
    public class StudentController : ControllerBase {

        [HttpGet]
        public ActionResult<List<Student>> GetStudents() {
            return new List<Student> {
                new Student(),
                new Student(),
                new Student()
            };
        }

        [HttpPost]
        public ActionResult<List<Student>> Query([FromBody]Query query) {
            return new List<Student> {
                new Student(),
                new Student(),
                new Student()
            };
        }
    }
}