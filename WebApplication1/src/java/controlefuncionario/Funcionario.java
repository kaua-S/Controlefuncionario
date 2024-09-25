
package controlefuncionario;

import util.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class Funcionario {
   private  int    idFunc;
   private String  nomeFunc;
   private int    idDepto;
   private double salHora;
   
   public boolean incluirFuncionario() throws ClassNotFoundException {
		String sql = "INSERT INTO funcionario (nomeFunc ,idDepto ,salHora) ";
		sql += "VALUES (? , ?, ?)";
		Connection con = Conexao.conectar();
		try {
			PreparedStatement stm = con.prepareStatement(sql);
			stm.setString(1, this.getNomeFunc());
                        stm.setInt(2, this.getIdDepto());
                        stm.setDouble(3, this.getSalHora());
			stm.execute();
		} catch (SQLException e) {
			System.out.println("Erro na inclusão do departamento");
			return false;
		}
		return true;
	}
   
   
   public List<Funcionario> listarFuncionario() throws ClassNotFoundException {
		List<Funcionario> listaFunc = new ArrayList<>();
		Connection con = Conexao.conectar();
		String sql = "SELECT idFunc,nomeFunc,idDepto,salHora FROM funcionario ORDER BY idFunc";
		try {
			PreparedStatement stm = con.prepareStatement(sql);
			ResultSet rs = stm.executeQuery();
			while (rs.next()) {
				Funcionario fu = new Funcionario();
				fu.setIdFunc(rs.getInt("idFunc"));
				fu.setNomeFunc(rs.getString("nomeFunc"));
                                fu.setIdDepto(rs.getInt("idDepto"));
                                fu.setSalHora(rs.getDouble("salHora"));
				listaFunc.add(fu);
			}
		} catch (SQLException e) {
			System.out.println("Erro na lista de departamentos");
			return null;
		}
		return listaFunc;
	}
   
   public Funcionario consultaFunc() throws ClassNotFoundException {
		Connection con = Conexao.conectar();
		Funcionario func = null;
		String sql = "SELECT nomeFunc,idDepto,salHora FROM funcionario where idFunc = ?";
		try {
			PreparedStatement stm = con.prepareStatement(sql);
			stm.setInt(1, this.getIdFunc());
			ResultSet rs = stm.executeQuery();
			if (rs.next()) {
				func = new Funcionario();
				func.setNomeFunc(rs.getString("nomeFunc"));
                                func.setIdDepto(rs.getInt("idDepto"));
                                func.setSalHora(rs.getDouble("salHora"));
			}
		} catch (SQLException e) {
			System.out.println("Erro na consulta do departamento");
			return null;
		}
		return func;
	}
   
   
   
   public boolean alterarFuncionario() throws ClassNotFoundException {
		String  sql = "UPDATE funcionario";
				sql += " SET nomefunc = ? , idDepto = ? , salHora = ? ";
				sql += "WHERE idFunc = ? ";
		Connection con = Conexao.conectar();
		try {
			PreparedStatement stm = con.prepareStatement(sql);
			stm.setString(1, this.getNomeFunc());
			stm.setInt(2, this.getIdDepto());
                        stm.setDouble(3, this.getSalHora());
                        stm.setInt(4, this.getIdFunc());
			stm.execute();
		} catch (SQLException e) {
			System.out.println("Erro na alteração do funcionario");
			return false;
		}
		return true;
	}
   
   
   public boolean excluirFuncionario() throws ClassNotFoundException {
			String  sql  = "DELETE FROM funcionario ";
					sql += "WHERE idFunc = ? ";
			Connection con = Conexao.conectar();
			try {
				PreparedStatement stm = con.prepareStatement(sql);
				stm.setInt(1, this.getIdFunc());
				stm.execute();
			} catch (SQLException e) {
				System.out.println("Erro na exclusão do funcionario");
				return false;
			}
			return true;
		}
   
   
     public int getIdFunc() {
        return idFunc;
    }

    public void setIdFunc(int idFunc) {
        this.idFunc = idFunc;
    }

    public String getNomeFunc() {
        return nomeFunc;
    }

    public void setNomeFunc(String nomeFunc) {
        this.nomeFunc = nomeFunc;
    }

    public int getIdDepto() {
        return idDepto;
    }

    public void setIdDepto(int idDepto) {
        this.idDepto = idDepto;
    }

    public double getSalHora() {
        return salHora;
    }

    public void setSalHora(double salHora) {
        this.salHora = salHora;
    }
    
    
}
