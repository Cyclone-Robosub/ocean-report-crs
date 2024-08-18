#let project(
  title: "", 
  subtitle: "", 
  org: "Cyclone RoboSub @ UC Davis", 
  logo: "Cyclcone Propeller Logo CWRK.svg", 
  body
) = {

  set document(
    author: org, 
    title: title, 
    // date: date, 
    keywords: "robotics, robot submarine, RoboSub, engineering")

  set page(
    paper: "us-letter", 
    margin: (bottom: 1.15in),
    background: image("Newsletter Background6.svg"),
    footer: {
      set text(white, .8em, )
      set par(justify: false)
      align(right, block(width: 1.20in, align(right, org)))
      place(bottom + right, 
        dx: .75in, 
        dy: -.25in, 
        image(logo, width: .5in)
      )
    },
    footer-descent: 43%,
    header: {
      set text(weight: "light", .8em)
      // set box(fill: white, inset: 4pt, radius: 2pt)
      box(datetime.today().display("[month]/[day]/[year]"))
      h(1fr)
      counter(page).display("1")
    }
  )

  set text(
    font: "Montserrat"
  )

  set par(
    justify: true
  )

  show heading: set text(1.2em)

  show heading: set text(font: "Prompt")
  show link: it => underline(text(blue, it))

  grid(columns: (1fr, 10%), {
    text(font: "Righteous", weight: 700, 2.5em, title)
    v(-1.75em)
    text(weight: "extralight", 1.5em, subtitle)
  }, 
  // image("Cyclcone Propeller Logo CTL.png")
  )
  

  body
  
}