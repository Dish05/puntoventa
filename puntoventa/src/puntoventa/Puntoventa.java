/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package puntoventa;

import puntoventa.controlador.ConPuntoVenta;
import puntoventa.vista.puntoventa;

/**
 *
 * @author USER
 */
public class Puntoventa {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        puntoventa vistaPunto = new puntoventa();
        ConPuntoVenta controladorPunto = new ConPuntoVenta(vistaPunto);
        controladorPunto.inicarControlPuntoVenta();
    }
    
}
