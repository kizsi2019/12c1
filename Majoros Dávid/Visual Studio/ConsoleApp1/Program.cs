using System;
using System.Collections.Generic;
using System.IO;

namespace ConsoleApp1
{
    class Feladvany
    {
        public string Kezdo { get; private set; }
        public int Meret { get; private set; }

        public Feladvany(string sor)
        {
            Kezdo = sor;
            Meret = Convert.ToInt32(Math.Sqrt(sor.Length));
        }

        public void Kirajzol()
        {
            for (int i = 0; i < Kezdo.Length; i++)
            {
                if (Kezdo[i] == '0')
                {
                    Console.Write(".");
                }
                else
                {
                    Console.Write(Kezdo[i]);
                }
                if (i % Meret == Meret - 1)
                {
                    Console.WriteLine();
                }
            }
        }
    }

    class Program
    {
        static void Main(string[] args)
        {
            List<Feladvany> feladvanyok = new List<Feladvany>();
            StreamReader sr = new StreamReader("feladvanyok.txt");
            while (sr.EndOfStream)
            {
                feladvanyok.Add(new Feladvany(sr.ReadLine()));
            }
            sr.Close();
            Console.WriteLine("3. feladat: Beolvasva {0} feladvany", feladvanyok.Count);

            int meret;

            do
            {
                Console.WriteLine("4. feladat: Kérem a feladvány méretét [4..9]: ");
                meret =int.Parse(Console.ReadLine());
            } 
            while (meret < 4 || meret > 9);

            List<Feladvany> nElemuFeladvany = new List<Feladvany>();
            foreach (var f in feladvanyok)
            {
                if (f.Meret == meret)
                {
                   nElemuFeladvany.Add(f);
                }
                Console.WriteLine("{0}x{0} feladvanyból {1} darab van tárolva", meret, nElemuFeladvany.Count);
            }
        }
    }
}
