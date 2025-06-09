#set page(
  paper: "a4",
  margin: 0.5in
)

#set text(size: 12pt)

// latex look https://typst.app/docs/guides/guide-for-latex-users/#latex-look
// #set page(margin: 1.75in)
#set par(leading: 0.55em, spacing: 0.55em, first-line-indent: 1.8em, justify: true)
#set text(font: "New Computer Modern");
#show raw: set text(font: "New Computer Modern Mono")
#show heading: set block(above: 1.4em, below: 1em);


/// Functions

#let header_url(url, icon, body) = {
  link(url)[#body]
  // link(url)[
  //   #box(image(icon), height: 10pt, baseline: 2pt) #body
  // ] 
}

#let section(heading) = {
  // v(10pt)
  box(
    height: 20pt,
    width: 100%,
    stroke: (
      bottom: 0.5pt + black
    )
    )[
      #align(left)[
        #text(size: 19pt)[#heading]
      ]
    ]
}

#let section_block(right, left, body) = {
box(width: 100%)[
  #grid(
    columns: (1fr, auto),
    rows: (auto, auto),
    row-gutter: 10pt,
    text(size: 14pt)[#right],
    text()[#left],
    grid.cell(
      colspan: 2,
      body
    )
  )
]
}

/// helper function

#let url(domain, body) = {
  text(fill: blue)[
    #link(domain)[#body]
  ]
}

/// Content

#align(center)[
  #text(size: 24pt)[
    Aditya Hegde
  ] \
]
#align(center)[
    #text(size: 13pt, fill: blue)[
      #header_url(
        "https://github.com/bwaklog", 
        "icons/github.svg", 
        "github"
      ) #h(5pt)
      #text(fill: black)[$bar$] #h(5pt)
      #header_url(
        "https://www.linkedin.com/in/adityamhegde/", 
        "icons/linkedin.svg", 
        "linkedin"
      ) #h(5pt)
      #text(fill: black)[$bar$] #h(5pt)
      #header_url(
        "https://adiheg.netlify.app", 
        "icons/globe.svg", 
        "website"
      ) #h(10pt)
      #text(fill: black)[$bar$] #h(5pt)
      #header_url(
        "mailto:adityahegde.clg@gmail.com", 
        "icons/mail.svg", 
        "adityahegde.clg@gmail.com"
      ) #h(5pt)
      #text(fill: black)[$bar$] #h(5pt)
      #header_url(
        "+91 9741513349", 
        "icons/phone.svg", 
        "+91 97415-13348"
      )
    ]
]

#section("Summary")

#text()[
I am an undergrad computer science engineer studying in PES University. I have a huge interest in system level projects and working with distributed systems, networking and databases. As a fresher I am still exploring new concepts to challenge myself.
]

#section("Education")


#section_block(
  text()[*PES University* (9.00/10.00)],
  text()[(2023-present)]
)[
  #list(
    [Pursuing B.Tech in Computer Science Engineering],
    [Awarded CNR-Rao for three semesters]
  )
]

#section_block(
  text()[*New Horizon Gurukul* (95%)],
  text()[(2015-2023)]
)[
  #list(
    [Recieved distinction in CBSE PCMC stream]
  )
]

#section("Skills")

#table(
  columns: (auto, 1fr),
  stroke: none,
  align: left,
  text()[*Languages*],
  text()[C, GoLang, Rust, Python, Html, CSS, Javascript],

  text()[*Technologies*],
  text()[Git, MySQL, Sqlite, Docker, CI/CD]
)

#section("Experience")

#section_block(
  text()[
    *PES Innovation Lab* \
    _Project Intern_
  ],
  text()[Jun 2025 - present]
)[
]

#section_block(
  text()[
    *Twospoon.ai* \
    _Project Intern_
  ],
  text()[Apr 2025]
)[
Worked on building the framework for a abstracted orchestrator service for Proxmox for controlling lifetimes of servers. Project spanned 2 weeks
]

