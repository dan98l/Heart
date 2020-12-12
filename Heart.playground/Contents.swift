//: A UIKit based Playground for presenting user interface
  
import UIKit
import UIKit

class He: UIView {
    func radiansAngle(degree: CGFloat) -> CGFloat {
        return CGFloat(Double.pi) * degree / 180
    }
    
    override func draw(_ rect: CGRect) {
//        let lineW =  UIBezierPath()
//        lineW.move(to: CGPoint(x: 500, y: 0))
//        lineW.addLine(to: CGPoint(x: 500, y: 1000))
//        lineW.stroke()
//
//        let lineH =  UIBezierPath()
//        lineH.move(to: CGPoint(x: 0, y: 500))
//        lineH.addLine(to: CGPoint(x: 1000, y: 500))
//        lineH.stroke()
//
        let constX = 100
        let constY = 125
        
        var heartPoints = [CGPoint(x: self.frame.width / 2, y: self.frame.height - CGFloat(constY))]
        
        var coordinate = CGPoint(x: self.frame.width, y: self.frame.height)
        
        let radius = self.frame.width / 4
        
        let heart =  UIBezierPath()
        
        heart.move(to: CGPoint(x: self.frame.width / 2, y: self.frame.height - CGFloat(constY)))
        
        coordinate = CGPoint(x: (coordinate.x * 0.75) - CGFloat(constX), y: (coordinate.y * 0.25) + CGFloat(constY))
        
        var i = -47
        
        heart.addLine(to: CGPoint(x: coordinate.x + CGFloat(radius) * cos(-CGFloat(radiansAngle(degree: CGFloat(i)))), y: coordinate.y + CGFloat(radius) * sin( -CGFloat(radiansAngle(degree: CGFloat(i))) )))
        
        heartPoints.append(CGPoint(x: coordinate.x + CGFloat(radius) * cos(-CGFloat(radiansAngle(degree: CGFloat(i)))), y: coordinate.y + CGFloat(radius) * sin( -CGFloat(radiansAngle(degree: CGFloat(i))) )))


        while i < 128 {

            heart.addLine(to: CGPoint(x: coordinate.x + CGFloat(radius) * cos(-CGFloat(radiansAngle(degree: CGFloat(i)))), y: coordinate.y + CGFloat(radius) * sin( -CGFloat(radiansAngle(degree: CGFloat(i))) )))
            heartPoints.append(CGPoint(x: coordinate.x + CGFloat(radius) * cos(-CGFloat(radiansAngle(degree: CGFloat(i)))), y: coordinate.y + CGFloat(radius) * sin( -CGFloat(radiansAngle(degree: CGFloat(i))) )))

            i += 2
        }
        
        coordinate = CGPoint(x: (self.frame.width * 0.25) + CGFloat(constX), y: (self.frame.height * 0.25) + CGFloat(constY))

        i = 55

               while i < 230 {

                   heart.addLine(to: CGPoint(x: coordinate.x + CGFloat(radius) * cos(-CGFloat(radiansAngle(degree: CGFloat(i)))), y: coordinate.y + CGFloat(radius) * sin( -CGFloat(radiansAngle(degree: CGFloat(i))) )))
                heartPoints.append(CGPoint(x: coordinate.x + CGFloat(radius) * cos(-CGFloat(radiansAngle(degree: CGFloat(i)))), y: coordinate.y + CGFloat(radius) * sin( -CGFloat(radiansAngle(degree: CGFloat(i))) )))

                   i += 2
               }
        
        heart.addLine(to: CGPoint(x: self.frame.width / 2, y: self.frame.height - CGFloat(constY)))
        heartPoints.append(CGPoint(x: self.frame.width / 2, y: self.frame.height - CGFloat(constY)))
        
        
        
        let f = UIBezierPath()
        f.move(to: CGPoint(x: heartPoints[0].x, y: heartPoints[0].y))
        
        for point in heartPoints {
            f.addLine(to: CGPoint(x: point.x, y: point.y))
        }
        
        f.fill()
    
        
        var str = ""

        for i in heartPoints {
            str = str + "CGPoint(x: \(i.x / 1000), y: \(i.y / 1000) ), "
        }

        print(str)

        print("STOP")
//        heart.fill()
        
    }
}

