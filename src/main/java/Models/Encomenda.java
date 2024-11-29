package Models;

import java.time.LocalDateTime;

public class Encomenda {
    private int idEncomenda;
    private LocalDateTime dataEncomenda;
    private int aptoEncomenda;

    public Encomenda() {
        this.idEncomenda = 0;
        this.dataEncomenda = LocalDateTime.now();
        this.aptoEncomenda = 0;
    }

    public int getIdEncomenda() {
        return idEncomenda;
    }

    public void setIdEncomenda(int idEncomenda) {
        this.idEncomenda = idEncomenda;
    }

    public LocalDateTime getDataEncomenda() {
        return dataEncomenda;
    }

    public void setDataEncomenda(LocalDateTime dataEncomenda) {
        this.dataEncomenda = dataEncomenda;
    }

    public int getAptoEncomenda() {
        return aptoEncomenda;
    }

    public void setAptoEncomenda(int aptoEncomenda) {
        this.aptoEncomenda = aptoEncomenda;
    }
    
    
}
