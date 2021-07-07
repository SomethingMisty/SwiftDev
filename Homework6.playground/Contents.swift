import Cocoa

struct Searcher<Search: Comparable> {
    
    var items = [Search]()
    
    
    mutating func adding (_ item:Search){
        items.append(item)
    }
    
    mutating func second() -> Search {
        return items.removeFirst()
    }
    
    func filter(item:Search){
        print("Нашел \(items.filter{$0 == item})")
    }
    
    mutating func sorting() -> [Search] {
        return items.sorted(by: <)
    }
    
    subscript  (index: Int) -> Search? {
        get {
        return (index > items.count ? items[index] : nil )
        }
    }
    
    
    

    
    
}
