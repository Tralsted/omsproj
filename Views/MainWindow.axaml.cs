using Avalonia.Controls;
using System.Linq;

namespace omsproj.Views;

public partial class MainWindow : Window
{
    public MainWindow()
    {
        InitializeComponent();
        Orderlist.ItemsSource = new string[]
                {"cat", "camel", "cow", "chameleon", "mouse", "lion", "zebra" }
            .OrderBy(x => x);
    }
}