#section_block(
  text()[
    *HSP PESUECC* \
    _Core Team Lead_
  ],
  text()[Jun 2025 - present]
)[
]

#section_block(
  text()[
    _Mentor_
  ],
  text()[Sep 2023 - May 2025]
)[
  #list(
    [Presented projects in talks and was part of the mentor panel for #text(fill: blue)[#link("https://www.linkedin.com/events/7210204084853723137/comments/")[Tilde 3.0]]],
    [Part of the team to build (#text(fill: blue)[#link("https://github.com/homebrew-ec-foss/eventloop")[event loop]]) for handling event checkpoints]
  )
]

#section_block(
  text()[
    *ACM PESUECC Student Chapter* \
    _Mentor_
  ],
  text()[Aug 2023 - present]
)[
  #list(
    [Completed the 6 week industrial experience program - AIEP],
    [Worked on the core functionality of the backend(#text(fill: blue)[#link("https://github.com/acmpesuecc/bunsamosa-bot")[bunsamosa-bot]])]
  )
]

#section_block(
  text()[*Developer*],
  text()[Mar 2024 - Apr 2024]
)[
Participated in ACM’s 6 week industrial program organised by the student club. Worked in a team of 4 in building a static site generator purely written in Go.
]

#section("Projects")

#section_block(
  text()[*mu-bonda*],
  url("https://github.com/foobaruwu/mu-bonda")[Github]
)[
(WIP) MPCA(Micro-processor and Computer Organization) Project focused on building a kernel space KV store specifically for raspberry pi 5
]

#section_block(
  text()[*forklift*],
  url("https://github.com/bwaklog/forklift")[Github]
)[
  A buffer pool manager written in rust
]

#section_block(
  text()[*Quaso*],
  url("https://github.com/bwaklog/quaso")[Github]
)[
A from scratch implementation of the #url("https://web.stanford.edu/~ouster/cgi-bin/papers/raft-atc14")[Raft Consensus Algorithm] to handle consensus over a generic log. Built on top of #url("https://tokio.rs/")[tokio.rs] an async runtime.
]

#section_block(
  text()[*Meerkat*],
  url("https://github.com/bwaklog/meerkat")[Github]
)[
(WIP) A distributed peer-to-peer, written in Golang network enabling data synchronisation between all nodes. It is made to provide a communication base for future projects
]

#section_block(
  text()[*Anna*],
  url("https://github.com/anna-ssg/anna")[Github]
)[
A blazing fast static site generator written in go. The goal was to provide a feature rich ssg while beating industry standard benchmark render times
]

#section_block(
  text()[*yake*],
  url("https://github.com/bwaklog/yake")[Github]
)[
A minimal esoteric language written in C, making users perform arithmetic and printing operations with pointers
]

#section_block(
  text()[*Net Nest*],
  url("https://github.com/bwaklog/pleasebekind")[Github]
)[
A machine learning model, written in python, for hate speech analysis for social media filters. The demo for the application demonstrates its working along with a simple local hosted chat application.
]

#section("Contributions")

#section_block(
  text()[*bunsamosa-bot*],
  url("https://github.com/acmpesuecc/bunsamosa-bot/commits/dev/?author=bwaklog")[Github]
)[
The official bot for ACM PESUECC Hacknight events
]

#section_block(
  text()[*eventloop*],
  url("https://github.com/homebrew-ec-foss/eventloop/commits/main/?author=bwaklog")[Github]
)[
The goal of the project was to make overnight event checkpoint keeping automated. Worked on bringing up the backend and a bit of the frontend
]


#section_block(
  text()[*Saturn*],
  url("https://github.com/bwaklog/saturn")[Github]
)[
Forked from #url("https://github.com/anirudhRowjee/saturn")[anirudhRowjee/saturn]. Saturn is an in-memory timer daemon that waits for sometime and sends an HTTP request when it’s done.
]
