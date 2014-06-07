using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Test.Structure.TaskManager;

namespace Test.Structure
{
    public class ServerObject : ITaskManager
    {
        public object Execute(int moduleId, string methodName, object param)
        {
            TestTaskManager obj = new TestTaskManager();
            return obj.Execute(methodName, param);
        }

        public object Execute(int moduleId, string methodName)
        {
            TestTaskManager obj = new TestTaskManager();
            return obj.Execute(methodName);
        }
    }
}
