
import Foundation

struct DataDownloader{
    
    func getTime (completion: @escaping (Tiempo) -> Void){
        
        guard let url = URL(string:
            "https://worldtimeapi.org/api/timezone/America/Mexico_City") else { return }
        //"https://worldtimeapi.org/api/timezone/Europe/Paris"
        //"https://worldtimeapi.org/api/timezone/America/Mexico_City"
        //"https://worldtimeapi.org/api/timezone/Asia/Qatar"
        let request = URLRequest(url: url)
        let dataTask = URLSession.shared.dataTask(with: request) { data,_,_ in
            
            guard let data = data else { return }
            let decoder = JSONDecoder()
            
            do {
                let tiempo = try decoder.decode(Tiempo.self, from: data)
                completion(tiempo)
            } catch {
                print(error)
            }
        }
        dataTask.resume()
        return
    }
    
    func getTimeParis (completion: @escaping (Tiempo) -> Void){
        
        guard let url = URL(string:     "https://worldtimeapi.org/api/timezone/Europe/Paris") else { return }
        
        let request = URLRequest(url: url)
        let dataTask = URLSession.shared.dataTask(with: request) { data,_,_ in
            
            guard let data = data else { return }
            let decoder = JSONDecoder()
            
            do {
                let tiempo = try decoder.decode(Tiempo.self, from: data)
                completion(tiempo)
            } catch {
                print(error)
            }
        }
        dataTask.resume()
        return
    }
    
    func getTimeChicago (completion: @escaping (Tiempo) -> Void){
        
        guard let url = URL(string:     "https://worldtimeapi.org/api/timezone/America/Chicago") else { return }
        
        let request = URLRequest(url: url)
        let dataTask = URLSession.shared.dataTask(with: request) { data,_,_ in
            
            guard let data = data else { return }
            let decoder = JSONDecoder()
            
            do {
                let tiempo = try decoder.decode(Tiempo.self, from: data)
                completion(tiempo)
            } catch {
                print(error)
            }
        }
        dataTask.resume()
        return
    }
    
    func getTimeQatar (completion: @escaping (Tiempo) -> Void){
        
        guard let url = URL(string:     "https://worldtimeapi.org/api/timezone/Asia/Qatar") else { return }
        
        let request = URLRequest(url: url)
        let dataTask = URLSession.shared.dataTask(with: request) { data,_,_ in
            
            guard let data = data else { return }
            let decoder = JSONDecoder()
            
            do {
                let tiempo = try decoder.decode(Tiempo.self, from: data)
                completion(tiempo)
            } catch {
                print(error)
            }
        }
        dataTask.resume()
        return
    }
    func getTimeCDMX (completion: @escaping (Tiempo) -> Void){
        
        guard let url = URL(string:     "https://worldtimeapi.org/api/timezone/America/Mexico_City") else { return }
        
        let request = URLRequest(url: url)
        let dataTask = URLSession.shared.dataTask(with: request) { data,_,_ in
            
            guard let data = data else { return }
            let decoder = JSONDecoder()
            
            do {
                let tiempo = try decoder.decode(Tiempo.self, from: data)
                completion(tiempo)
            } catch {
                print(error)
            }
        }
        dataTask.resume()
        return
    }
    
    func getTimeDiferenciaHoraria (completion: @escaping (Tiempo) -> Void){
        
        guard let url = URL(string:     "https://worldtimeapi.org/api/timezone/America/Mexico_City") else { return }
        
        let request = URLRequest(url: url)
        let dataTask = URLSession.shared.dataTask(with: request) { data,_,_ in
            
            guard let data = data else { return }
            let decoder = JSONDecoder()
            
            do {
                let tiempo = try decoder.decode(Tiempo.self, from: data)
                completion(tiempo)
            } catch {
                print(error)
            }
        }
        dataTask.resume()
        return
    }
}
