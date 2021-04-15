using System;
using System.Collections.Generic;
using System.IO;

namespace NFL
{
    class Program
    {
        static void Main(string[] args)
        {
            List<Jatekos> jatékosok = new List<Jatekos>();
            foreach (var sor in File.ReadAllLines("NFL_iranyitok.txt"))
            {
                jatékosok.Add(new Jatekos(sor));
            }
            Console.WriteLine("5. feladat: A statisztikában {0} irányító szerepel", jatékosok.Count);

            Console.WriteLine("7. feladat: A legjobb irányítók:");
            foreach (var j in jatékosok)
            {
                if (j.Mutató >= 100 && j.YardMeterben >= 4000)
                {
                    Console.WriteLine("\t {0} (irányító mutató: {1}. Passzok: {2}m)",
                        j.FormazottNev(j.Név), j.Mutató, j.YardMeterben);
                }
            }

            Console.Write("8. feladat: Eladott labdák száma:");
            int eladott = int.Parse(Console.ReadLine());
            List<string> legtobbeteladott = new List<string>();
            foreach (var j in jatékosok)
            {
                if (j.Eladott > eladott)
                {
                    legtobbeteladott.Add(j.FormazottNev(j.Név));
                }
            }
            legtobbeteladott.Sort();
            File.WriteAllLines("legtobbeteladott.txt", legtobbeteladott);
        }
    }
}