let he = He(frame: CGRect(x: 0, y: 0, width: 1000, height: 1000))
he.backgroundColor = .white

class Heart11: UIView {

    func radiansAngle(degree: CGFloat) -> CGFloat {
        return CGFloat(Double.pi) * degree / 180
    }

    override func draw(_ rect: CGRect) {

        let kf: CGFloat = 1000

        let heart =  UIBezierPath()

        var heartPoints = [CGPoint]()

        heart.move(to: CGPoint(x: 0.500 * kf, y: 0.77 * kf))
        heartPoints.append(CGPoint(x: 0.5 * kf, y: 0.77 * kf))

        var i = -50

        while i < 131 {

            heartPoints.append(CGPoint(x: 0.632 * kf + 0.206 * kf * cos(-CGFloat(radiansAngle(degree: CGFloat(i)))), y: 0.350 * kf + 0.206 * kf * sin( -CGFloat(radiansAngle(degree: CGFloat(i))) )))
            heart.addLine(to: CGPoint(x: 0.632 * kf + 0.206 * kf * cos(-CGFloat(radiansAngle(degree: CGFloat(i)))), y: 0.350 * kf + 0.206 * kf * sin( -CGFloat(radiansAngle(degree: CGFloat(i))) )))

            i += 2
        }

            heart.stroke()

        let heart1 =  UIBezierPath()

        heartPoints.append(CGPoint(x: 0.368 * kf + 0.206 * kf * cos(CGFloat(radiansAngle(degree: CGFloat(50)))), y: 0.350  * kf + 0.206 * kf * sin( CGFloat(radiansAngle(degree: CGFloat(-50))) )))

        heart1.move(to: CGPoint(x: 0.368 * kf + 0.206 * kf * cos(CGFloat(radiansAngle(degree: CGFloat(50)))), y: 0.350 * kf + 0.206 * kf * sin( CGFloat(radiansAngle(degree: CGFloat(-50))) )))

        i = 50

        while i < 231 {
            heartPoints.append(CGPoint(x: 0.368 * kf + 0.206 * kf * cos(-CGFloat(radiansAngle(degree: CGFloat(i)))), y: 0.350 * kf + 0.206 * kf * sin( -CGFloat(radiansAngle(degree: CGFloat(i))) )))
            heart1.addLine(to: CGPoint(x: 0.368 * kf + 0.206 * kf * cos(-CGFloat(radiansAngle(degree: CGFloat(i)))), y: 0.350 * kf + 0.206 * kf * sin( -CGFloat(radiansAngle(degree: CGFloat(i))) )))
                i += 2
        }

//        heartPoints.append(CGPoint(x: 0.368 * kf, y: 0.80 * kf))

//                heart1.move(to: heartPoints[0])

        var str = ""

                for i in heartPoints {
                    str = str + "CGPoint(x: \(i.x/100) ), y: \(i.y / 100) )), "
//                   print("CGPoint(x:", Double(round(100*i.x)/100), ", y:", Double(round(100*i.y)/100), "),")
                }

        print(str)

                print("STOPP")
        print("heartPoints", heartPoints.count, "\n")

        heart1.addLine(to: CGPoint(x: 0.500 * kf, y: 0.77 * kf))
        str = str + "CGPoint(x: \(Double(round(100*0.500)/100) ), y: \(Double(round(100*0.77)/100)) ), "

                heart1.stroke()


        let line =  UIBezierPath()

        line.move(to: CGPoint(x: 500, y: 0))
        line.addLine(to: CGPoint(x: 500, y: 1000))
        line.stroke()

        }
}

let view2Heart11 = Heart11(frame: CGRect(x: 0, y: 0, width: 1000, height: 1000))
view2Heart11.backgroundColor = .white
