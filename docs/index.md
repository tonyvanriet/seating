# Developer job posting
The NFI Logistics’ Brokerage division is building a new web-based Transportation Management System from the ground up. We're a small development team with extensive experience writing software for the logistics industry and we’re looking for a few more developers based in the Chicago area to help round out our team.

# Product

We define our success in terms of positive business impact. The less code required to deliver a business capability, the better. We also aim to prove the value of our features as early as possible by defining a minimum viable product, seeing its value in production, and then iterating on that.

# Design

We are building our system using Domain Driven Design principles. If the shape of the software model closely matches the shape of the business domain, then that software model should be more readily able to bend and adapt to match the changes in that business domain.

We are also building our system utilizing CQRS and Event Sourcing design patterns in any subdomains where it is deemed valuable. CQRS may require additional work up-front to build a separate read and write model but those models are so much more clearly focused, they are a pleasure to build and maintain. As for Event Sourcing, time is a critical aspect of logistics, so events provide a very natural way to model activity in the operation of the business. Event messages also provide a way to integrate subdomains with minimal coupling.

# Technologies

Our data infrastructure is comprised of numerous Elixir microservices utilizing Phoenix to serve our APIs and web application, all hosted in the cloud. Event sourced models are persisted using EventStore while other more traditional persistence is done using Mnesia and Postgres. Ansible is used to codify and provision our infrastructure. 

Despite these established choices, we still believe in using the right tool for each specific problem. If you feel a new technology will best serve the problem you’re working on, the separation afforded by DDD and microservices makes it feasible for us to explore those options. 

# Development

Our team has established a strong culture where high code quality and test coverage are the status quo. At the same time, we’re also focused on minimizing the friction involved in taking an idea, and realizing it in production code.

We regularly practice pair programming, and all code changes get reviewed. Our continuous integration practices ensure that code style and test coverage standards are maintained, and we hope to evolve toward continuous deployment in the future.

# Responsibilities
- Collaborate with domain experts, product managers, and other developers to refine a software domain model following DDD principles
- Document the domain model as it evolves 
- Implement the domain model in Elixir services being careful to avoid unnecessary coupling
- Implement unit tests and integration tests maintaining high code coverage
- Integrate with 3rd party APIs
- Implement front-end logic to support interaction with the domain model services
- Take ownership of the production release and operation of your services
# Qualifications
- 2+ years of professional software development experience
- Elixir or functional programming experience strongly preferred
- Familiarity with DDD principles is a huge plus
- Comfortable using a Mac and working in a Linux environment
- Experience using Git
# Benefits
- Flexible work schedule, WFH, Performance Bonus
- Budget for ongoing education
- Medical, Dental, Vision, 401K

Apply at [careers.nfiindustries.com](https://careers.nfiindustries.com/en-US/job/software-developer/J3M5Q1679K6LGSSX9FN)

