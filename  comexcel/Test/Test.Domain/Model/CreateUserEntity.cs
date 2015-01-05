using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Test.Domain.Model
{
   public class CreateUserEntity
    {
      public string ID{set;get;}
      public string UserName{set;get;}
      public string Password{set;get;}
      public string FullName{set;get;}
      public string Email{set;get;}
      public bool IsActive{set;get;}
      public DateTime Created{set;get;}
      public string LocID { set; get; }
      public string GroupID { set; get; }

    }
}
