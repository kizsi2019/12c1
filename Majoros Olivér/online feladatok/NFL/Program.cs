using System;
using System.Collections.Generic;
using System.IO;

namespace ConsoleApp1
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
                    Console.WriteLine("\t {0} (irányító mutató: {1}. Passzok: {2}m)", j.FormazottNev(j.Név), j.Mutató, j.YardMeterben);
                }
            }
            Console.WriteLine("8. feladat: Eladott labdák száma:");
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

            int legjobb = 0;
            for (int i = 0; i < jatékosok.Count; i++)
            {
                if (jatékosok[i].TDk > jatékosok[legjobb].TDk)
                {
                    legjobb = i;
                }

            }
            Console.WriteLine("9. feladat: A legtöbb TD-t szerző játékos:");
            Console.WriteLine("\t Neve: {0}", jatékosok[legjobb].Név);
            Console.WriteLine("\t TD-k száma: {0}", jatékosok[legjobb].TDk);
            Console.WriteLine("\t Eladott labdák száma: {0}", jatékosok[legjobb].Eladott);

            Dictionary<string, int> stat = new Dictionary<string, int>();
            foreach (var j in jatékosok)
            {
                if (stat.ContainsKey(j.Egyetem))
                {
                    stat[j.Egyetem]++;                
                }
                else
                {
                    stat.Add(j.Egyetem, 1);
                }
            }
            Console.WriteLine("10. feladat: Legsikeresebb egyetemek:");
            foreach (var s in stat)
            {
                if  (s.Value > 1)
                {
                    Console.WriteLine("\t {0} - {1}", s.Key, s.Value);
                }
            }
        }
    }
}
