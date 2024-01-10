/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package puntoventa.controlador;

import java.util.logging.Level;
import java.util.logging.Logger;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.util.JRLoader;
import net.sf.jasperreports.view.JasperViewer;
import puntoventa.modelo.Conexion;
import puntoventa.vista.puntoventa;

/**
 *
 * @author USER
 */
public class ConPuntoVenta {
    
    puntoventa vistPunto;

    public ConPuntoVenta(puntoventa vistPunto) {
        this.vistPunto = vistPunto;
        this.vistPunto.setVisible(true);
    }
    
    
    public void inicarControlPuntoVenta(){
        vistPunto.getBtnImprimir().addActionListener(l->imprimirInforme());
    }
    
    public void imprimirInforme(){
        Conexion conexion = new Conexion();
        try {
            JasperReport reporte = (JasperReport) JRLoader.loadObject(
                    getClass().getResource("/puntoventa/vista/reporte/productos.jasper"));
            JasperPrint jp = JasperFillManager.fillReport(
                    reporte,
                    null,
                    conexion.getCon()
            );
            JasperViewer jv = new JasperViewer(jp,false);
            jv.setVisible(true);
        } catch (JRException ex) {
            Logger.getLogger(ConPuntoVenta.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
