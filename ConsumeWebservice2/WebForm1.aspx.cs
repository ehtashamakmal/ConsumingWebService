using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ConsumeWebservice2.localhost;

namespace ConsumeWebservice2
{
    public partial class WebForm1 : Page
    {
        private static List<CartItem> cartItems = new List<CartItem>();
        private CartService cartServiceClient; // Update YourServiceClient with the actual client class name

            protected void Page_Load(object sender, EventArgs e)
            {
                cartServiceClient = new CartService(); // Update YourServiceClient with the actual client class name

                if (!IsPostBack)
                {
                    BindCartItems();
                }
            }

            protected void AddToCartButton_Click(object sender, EventArgs e)
            {
                string itemId = ItemIdTextBox.Value;
                int quantity = int.Parse(QuantityTextBox.Value);

                cartServiceClient.AddToCart(itemId, quantity);
                BindCartItems();
            }

            protected void RemoveFromCartButton_Click(object sender, EventArgs e)
            {
                string itemId = ItemIdTextBox.Value;

                cartServiceClient.RemoveFromCart(itemId);
                BindCartItems();
            }




            private void BindCartItems()
        {       

            CartItem[] cartItems = cartServiceClient.GetCartItems();
            List<CartItem> itemList = new List<CartItem>(cartItems);
            CartItemsGridView.DataSource = itemList;
            CartItemsGridView.DataBind();

        }

        }
    }



