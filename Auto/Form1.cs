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

    public partial class Form1 : Form
    {
        public static Form1 FORMA { get; set; }
        // для передачи данных о пользователе другим формам
        public static Users USER { get; set; }
        // закрытое поле хранит объект модели
        // для использования данных о пользователях в методах класса
        Model3 db = new Model3();
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            // проверяем, что в текстовые поля введены данные
            if (textBox1.Text == "" || textBox2.Text == "")
            {
                MessageBox.Show("Нужно задать логин и пароль!");
                return;
            }
            // ищем в коллекции с именем Users, объект типа Users
            // с введенным логином – первичным ключем
            Users usr = db.Users.Find(textBox1.Text);
            // если такой пользователь есть (не равен null)
            // и его пароль совпадает с введенным значением
            if ((usr != null) & (usr.password == textBox2.Text))
                {
                // сохраняем данные пользователя в статической переменной
                // для использования данных пользователя в других формах
                USER = usr;
                // сохраняем ссылку на данную форму в статической переменной
                // для возврата к этой форме
                FORMA = this;
                // проверяем роль пользователя
                if (usr.role == "inspector")
                {
                    // создаем форму директора
                    Form2 frm = new Form2();
                    // показываем форму директора
                    frm.Show();
                    // форму подключения скрываем (но не закрываем!)
                    this.Hide();
                }
                else
                {
                    // если данные введены неправильно, то показываем сообщение
                    MessageBox.Show("Пользователя с таким логином и паролем нет!");
                    return;
                }
            }
        }
        private void button1_Click(object sender, EventArgs e)
        {
            // создаем форму регистрации Form2
            Form3 f = new Form3();
            // сохраняем ссылку на текущую форму – Form1
            FORMA = this;
            // текущую форму прячем
            this.Hide();
            f.Show();
        }
    }
}
