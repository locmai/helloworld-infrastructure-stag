init:
	rm -rf ./.git || true
	hub delete -y locmai/helloworld-infrastructure-stag || true
	git init 
	hub create -d "Infrastructure for staging cluster #TechCon"
	hub add .
	hub commit -m "init"
	hub push origin master