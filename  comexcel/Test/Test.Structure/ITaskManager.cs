using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Test.Structure
{
    public interface ITaskManager
    {
        object Execute(int moduleId, string methodName, object param);
        object Execute(int moduleId, string methodName);
    }
}
