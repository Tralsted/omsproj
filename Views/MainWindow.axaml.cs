using System.ComponentModel;
using Avalonia.Controls;
using System.Linq;
using Avalonia.Media;

namespace omsproj.Views;

public partial class MainWindow : Window
{
    public MainWindow()
    {
        InitializeComponent();
        Orderlist.ItemsSource = new string[]
                { "cat", "camel", "cow", "chameleon", "mouse", "lion", "zebra" }
            .OrderBy(x => x);
        OrderStatus.ItemsSource = new string[]
                { "cat", "camel", "cow", "chameleon", "mouse", "lion", "zebra" }
            .OrderBy(x => x);
    }
}

  
   

   

  