package servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Contato;

/**
 * Servlet implementation class CadastroContatoServlet
 */
@WebServlet("/CadastroContatoServlet")
public class CadastroContatoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Contato contato;
	private List<Contato> contatos;

	public CadastroContatoServlet() {
		this.contato = new Contato();
		this.contatos = new ArrayList<>();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		String telefone = request.getParameter("telefone");
		String endereco = request.getParameter("endereco");
		String senha = request.getParameter("senha");

		this.contato.setNome(nome);
		this.contato.setEmail(email);
		this.contato.setTelefone(telefone);
		this.contato.setEndereco(endereco);
		this.contato.setSenha(senha);

		boolean errar = false;

		for (Contato verificar : contatos) {
			if (verificar.getEmail().equals(email) || verificar.getTelefone().equals(telefone)) {
				errar = true;
				break;
			}
		}

		if (errar) {
			request.setAttribute("erro", "Este e-mail já foi cadastrado");
			RequestDispatcher rd = request.getRequestDispatcher("cadastroContato.jsp");
			rd.forward(request, response);

		}else {
			this.contatos.add(this.contato);
			this.contato = new Contato();
			request.setAttribute("contatos", this.contatos);
			RequestDispatcher rd = request.getRequestDispatcher("listaContatos.jsp");
			rd.forward(request, response);
		}

	}

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setAttribute("contatos", this.contatos);
		RequestDispatcher rd = req.getRequestDispatcher("listaContatos.jsp");
		rd.forward(req, resp);
	}

}
