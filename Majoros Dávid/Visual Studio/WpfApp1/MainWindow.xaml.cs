using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace WpfApp1
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void BtnMinusz_Click(object sender, RoutedEventArgs e)
        {
            int meret = int.Parse(TxtMeret.Text);
            if (meret > 4)
            {
                TxtMeret.Text = (meret - 1).ToString();
            }
        }

        private void BtnPlusz_Click(object sender, RoutedEventArgs e)
        {
            int meret = int.Parse(TxtMeret.Text);
            if (meret < 9)
            {
                TxtMeret.Text = (meret + 1).ToString();
            }
        }

        private void TxtKezdoAllapot_TextChanged(object sender, TextChangedEventArgs e)
        {
            LblHossz.Content = string.Format("Hossz {0}", TxtKezdoAllapot.Text.Length);
        }

        private void BtnEllenorzes_Click(object sender, RoutedEventArgs e)
        {
            int meret = int.Parse(TxtMeret.Text);
            int hossz = TxtKezdoAllapot.Text.Length;
            if (meret * meret == hossz)
            {
                MessageBox.Show("A feladvány megfelelő hosszúságú");
            }
            else if (meret * meret > hossz)
            {
                MessageBox.Show(string.Format("A feladvány túl rövid: kell még {0} számjegy", meret * meret - hossz));
            }
            else
            {
                MessageBox.Show(string.Format("A feladvány túl hosszú: törlendő {0} számjegy", hossz - meret * meret));
            }
        }
    }
}
