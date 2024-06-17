
import UIKit

struct TiempoX: Decodable {
    let utc_datetime: String
    let unixtime: Double
}

public  struct AlmacenaFechaParis {
    
    
    public static var miTexto = ""
    
}

public struct AlmacenaFechaChicago {
    
    
    public static var miTexto2 = ""
    
}

public struct AlmacenaFechaQatar {
    
    
    public static var miTexto3 = ""
    
}

struct AlmacenaFechaCDMX {
    
    
    public static var miTexto4 = ""
    
}

public struct Diferencia {
    
    
    public static var miTexto5 = ""
    
}



class ViewController: UIViewController {
    
    let downloader = DataDownloader()
    
    @IBOutlet weak var labelFecha: UILabel!
    
    @IBOutlet weak var indicador: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        indicador.isHidden = true
    }
    
    @IBAction func getFecha(_ sender: Any) {
        
        downloader.getTime { [weak self] tiempo in
            DispatchQueue.main.async {
                self?.labelFecha.text = "\(tiempo.unixtime)"
                
                // if Date().timeIntervalSince1970 ==
                let systemTimeInterval = Date().timeIntervalSince1970
                if abs(systemTimeInterval - tiempo.unixtime) > 5
                {
                    let alert = UIAlertController()
                    alert.title = "Error"
                    alert.message = "La fecha del sistema no corresponde con la fecha actual"
                    self?.present(alert, animated: true)
                }
            }
        }
    }
    
    @IBAction func Pantalla2(_ sender: Any) {
        
        indicador.isHidden = false

        downloader.getTimeParis { [weak self] tiempo in
            DispatchQueue.main.async {
                AlmacenaFechaParis.miTexto = tiempo.utc_datetime
            }
        }
        downloader.getTimeChicago { [weak self] tiempo in
            DispatchQueue.main.async {
                AlmacenaFechaChicago.miTexto2 = tiempo.utc_datetime
            }
        }
        
        downloader.getTimeQatar { [weak self] tiempo in
            DispatchQueue.main.async {
                AlmacenaFechaQatar.miTexto3 = tiempo.utc_datetime
            }
        }
        
        downloader.getTimeCDMX { [weak self] tiempo in
            DispatchQueue.main.async {
                AlmacenaFechaCDMX.miTexto4 = tiempo.utc_datetime
            }
        }
        downloader.getTimeDiferenciaHoraria { [weak self] tiempo in
            DispatchQueue.main.async {
                AlmacenaFechaCDMX.miTexto4 = tiempo.utc_datetime
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 10) { [weak self] in
            self?.indicador.isHidden = true
            self?.performSegue(withIdentifier: "bb", sender: nil)
        }
    }
}
