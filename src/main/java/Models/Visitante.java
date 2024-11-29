
package Models;

import java.time.LocalDateTime;

public class Visitante extends Pessoa{
    private LocalDateTime dataEntrada;
    private LocalDateTime dataSaida;

    public Visitante() {
        this.dataEntrada = LocalDateTime.now();
        this.dataSaida = LocalDateTime.now();
    }

    public LocalDateTime getDataEntrada() {
        return dataEntrada;
    }

    public void setDataEntrada(LocalDateTime dataEntrada) {
        this.dataEntrada = dataEntrada;
    }

    public LocalDateTime getDataSaida() {
        return dataSaida;
    }

    public void setDataSaida(LocalDateTime dataSaida) {
        this.dataSaida = dataSaida;
    }
    
}
