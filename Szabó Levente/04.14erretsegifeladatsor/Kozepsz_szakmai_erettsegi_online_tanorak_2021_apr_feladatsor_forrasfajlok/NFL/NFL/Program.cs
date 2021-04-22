using System;
using System.Collections.Generic;
using System.IO;
namespace NFL
    
{
    class Program
    {
        static void Main(string[] args)
        {
            List<Jatekos> jatekosok = new List<Jatekos>();
            foreach (var sor in File.ReadAllLines("NFL_iranyitok.txt"))
            {
                jatekosok.Add(new Jatekos(sor));
            }
            Console.WriteLine("5. felafat: A statisztikában {0} irányitó szerepel", jatekosok.Count);

            Console.WriteLine("7. feladat: A legjobb irányítók:");
            foreach (var j in jatekosok)
            {
                if (j.Mutató >= 100 && j.YardMeterben >= 4000)
                {
                    Console.WriteLine("\t {0} (Irányító mutató): {1}. Passzok: {2}m)",
                        j.FormazottNev(j.Név), j.Mutató, j.YardMeterben);
                }

             
            }
            Console.Write("8. feladat: Eladott labdák száma:");
            int eladott = int.Parse(Console.ReadLine());
            List<string> legtobbeteladott = new List<string>();
            foreach (var k in jatekosok)
            {
                if (k.Eladott > eladott)
                {
                    legtobbeteladott.Add(k.FormazottNev(k.Név));
                }
            }
            legtobbeteladott.Sort();
            File.WriteAllLines("legtobbetaladot.txt", legtobbeteladott);

            int legjobb = 0;
            for (int i = 1; i < jatekosok.Count; i++)
            {
                if (jatekosok[i].TDk > jatekosok[legjobb].TDk)
                {
                    legjobb = i;
                }
            }
            Console.WriteLine("9. feladat: A legtöbb TD-t szerző játékos: ");
            Console.WriteLine("\t Neve: {0}", jatekosok[legjobb].Név);
            Console.WriteLine("\t TD-k száma: {0}", jatekosok[legjobb].TDk);
            Console.WriteLine("\t Eladott labdák száma: {0}", jatekosok[legjobb].Eladott);

            Dictionary<string, int> stat = new Dictionary<string, int>();
            foreach (var item in jatekosok)
            {
                if (stat.ContainsKey(item.Egyetem))
                    stat[item.Egyetem]++;
                else
                    stat.Add(item.Egyetem, 1);
            }
            Console.WriteLine("10. feladat: Legsikeresebb egyetem:");
            foreach (var item in stat)
            {
                if (item.Value > 1)
                    Console.WriteLine("{0} - {1}", item.Key,item.Value);
            }
        }
    }
}
