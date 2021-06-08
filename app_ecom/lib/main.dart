import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Firstscreen(),
    );
  }
}

class Firstscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(
            child: Text("My App"),
          )),
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://as2.ftcdn.net/jpg/02/34/61/79/500_F_234617921_p1AGQkGyEl8CSzwuUI74ljn6IZXqMUf2.jpg'),
              radius: 20,
            ),
            title: Text(
              'Areeb',
              style: TextStyle(fontSize: 25),
            ),
            subtitle: Text('areebsyed131@gmail.com'),
            trailing: Text(
              'Log out',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            title: Text(
              'ACCOUNT INFORMATION',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
            ),
          ),
          ListTile(
            title: Text(
              "Full Name",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            subtitle: Text("Syed Areeb Ali"),
          ),
          ListTile(
            title: Text(
              "Email",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            subtitle: Text("areebsyed131@gmail.com"),
          ),
          ListTile(
            title: Text(
              "Address",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            subtitle: Text("Garden east, Karachi"),
          ),
          ListTile(
            title: Text(
              "Gender",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            subtitle: Text("Male"),
          ),
          ListTile(
            title: Text(
              "DOB",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            subtitle: Text("Aug 8th 2001"),
          ),
                ElevatedButton(onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Home()));
              }, child: Text('Shop'))
        ],

      ),
      
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.red,
            title: Center(
              child: Text("My App"),
            )),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search),
                      hintText: 'Search',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      )),
                ),
              ),


              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://thermaltake.azureedge.net/pub/media/catalog/product/cache/e4fc6e308b66431a310dcd4dc0838059/l/2/l20m01.jpg'),
                  radius: 25,
                ),
                title: Text(
                  'Gaming Mouse',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                subtitle: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text('5.0 (10 reviews)'),
                  ],
                ),
                trailing: Text("5\$",
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.w600)),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://static-01.daraz.pk/p/13166b128f3a66ae753dae634be95d2a.jpg'),
                  radius: 25,
                ),
                title: Text(
                  'Airbuds',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                subtitle: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text('4.9 (5 reviews)'),
                  ],
                ),
                trailing: Text("10\$",
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.w600)),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://static-01.daraz.pk/p/bdfb11037950a5c9048c2aeac4080da8.jpg_340x340q80.jpg_.webp'),
                  radius: 25,
                ),
                title: Text(
                  'Iphone 12',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                subtitle: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text('5.0 (15 reviews)'),
                  ],
                ),
                trailing: Text("20\$",
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.w600)),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('data:image/jpeg;base64,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'),
                  radius: 25,
                ),
                title: Text(
                  'Canon Camera',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                subtitle: Row(
                  children: [
                    Icon(
                      Icons.star_rounded,
                      color: Colors.yellow,
                    ),
                    Text('3.9 (24 reviews)'),
                  ],
                ),
                trailing: Text("25\$",
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.w600)),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://static-01.daraz.pk/p/fd6bf4dce4448a91d04ebb0f482f9f16.jpg'),
                  radius: 25,
                ),
                title: Text(
                  'Galaxy Watch',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                subtitle: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text('4.3 (39 reviews)'),
                  ],
                ),
                trailing: Text("19\$",
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.w600)),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYWFRIWFRYZGRgaHRoaGBwYGhkZGhwaHBocGhocHBwcIy4lHh4uHxoaJzgnKy8xNTU1HiQ7QDs0Py40NTEBDAwMEA8QHxISHjQrJCs0NjYxNDQ9NDQ2NDQ0NDUxNDQ0NDQ0NDQ0NDQ0NDQ0MTQ9NDQ0NDQ0NDQxNTQ0MTQ2NP/AABEIAOEA4QMBIgACEQEDEQH/xAAbAAEAAgMBAQAAAAAAAAAAAAAABQYDBAcBAv/EAEUQAAIBAgQDBQUEBwYEBwAAAAECAAMRBBIhMQVBUQYTImFxMkKBkaEjUmKxFFNygsHR8DOSk6LC4QcVJLIlNGNzs9Li/8QAGAEBAAMBAAAAAAAAAAAAAAAAAAECAwT/xAAlEQEBAAICAgICAQUAAAAAAAAAAQIRAzESIUFhE1EyIkLR4fH/2gAMAwEAAhEDEQA/AOyRKt25/sqN6mT7Qe3nFJ/C3gqshBVTvfa4GkrXEsU9Whhe675O7wtbEWZ3L3VkVAzC2caNa+4ImuHF5SXfbO8mrrTp0Tm/HcZUOIqvTZwr0qVNQC1ga9GsEYAaXDinrymLEuRhKAaqwyV8UtqjVFSoFaoAr1FN0OXVCbi4Et+D1Pff/Ufk79OnROW9oMc4XwtVXvMBTFJWdi7VO9Bygj2qmXcjUiZe1leqlXiDq1S2VKVlZ7L3lLMrKBoCHpgXGvjMY8Fuvff+v8n5Z+nTJ7OecRrsMewbvC3e4QUQKjoe7K/aMFAIdM18wPznQpnnh46+18ct7YkrKxZVZSV0YAglSdrgbTPK9jeFVmFUUqgpqxLKAWOVznOcEjS7MpKDTwkgi5v9pweoHZ+9c3JIHeVABd65IAvYeCpTXbTILbCUWT0St1eD4hlUd/bwsCQzg/2ddF1BFz9rTYtprTuALjL7X4bWDIFZ2XOjA944CKtfvHBu13zIctje1gBpsE5+kLnyZlz2vluM1uuXe0+1qAkgEXFrjmL7XkQ+ArDMqOoUvUcnW7ByTkOhsQTYMDoAAVPPWXg9cFLVtmQsbtmYI6kAtbUZAyEW1zXvoQQskwfpCfeXn7w5NlP+bT10kLheGVkakrVGZbsznM1iAUamupvdWGUfeQNmJZtfiv2fcuzo6rdywBU6KT31tCPF+k2cnmtxvrAscxpUBBIIIBINjsQbEfAgyApcEqKcxfMbWN3cEqHZwhdQDl8fID2QLEEib2D4c6OzB7hu+LKSxUs9QMmmwsM4NhrmgSC11K5gylbXzXGWw3N9rT6WoCSAQSNDbkbXsemhEhMVwRnw9WiXsXNRuTDxhrKxYXYBmDXsDoPjsVuFsxezWDurNlLISBTyG5W2pNjAl4lcHA6vhvXawZD7dQaXw+cXvrm7qt/inqZM4GiURVJzEX1JJNrmwJOpIFhc9IG1ERAREQEREBERA8iexA8i09iB5aJ7EDyexEBERA1eIUmanUCmzEHKQbeIar9QJB4LCYkOrMDbMXsz5wve02eop8VyFrZVW2ymw0vLLKjR7Zhi69ybi9vFcHpc203Ei2RMxuXSUo4WsKuY2IaqSeop92w9osbjPlsAARMC4euCmUOrg2qOWUhw1VLsqkkaJnIuBlHhA1tK/ie02JLeFlUdAgP/AHXM1z2mxf6wf3E/lI8o0/Fks4OIWrTBOrhEb2TopZnqEDayjLsBmqr0tHEcHXZ6gphgGZHDlgCrIUZVWzXNMlNVKj3vaDG1XPafF/rB/cT+U2uHduXDFKyBtDZl8J0F/EDofhb0jyiLxZRPUMJiDSxIYENUYsoZ82XNTp3VSGsFVs62uL2vzvMAwOJzgEuFs6kq42Pf2ZAX09qnZWBtZPEMpE3ez/HRiu8smTLlIucxIa9jsLeyesnJaXalll1VfwuGr56ZZWUAjZ/CFHe3DKXa7G6H3tba+HSwxEIIiICIiAiIgIiICIiAiIgIiICIiAiIgIiIGDFPZKjdFY/IGcz4fRuzm3le+23LnsZ0XjDWoVf2SPnp/GUThVO+Y5etm5e01x+RlMm/DPVYsRT1msySRxCazWKzNu1HSR4H2q2vzGhsdQR/GS7rIjEr400J1GgNiddgeUIq29gntVqL1S/917f6pfJz3sa1sSvmtRfqrfwnQprj05uX+T2IiWZkREBERAREQEREBERAREQEREBERAREQERECL7Qtag/nlH+YH+EqfCkAQ666XXkLgEH1Nz8hLJ2mrAUwt9WYaX1tY626bSv0XIULbQbfT+Uzy7dPFP6WGuNZrtNh5hdJRq1nkRj9CDe2o1G413ky6SPxmGLbQJPs1UtiqNjpnYfBqbAfW06XOV8IcrXoMwteol7aAXa3PYWM6mDNcenNzdx9RESzIiIgIiICIiAiIgIiICIiAiIgIiICIiB5IntDxI0aXh1qOctMb+I+8R90DU/Ac5LSk47HBmrYltUpKVpD73p5s1vhllbdRfDHdV+rhaq1VNFGrVFDHEMPE93ylbk6nY6ctek1jx91ZlZGBBIIKnQqSD8rGSvA+NDB0mQo+IxtZmeoiCwUknKGc6KttbC5ux0kQ/BatR6lSu6pnZnKJrbMxYgnc7+XpMr9OjG3d/Tw9phf2TfpYwe0J+45/cb+UzrwyimwJ9Tp8hr9Zhq0af3B83/APtC22u/aO26MPVSJ8jtBcHwHTfQ9QPzI+c+a2Fpn3SPRm/iTIuvw21yjkeR56g6kach7sezabq0cTiaDijh3cOGUNay32NyZKdiuNdw9NCxOHrhSlybIzDwkX9kEmxHWx6zW7JdtDhE7nE0iUzEipT1IzdU2I/ZN/wzYqYCjXWsaDK9FndqZF9M4zujKdVIcvoRsUEtPU2pd5Wyz06nEgeyfEmq0crm9SnZXvuR7r/ED5gyemku3NZq6exESUEREBERAREQEREBERAREQEREBETyBCdpsWUpd2p8dU5BbcL7x+Wl+rCROIwQyU0zZVUhm05gHKPUE3+A2nxisR32KqNfw0vAp5XB8RHmWuPRRNPivEwikk2Av8A1/vMsruunDHxxeV66UlOUBRzPvMfM7kypcU7Tb92pO/iO2hsddt9NL+c08Zi3rv1XcKbWtf3xrZfw8+d+W9icMr01dvEyGzrYBFBtkZF5DS2t9drXtLTH9q5cnxireI4liKl/E1vwg29Dew68uXxmCgLEmqHIsLZWQG9/Ff4SXrtNviFa9Lh7pRpZy9ZAq0wwcqaSoGVr52ux3vqfhL+MZXLK/KoCvUW3jYaa2tvr0tpt9ZsUONVBa5DjpzFv9hfczd7VVE7xEGQuiKldqaoiNWBYvZUAW6gqhKgAlSZBYXCNVqIi6ZjqeSqNWY+QUE/CRccdEyy36qzYbiSP4T4W5q3O/rv8Zv8PxT4dmans1s6X0YrqpF/eB+mm2kp/EOIK7MqaorMabsFFQgndiBbU62t0vrrJDhXFNkc9LNf8z/VpTLHTbHkl9V1ngHE0NSnXpnwv4Kq7WudyORDW+F+sv04NQxLUnzpqPfX7y9bfeH1E7JwHia1sPTq5ha1mJPMcyfPQ/GTjfhXlx+UtEw0aysMysGHVSCNPMTNLsSIiAiIgIiICIiAiIgIiICIiB5NDjON7mjVqc1Xwjqx0UfFiJvytdra+uHp/iNRvRAAoPlmdT8JFuotjN3SCFqVMJfUeJz1Y7/ylP4pXeowPuhrLsQWBNyfwjK1upB/DJPtFjyqEKfE2i9bnY+o1P7shcDxEgWZEdAoRVYbKugysNVbTcb2FwZXGfLXky/tZkAQWHxPMnqZ7h8aEe7DMhBV1+8h3A8+Y8wJ8YnIVL032tdH0qC5t4Ts49NeokbdmDlbWQZmJNgOQ16k6AbmX7Y9PjEVRr085jw3EK+akKLNnpl2p5QCULAZyLjnYb9JrVG66mZ8B3eTENWpO4KEU2VWKrU5FiCANSu/Xzk3pE7aXHcRiHZWxIcG2VS9PuxbU2FlUHczSpY4JSrIqnvKlkLaWFLdlXnmZgL8sonlDHvTvkcqDuo1Rv2kPhb4gzcwPC/0wkUEWnVWxddRRKk2Lqde7I1JU6EAlbWtIv2mfSFpUmdlRFLMxsqqLknyE3MXhHoOaVYZHGUsAVYrcaA2Nr2O1+YlioYujhiaGCdDWIPe4uoQqoBqVo3v8xck9bXkLWxlGnnFJe+dr5q1db6nc06Z2P4mufKRvdTrUTXB8USCj6OnLnbTT1Fx/V5K4Pjb4Uoma9IOHC5VKksMhvcXAUtcW6r0lQweObNSc+6AunQbD/uHxEtWJoq6rmJC3GZha4RvCzC+mgObXmolLNVvjfLH7dI7HcXq1KtQVUyhwCp2uyi3zK/RBLnKzwXgjqabtiTURLimoRVv4Sl6h1zPYm9guvLlLNLzphnZb6exESVSIiAiIgIiICIiAiIgIiIHkofabE3xVQckSmnxYu5+hT5S+TmXaB/+sxv7VP8A+BP95XLppxfyUrtTivGq9AT8dAv+r5zRWsAAL+U++NOne1sx8WRMmpF/G9x5+6bHp8prBcRT9Adi7KlOk9B6JTwVcTUZ2pur3szgZWOmZRT6EXnDpGd/qqvPWky/G1CU6GLRqiZabZ08NWmWXMo10fKjjQ8yRKliK3hb0P5Tc4/U/wCpxA6O4HoDZfoBJs3VZdRJ47gjFDVwzjEUeZT208nTcHzHnNTgGOqGrQoq1qb1FL6D2bgub9cit8vIWiMNjnpOHpOyOPeU2uOh6iXLgnF8PWFWviKdJaqIy1GGZMyuDTzWUG7kuq8tC120kW2dpklVzCcPbFNUxNZloUCzO7kAA3JJSkgHibloLX3udD88T7QXT9Hwimjhwb/+pVYWs1Rueovl22mpxjiL13u5GRdERBlRFGihVGwtI7LElvulsnqNviqAslRAFWqmfKBYK4YpUUeWdWIHIMs0SQNzaSNf/wAvh7/rMQB6ZMOfzLfWTPYPG1KOJVkXENTJUVFw4Y3JJFPPbdcxJtcXsR1lp0i9q/g20fysw9Rt/CXzAUw9EKdipQ+mq/lKwcMRjsWlWoGKvWD1LhAzByGbYhcxubedpcOB0z3VK+5VCfUqpP1mebXhvaycPxzipw6qGZRV7kVFB0YugUhhsbM2/lOlTllMWpcN8no2+FYW+lp1OTj0jl7j2IiWZEREBERAREQEREBERAREQPJzPtimXG1ej06T+pBemfoq/MTpkon/ABJw1v0WuOTNSb0cBlv++gH70rl0vx3WTkfaYWq32zL+RBA+Z+kiDXNgtzlBJC3NgTYEgbXIAF/IdJY+0tG6K43U/wBfx+kgsPwqq5bKoCqodnc5EVDszM2wNttz0k4WaTyY3yarPNvijZhTrbiooV/KpTVUcHpcBX9HjFHDohRM1Vza9U3RFsQbU03a9rZm+A1mDBYpVzU6gLUntmC2zKw9mol/eFyLbMCQeRFvtTWvTVZpv0jlwtTXWrWRbfhoIzvc9M1akf3ZgxmAdBnBD0ybLUTVD5Hmjfhax9d5mx5y08InSmah/aquzD45Fpyd7RprCCIpqSQoBLHQAAkk9ABqTJNKYw/iexrj2E0YUz9+pyzjdU5GxbbKWyRg4ouXu6POkln/APcdi7j926IfNDNfDYupTJNOo6EixKO6EjocpFxPvC1FV81RO8U3zKXZSb+8GGubnc3m4/DA4ZsMxqBQWZGAWsgG5yjRwOqfKRvXqp1vppYBCc+X2rZV82bQD46fOdVpUAlxyQW+Cj/aVHshwdjVpF1IVB+kPce6tjT16lynyaXapTuhDX+0IU2BJs3t2A1JCBzbymed9tuGerW0mFP/AIVTPtZqJYeaAVH/ACM6NITgfEaNbMaasCvN0ykg6gqehUqbcrgEA3AmpOM9KcltvT6iIlmZERAREQEREBERAREQEREDyRPafhv6Rha9Lmykr+2viT/MBJaITLpwINnQht9mHQ9fyIlV4grALSYDwHwEDXW2hN9rbaXG3WdH7VcINLFVgg9r7RVHvoxJIX8StnsOmnMSsY/CLVUEHXdT/X9CZS+NdFkyxU0zZ4bgjWqKgIUG7O59lUUXdm8gPrYc59V8Kc2RhZtvU8h8flNqt9hhymoq1SRU0IC01IyqG2bM3iNtLAA85rvc9OfWr7R+GxT02Jouyk6ArcZxyDLzB6G8msdjXfEVkTD0qnd5h/YqWyUVyFjlt4QqX6AaSI4Y4WrTdjojZ/XIC4X1JUL8Za+w9Om1CqhWm5qVUp4rPV7pqeEsGZ0bMptnBLe0DlUEG4k2REtV48WqWKqVpqdxSRKdx0JUAkeRJnzQwWalUqKR9myh0tqEbQPfmM3hI5XE1agUMwQllBIUkWJW5ykjkSLGbHDsb3VRWtmU3R1GuZH0dbemo8wI6npM932wEzd4VhM7B3ByKRbQku2wUAam+1hvtN5uzxDlmLGjnK0vCwepzUZLZgSNNtSDbrL1wThQoZXdQKgA7umLFaOls7W0NTew2W/MxcpInHG26b+DwrImVwBVqZWrWt4Ao+zpAj7oJJ/EzWmPiuGZwLP3aU3UO1yCd2cKRzCr9GEkaaFQW97e51t1Y3+Nup9DLPwvhKfo6pURWv4irgNYkab8wDa/W8x1cq3uUwka/Y7BulEs/tOSSL3tqWI+DMy+iiWKY6dMKAALAAAAbADYTJNJNTTnyy8ra9iIkoIiICIiAiIgIiICIiAiIgIiIFR7fYAtRTEIPFQNzb9WbZ/lYN6AyicZoIUXEUwQWuaoFsl9LPf3GN9T7JtrbedkqoGBBFwQQQdiDoROVVMO2FxFXDMfAdabHW6NfKTf2raqepBlMp8tuLL1pVK+HSqLMNtL7Mp6G/5GReP4dVNvEXAFhfUgb89fLnL9g+xi4ij3mGc0qyM1OpSc5qYdSdAwGZVIKsLhhYjTnK3Ud6bMlVcrKxUnldSQbH2TqDzHpK7uLSzHP0qD4LU3RgfLU356bgb8v5zZwnBFf2nKdMyHp5215aX87S1h0I1tbzGnz2n0iUvwfNRLedVvDP2rFHgoJsVqtvshUc7XLAAfPnJ3hvAyLEKlLqT9o/wANhp+L4cpJUnpjYr+7Y/lMx4hTXc/DY/L2voYudJxRI4RMhBUsz2tnc5nsdwtrBAeeUC/O51m9h2UOiE3diBbe1za7W+Onkb2jgPCquLTOrClSuVLWvUNt8q7D9pjbqhmOjRpUK9YoSUo3UM5DM9Vh42Y2HspZQBYAOZS77Wlm9RY6GFD1EpjVR43J5gW39TYW6baCWuQ3ZzClaedxZ6lmIO4X3V+Rv6kyZmmM1GGd3XsREsoREQEREBERAREQEREBERAREQEREDyVntrwI4ikGpj7aldk/EPeT42BHmB5yzRIs2mXV24/wAJ7QVqZ+wKB6gy1VqAmzUtFYKCPEVYIb/qxNHEYSu7u5YXcszWXS7klvhcmdA7c4VVp06iooc1FDMFGYrkfQta5F7Skti2BFxob2PI2tf8xMsp8V08dlm0WOCVL3BA9BaZV4PV+/8ASS61TPsVDI00Qx4K53c/KE4I4BytuLHQciG/MCTWcz7QkxqDXwnGcXhaDKhQoCSbqc3i3s2bQ9NJu9kcGcVV11o0mzVDyeqTny+lzmI6ZR708wNDPWp03UFSyh0YAgrexBHTedLw2HSmoRFVFGyqoVR6AaCXxm2HJfHr5Zp7ETRgREQEREBERAREQEREBERAREQEREBERAREQK/20S+GY/damfm4X/VOYYsAZNTe7C3K19/WdX7UpmwtfyXN/dIb+E5Xj725Wz7e9sdvLf5iZ5duji6bNHaZRMOGOgmWUbPoGbmHGhmis3sOdNCAeV9vj5QMvZk5sYliWFyQx3IAdgT9J0uc47DLmxTsdwrH6Kun96dHmuPTl5f5PYiJZmREQEREBERAREQEREBERAREQEREBERAREQNLi1LNQrr1Rx81M4/i2ujbbqfPa2n9cp2pluCJzp+xOIKsA9MaAAZm1ym4922srlNtuLKSXavYVvCJnLT7/5NiU8LUKlx91Sw+BW4j/l2I/UVf8N/5TPVb+U/b5Bmzm8B0B0OjbHTYzCOHV/1FX/Df+UlsH2bxNVTdQgtp3mlz+zYn5gRJUXKSdtn/h2l6ldugt82/wDzL9Kz2P4HUwwrd6UJYrYqSRYZr7gc2lmmmM1HNnd5bj2IiWUIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICeREBERCSJ7EIeREQPYiICIiAiIgIiICIiAiIgf/2Q=='),
                  radius: 25,
                ),
                title: Text(
                  'Galaxy Watch 3',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                subtitle: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text('3.5 (28 reviews)'),
                  ],
                ),
                trailing: Text("10\$",
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.w600)),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://static-01.daraz.pk/p/e31776399c45b1debd74a893ee3712d2.jpg_340x340q80.jpg_.webp'),
                  radius: 25,
                ),
                title: Text(
                  'Pixel 4',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                subtitle: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text('4.1 (52 reviews)'),
                  ],
                ),
                trailing: Text("25\$",
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.w600)),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('data:image/jpeg;base64,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'),
                  radius: 25,
                ),
                title: Text(
                  'Airpods',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                subtitle: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text('4.2 (19 reviews)'),
                  ],
                ),
                trailing: Text("21\$",
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.w600)),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://images.samsung.com/is/image/samsung/assets/pk/galaxy-a52/buy/galaxy-a72/buy/A72_AwesomeBlue_ProductKV_MO_img.jpg?imwidth=720'),
                  radius: 25,
                ),
                title: Text(
                  'Galaxy A72',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                subtitle: Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow),
                    Text('4.3 (39 reviews)'),
                  ],
                ),
                trailing: Text("25\$",
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.w600)),
              ),

              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text('Settings'))
            ],
          ),
        )
      );
  }
}
