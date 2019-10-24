											Welcome to the AirBNB-Dog application

Please download the whole folder. After entering into the downloaded folder, please type in your terminal :

			$ bundle install

Then you need to make the migrations go from down to up, to make the app active, so type in the terminal :

			$ rails db:migrate

This app is a dogsitting application : you can be a dogsitter, or look for a dogsitter for your dog, according to your city. You can book as many strolls as you like. 

The app contains fake data, to test its functionnality. To play with it, you can type in your terminal :

			$ rails db:seed
			$ rails console

And then feel free to check all the data in there. A gem called tape_print has been added into the app, so if you type in the rails console "tp" before the data you want to show, it will be nicely organized. For example "tp Dog.all"

Enjoy !
