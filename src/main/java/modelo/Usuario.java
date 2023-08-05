package modelo;

/**
 * Esta classe modelo (JavaBean) representa uma entidade de usuário.
 *
 */

public class Usuario {
    protected int codigo;
    protected String nome;
    protected String email;
    protected String pais;

    public Usuario() {
    }

    public Usuario(String nome, String email, String pais) {
        super();
        this.nome = nome;
        this.email = email;
        this.pais = pais;
    }

    public Usuario(int codigo, String nome, String email, String pais) {
        super();
        this.codigo = codigo;
        this.nome = nome;
        this.email = email;
        this.pais = pais;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }
}