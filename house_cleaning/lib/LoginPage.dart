import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

Widget _buildText(BuildContext context, String text,
{double? fontSize, FontWeight? fontWeight, Color? color}) {
  return Text(
    text,
    style: TextStyle(
      fontSize: MediaQuery.of(context).size.width * (fontSize ?? 0.04),
      fontWeight: fontWeight,
      color: color,
    ),
  ),
}

Widget _buildSignUpLink(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      _buildText(context, "Não possui um cadastro? ",
      fontSize: 0.04, color: Colors.grey),
      GestureDetector(
        onTap: () {
          Navigator.push(context,
          MaterialPageRoute(builder: (context) => CadastrarUsuario()));
        },
        child: _buildText(context, "Cadastre-se",
        fontSize: 0.04,
        color: Color(#808000),
        fontWeight: FontWeight.bold),
      ),
    ],
  );
}

Widget _buildTextField(
  BuildContext context, String labelText, IconData prefixIcon) {
    return Padding(padding: EdgeInsets.symmetric(
      horizontal: MediaQuery.of(context).size.width * 0.1),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.blueGrey),
          borderRadius: BorderRadius.circular(30),
        ),
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 8.0),
              child: Icon(prefixIcon),),
              labelText: labelText,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey
                ), borderRadius: BorderRadius.circular(30.0),
              )
          ),
        ),
      ),);
  }

  Widget _buildForgotPasswordLink(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildText(context, "Esqueceu sua senha? ",
            fontSize: 0.04, color: Colors.grey),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => RedefinirSenha()));
          },
          child: _buildText(context, "Clique aqui.",
              fontSize: 0.04,
              color: Color(0xFFE87C17),
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => HomePage()));
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFE87C17),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        child: Text(
          'Entrar',
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width * 0.045,
          ),
        ),
      ),
    );
  }

  Widget _buildSocialIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipOval(
          child: Image.asset(
            'assets/images/google.png',
            width: 40,
            height: 40,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 20),
        ClipOval(
          child: Image.asset(
            'assets/images/facebook.png',
            width: 40,
            height: 40,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }

}
