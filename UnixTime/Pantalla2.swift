

import Foundation
import UIKit

class Pantalla2: UIViewController {

    @IBOutlet weak var HoraParis: UILabel!
    @IBOutlet weak var HoraChicago: UILabel!
    
    @IBOutlet weak var HoraQatar: UILabel!
    
    @IBOutlet weak var HoraCDMX: UILabel!
    
    
    @IBOutlet weak var DiferenciaHoraria: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        HoraParis.text = "\(AlmacenaFechaParis.miTexto)"
        
        HoraChicago.text = "\(AlmacenaFechaChicago.miTexto2)"
        
        HoraQatar.text = "\(AlmacenaFechaQatar.miTexto3)"
        
        HoraCDMX.text = "\(AlmacenaFechaCDMX.miTexto4)"
       
        DiferenciaHoraria.text = "\(Diferencia.miTexto5)"
    }
}
