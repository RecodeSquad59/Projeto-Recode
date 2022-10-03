package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;



public class DAO {

	private String driver = "com.mysql.cj.jdbc.Driver";
	private String database_url = "jdbc:mysql://localhost:3306/donate_tech";
	private static final String username = "root";
	private static final String password = "Recode@22";

	private Connection conectar() {

		Connection con = null;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(database_url, username, password);
			return con;
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
	}

	/** CRUD CREATE **/

	public void inserirCadastro(JavaBeans cadastro) {
		String create = "INSERT INTO doador (nomeDoador,telDoador,cidadeDoador,cepDoador,enderecoDoador,dataRetirada,comentarios) VALUES ( ?, ?, ?, ?, ?, ?, ?)";
		try {
			Connection con = conectar();
			PreparedStatement pst = con.prepareStatement(create);

			pst.setString(1, cadastro.getNomeDoador());

			pst.setString(2, cadastro.getTelDoador());

			pst.setString(3, cadastro.getCidadeDoador());

			pst.setString(4, cadastro.getCepDoador());

			pst.setString(5, cadastro.getEnderecoDoador());

			pst.setString(6, cadastro.getDataRetirada());

			pst.setString(7, cadastro.getComentarios());

			pst.executeUpdate();

			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}
	}

	/** CRUD READ **/

	public ArrayList<JavaBeans> listarCadastros() {
		ArrayList<JavaBeans> cadastros = new ArrayList<>();
		String read = "select * from doador";
		try {
			Connection con = conectar();
			PreparedStatement pst = con.prepareStatement(read);
			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
				int codDoador = rs.getInt(1);
				String nomeDoador = rs.getString(2);
				String telDoador = rs.getString(3);
				String cidadeDoador = rs.getString(4);
				String cepDoador = rs.getString(5);
				String enderecoDoador = rs.getString(6);
				String dataRetirada = rs.getString(7);
				String comentarios = rs.getString(8);

				cadastros.add(new JavaBeans(codDoador, nomeDoador, telDoador, cidadeDoador, cepDoador, enderecoDoador,dataRetirada, comentarios));
			}
			con.close();
			return cadastros;
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
	}
	
	/** CRUD UPDATE **/
	public void selecionarCadastro(JavaBeans cadastro) {
		String read2 = "select * from doador where codDoador = ?";
		try {
			Connection con = conectar();
			PreparedStatement pst = con.prepareStatement(read2);
			pst.setInt(1, cadastro.getCodDoador());
			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
				cadastro.setCodDoador(rs.getInt(1));
				cadastro.setNomeDoador(rs.getString(2));
				cadastro.setTelDoador(rs.getString(3));
				cadastro.setCidadeDoador(rs.getString(4));
				cadastro.setCepDoador(rs.getString(5));
				cadastro.setEnderecoDoador(rs.getString(6));
				cadastro.setDataRetirada(rs.getString(7));
				cadastro.setComentarios(rs.getString(8));
			}
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}

	}
	public void alterarCadastro(JavaBeans cadastro) {

		String create = "update doador set nomeDoador=?, telDoador=?, cidadeDoador=?, cepDoador=?, enderecoDoador=?, dataRetirada=?, comentarios=? where codDoador=?";
		try {
			Connection con = conectar();
			PreparedStatement pst = con.prepareStatement(create);

			pst.setString(1, cadastro.getNomeDoador());

			pst.setString(2, cadastro.getTelDoador());

			pst.setString(3, cadastro.getCidadeDoador());

			pst.setString(4, cadastro.getCepDoador());

			pst.setString(5, cadastro.getEnderecoDoador());

			pst.setString(6, cadastro.getDataRetirada());

			pst.setString(7, cadastro.getComentarios());

			pst.setInt(8, cadastro.getCodDoador());

			pst.executeUpdate();
			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}

	}
	/** CRUD DELETE **/
	public void deletarCadastro(JavaBeans cadastro) {

		String delete = "delete from doador where codDoador=?";
		try {

			Connection con = conectar();
			PreparedStatement pst = con.prepareStatement(delete);

			pst.setInt(1, cadastro.getCodDoador());
			pst.executeUpdate();
			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}

	}
}
