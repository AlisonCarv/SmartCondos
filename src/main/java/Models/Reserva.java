package Models;

import java.time.LocalDateTime;

public class Reserva {
    private String localReserva;
    private LocalDateTime dataReserva;
    private float valorReserva;
    
    public Reserva(){
	localReserva = "";
        dataReserva = LocalDateTime.now();
        valorReserva = 0.0f;
    }

    public String getLocalReserva() {
        return localReserva;
    }

    public void setLocalReserva(String localReserva) {
        this.localReserva = localReserva;
    }

    public LocalDateTime getDataReserva() {
        return dataReserva;
    }

    public void setDataReserva(LocalDateTime dataReserva) {
        this.dataReserva = dataReserva;
    }

    public float getValorReserva() {
        return valorReserva;
    }

    public void setValorReserva(float valorReserva) {
        this.valorReserva = valorReserva;
    }
    
}
