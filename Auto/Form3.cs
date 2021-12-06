using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Auto
{
    public partial class Form3 : Form
    {
        Model3 db = new Model3();
        public static Users USER { get; set; }
        public Form3()
        {
            InitializeComponent();
        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void Form3_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            // проверяем, что во все текстовые поля введены данные
            if (textBox1.Text == "" || textBox2.Text == "" ||
               textBox3.Text == "" || textBox4.Text == "" || textBox5.Text == "")
            {
                MessageBox.Show("Нужно задать все данные!");
                return;
            }
            if (textBox2.Text != textBox4.Text)
            {
                MessageBox.Show("Значения паролей не совпадают!");
                return;
            }
            // ищем запись пользователя с введенным логином
            Users usr = db.Users.Find(textBox1.Text);
            // если такой пользователь есть и его пароль правильный
            if (usr != null)
            {
                MessageBox.Show("Пользователь с таким логином уже есть!");
                return;
            }
            // создаем объект Users для нового пользователя
            usr = new Users();
            usr.login = textBox1.Text;
            usr.password = textBox2.Text;
            usr.role = textBox5.Text;
            usr.name = textBox3.Text;
            // добавляем новый объект в коллекцию объектов Users
            db.Users.Add(usr);
            try
            {
                // сохраняем нового пользователя в базе данных
                db.SaveChanges();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return;
            }
            MessageBox.Show("Пользователь" + usr.login + "зарегистрирован!");
            Form1.FORMA.Show();
            this.Close();
            return;
        }
    }
}
