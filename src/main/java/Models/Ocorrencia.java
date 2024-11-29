package Models;

public class Ocorrencia {
    private int idOcorrencia;
    private String textoOcorrencia;

    public Ocorrencia() {
        this.idOcorrencia = 0;
        this.textoOcorrencia = "";
    }

    public int getIdOcorrencia() {
        return idOcorrencia;
    }

    public void setIdOcorrencia(int idOcorrencia) {
        this.idOcorrencia = idOcorrencia;
    }

    public String getTextoOcorrencia() {
        return textoOcorrencia;
    }

    public void setTextoOcorrencia(String textoOcorrencia) {
        this.textoOcorrencia = textoOcorrencia;
    }
    
}
