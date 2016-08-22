using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.ServiceModel.Activation;

namespace RESTService.Service
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Service1.svc or Service1.svc.cs at the Solution Explorer and start debugging.
    [AspNetCompatibilityRequirements(RequirementsMode = AspNetCompatibilityRequirementsMode.Allowed)]
    public class Service1 : IService1
    {
       
        public String DoWork()
        {
            return "Hello REST WCF Service! :)";
        }

        public int DoSquare(int value)
        {
            return value * value;
        }

        public int DoSum(Sum addValues)
        {
            return addValues.Value1 + addValues.Value2;
        }

        public int DoSubtract(Subtract subValues)
        {
            return subValues.Value1 - subValues.Value2;
        }
    }

    [DataContract]
    public class Sum
    {
        [DataMember]
        public int Value1 { get; set; }
        [DataMember]
        public int Value2 { get; set; }

        public Sum()
        {
            Value1 = 0;
            Value2 = 0;
        }
    }

    [DataContract]
    public class Subtract
    {
        [DataMember]
        public int Value1 { get; set; }
        [DataMember]
        public int Value2 { get; set; }

        public Subtract()
        {
            Value1 = 0;
            Value2 = 0;
        }
    }
}
