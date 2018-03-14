using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PrintFullName
{
    class Program
    {
        static void Main(string[] args)
        {
            askAndPrintName();
            Console.ReadLine();
        }
        static void askAndPrintName()
        {
            string firstName, secondName;

            Console.WriteLine("Welcome to the NS Apprentice - Git exercice program\n");
            Console.Write("Please, enter your first Name: ");
            firstName = Console.ReadLine();
            Console.Write("Now, enter your last name: ");
            secondName = Console.ReadLine();

            Name userName = new Name(firstName, secondName);
            userName.printName();
        }
    }
    public class Name
    {
        public string firstName;
        public string lastName;

        public Name(string fname, string lname)
        {
            firstName = fname;
            lastName = lname;
        }
        public void printName()
        {
            Console.WriteLine("\nThe name entered is: {0} {1}", firstName, lastName);
        }
    }
}