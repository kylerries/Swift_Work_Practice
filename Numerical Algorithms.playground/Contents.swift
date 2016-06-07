//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

// The Bisection Method

func bisection(x: Double) -> Double {
    //1 Sets the lower bound to 1
    var lower = 1.0
    //2 Sets the upper bound to x
    var upper = x
    //3 Finds the middle and defines the desired accuracy
    var m = (lower + upper) / 2
    var epsilon = 1e-10
    //4 Checks if the operation has reached the desired accuracy
    while (fabs(m * m - x) > epsilon) {
        //5 If not, this block finds the middle of the new interval and checks which interval to use next
        m = (lower + upper) / 2
        if m * m > x {
            upper = m
        } else {
            lower = m
        }
    }
    
    return m
}

let bis = bisection(2.5)


// Heron’s method

func heron(x: Double) -> Double {
    /*1 Creates variables to store the current result. xOld is the last calculated value andxNew the actual value.
    A good starting point for this method is found the way xNew is initialized.
    epsilon is the desired accuracy.
    In this case, you calculate the square root up to the 10th decimal place.*/

    var xOld = 0.0
    var xNew = (x + 1.0) / 2.0
    var epsilon = 1e-10
    
    //2 While checks if the desired accuracy is reached.
    while (fabs(xNew - xOld) > epsilon) {
        //3 If not, xNew becomes the new xOld, and then the next iteration starts.
        xOld = xNew
        xNew = (xOld + x / xOld) / 2
    }
    
    return xNew
}

let her = heron(2.5)

// Harmonic Oscillators
/*For this example, you’ll work with a mass attached to a spring. To make things easier, you’ll ignore damping and gravity, so the only force acting on the mass is the spring force that tries to pull the mass back to an offset position of zero.

With this assumption, you only need to work with two physical laws.

Newton’s Second Law: F=m*\ddot x, which describes how the force on the mass changes its acceleration.
Hook’s Law:F=-k*x, which describes how the spring applies a force on the mass proportional to its displacement, where k is the spring constant and x is the displacement.
*/


/*Harmonic Oscillator Formula

Since the spring is the only source of force on the mass, you combine these equations and write the following:
m*\ddot x=-k*x

You can write this as:
\ddot x=-\frac{k}{m}*x

\frac{k}{m} is also known as \omega^2, which is the square of the resonance frequency.

The formula for the exact solution is as follows:
x(t)=A*\sin(\omega*t+\delta)

A is the amplitude, and in this case it means the displacement, \delta, is known as phase difference. Both are constant values that can be found using initial values.

If you say at the time t=0 you have x(0)=x_0 and \dot x(0)=v_0 you find the amplitude and phase difference as:

A = x/sin(\omega*t)
\delta = tan(\omega*t)=\frac{x_0*\omega}{v_0}

Let’s look at an example. We have a mass of 2kg attached to a spring with a spring constant k=196N/m. At the time t=0 the spring has a displacement of 0.1m. To calculate A and \delta we have to calculate \omega.

\omega=\sqrt{\frac{k}{m}}=\sqrt{\frac{196Nm}{2kg}}=98m/s
A = x/sin(\omega*t)=0.1*sin(98*0)=0.1 and
\delta = tan(\omega*t)=tan(98*0) = 0 */


//1 This defines a typealias for a function that takes five Double arguments and returns nothing.
typealias Solver = (Double, Double, Double, Double, Double) -> Void

//2 Here you create a struct that describes a harmonic oscillator.
struct HarmonicOscillator {
    var kSpring = 0.0
    var mass = 0.0
    var phase = 0.0
    var amplitude = 0.0
    var deltaT = 0.0
    
    init(kSpring: Double, mass: Double, phase: Double, amplitude: Double, deltaT: Double) {
        self.kSpring = kSpring
        self.mass = mass
        self.phase = phase
        self.amplitude = amplitude
        self.deltaT = deltaT
    }
    
    //3 This function simply creates Closures to solve the oscillator.
    func solveUsingSolver(solver: Solver) {
        solver(kSpring, mass, phase, amplitude, deltaT)
    }
}

// Compare to an Exact Solution

func solveExact(amplitude: Double, phase: Double, kSpring: Double, mass: Double, t: Double) {
    var x = 0.0
    //1 Calculates the resonance frequency.
    let omega = sqrt(kSpring / mass)
    
    var i = 0.0
    
    while i < 100.0 {
        //2 The current position calculates Inside the while loop, and i is incremented for the next step.
        x =  amplitude * sin(omega * i + phase)
        i += t
    }
}

let osci = HarmonicOscillator(kSpring: 0.5, mass: 10, phase: 10, amplitude: 50, deltaT: 0.1)
osci.solveUsingSolver(solveExact)

//Euler Method
//The Euler method is the simplest method for numerical integration. It was introduced in the year 1768 in the book Institutiones Calculi Integralis by Leonhard Euler.








