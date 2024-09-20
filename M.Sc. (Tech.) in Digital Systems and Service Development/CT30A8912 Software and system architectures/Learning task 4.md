[[Software and system architectures]]

1. **What does the deployment view clarify and for which audience is it useful?**  
	
	The deployment view offers insight into how the system is deployed and functions within its environmentt, making it especially valuable for developers and system administrators. It illustrates the physical deployment of software components onto hardware nodes, detailing aspects like network topology, server configurations, and communication protocols. By utilizing UML diagrams like Component and Package diagrams, the deployment view helps developers understand how different software modules interact and are organized within the system, facilitating efficient development, debugging, and maintenance processes. Additionally, it aids system administrators in effectively managing and maintaining the deployed system infrastructure, ensuring smooth operation and scalability (Olamendy, 2011).
	
2. **What architectural views seem to be more important in the course project? Why?**  
	 
	 I believe the following are more important:
	 - Context View: Describing the system's interaction with external entities, ensuring that stakeholders understand how users and external systems interact with the SSI solution. This is important for outlining the boundaries and dependencies of the system, which help in gaining trust and clarity.
	 - Functional View: Defining the system's primary functionalities, such as user authentication through facial recognition and decentralised identity verification via blockchain. This helps stakeholders understand the core capabilities of the system and how these functionalities meet their needs and expectations.
	 - Development View: Detailing the system's architecture from a development perspective. This helps the development team to understand the modular structure, development standards, and integration points, ensuring a coherent and maintainable codebase.
	 
3. **Why do also development tools make some of your architectural decisions?**
	
	Development tools often play a significant role in shaping architectural decisions due to their influence on the development process. When selecting tools such as programming languages, frameworks, and libraries, developers must consider their compatibility with the overall architecture of the system. For instance, the choice of a database management system might dictate the data storage and retrieval mechanisms. Thus, development tools introduce certain constraints into the project, pushing developers towards specific architectural choices that align with the capabilities and limitations of the selected tools.


***References***
Olamendy, J.C. (2011). _Deployment diagram_. [online] JC Olamendy’s Thoughts. Available at: https://johnolamendy.wordpress.com/tag/deployment-diagram/ [Accessed 27 May 2024].