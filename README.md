# Data Engineering with Data Build Tool (DBT)
This is the repository for the LinkedIn Learning course `Data Engineering with Data Build Tool (DBT)`. The full course is available from [LinkedIn Learning][lil-course-url].

![course-name-alt-text][lil-thumbnail-url] 

Data Build Tool (dbt) has quickly become an essential tool in many data stacks ranging from startups to big tech for managing data transformations. In this course, data engineer Mark Freeman helps you get started with setting up, running, and managing a dbt project via the open-source offering dbt Core. Learn how to install dbt Core, configure an environment for dbt, create and manage a dbt project, and deploy a dbt project in production. If you’re a data professional tasked with implementing dbt within your organization, recently joined a team utilizing dbt and need to upskill, or just want to learn about dbt to increase your competitiveness within the data job market, check out this course.

_See the readme file in the main branch for updated instructions and information._
## Instructions
This repository has branches for each of the videos in the course. You can use the branch pop up menu in github to switch to a specific branch and take a look at the course at that stage, or you can add `/tree/BRANCH_NAME` to the URL to go to the branch you want to access.

## Branches
The branches are structured to correspond to the videos in the course. The naming convention is `CHAPTER#_MOVIE#`. As an example, the branch named `02_03` corresponds to the second chapter and the third video in that chapter. 
Some branches will have a beginning and an end state. These are marked with the letters `b` for "beginning" and `e` for "end". The `b` branch contains the code as it is at the beginning of the movie. The `e` branch contains the code as it is at the end of the movie. The `main` branch holds the final state of the code when in the course.

When switching from one exercise files branch to the next after making changes to the files, you may get a message like this:

    error: Your local changes to the following files would be overwritten by checkout:        [files]
    Please commit your changes or stash them before you switch branches.
    Aborting

To resolve this issue:
	
    Add changes to git using this command: git add .
	Commit changes using this command: git commit -m "some message"


[0]: # (Replace these placeholder URLs with actual course URLs)

[lil-course-url]: https://www.linkedin.com/learning/data-engineering-with-dbt
[lil-thumbnail-url]: https://media.licdn.com/dms/image/D560DAQHnrbGtKKAabg/learning-public-crop_675_1200/0/1703199806902?e=2147483647&v=beta&t=Q6jKFTslSvhl3bYTkd0PuIEVnIx26lCa-XWVE5hCmm0

