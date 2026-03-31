curl -s http://169.254.169.254/latest/meta-data/iam/security-credentials/
TOKEN=$(curl -s -X PUT "http://169.254.169.254/latest/api/token" \
-H "X-aws-ec2-metadata-token-ttl-seconds: 21600")
curl -s -H "X-aws-ec2-metadata-token: $TOKEN" http://169.254.169.254/latest/meta-data/iam/security-credentials/
aws sts get-caller-identity
aws ssm describe-instance-information
sudo systemctl status amazon-ssm-agent
curl https://ssm.us-east-1.amazonaws.com
sudo systemctl restart amazon-ssm-agent
sudo journalctl -u amazon-ssm-agent -n 50
sudo journalctl -u amazon-ssm-agent -n 50 --no-pager
"InstanceInformationList": []
aws ssm describe-instance-information
aws ssm start-session --target i-03c106a044e54a9c1
sudo dnf update -y
sudo dnf install git -y
ssh-keygen -t ed25519 -C "ec2"
cat ~/.ssh/id_ed25519.pub
ssh -T git@github.com
aws sts get-caller-identity
aws ssm put-parameter   --name "/app/prod/db_host"   --value "prod-db.local"   --type "String"
aws ssm put-parameter   --name "/app/prod/api_url"   --value "prod.api"   --type "String"
aws ssm put-parameter   --name "/app/prod/log_level"   --value "ERROR"   --type "String"
nano app.sh
chmod +x app.sh
aws ssm get-parameter   --name "/app/dev/db_host"   --query "Parameter.Value"   --output text
nano buildspec.yml
export APP_ENV=dev
export DB_HOST=$(aws ssm get-parameter --name "/app/dev/db_host" --query "Parameter.Value" --output text)
export API_URL=$(aws ssm get-parameter --name "/app/dev/api_url" --query "Parameter.Value" --output text)
export LOG_LEVEL=$(aws ssm get-parameter --name "/app/dev/log_level" --query "Parameter.Value" --output text)
./app.sh
git init
git add app.sh buildspec.yml
git commit -m "initial commit for env vars lab"
git remote add origin https://github.com/res200183/env-vars-lab.git
git branch -M main
git push -u origin main
git remote remove origin
git remote add origin git@github.com:res200183/env-vars-lab.git
git remote -v
git push -u origin main
echo "# test change" >> test.txt
git add .
git commit -m "trigger pipeline"
git push
git rm --cached .ssh/id_ed25519
printf ".ssh/\n" >> .gitignore
git add .gitignore
git commit -m "ignore ssh directory"
pwd
cd ~/env-vars-lab
git init
git add .
git commit -m "clean project commit"
find ~ -maxdepth 3 \( -name app.sh -o -name buildspec.yml \) 2>/dev/null
rm -rf .git
git init
git add app.sh buildspec.yml .gitignore
git commit -m "clean safe commit"
git remote add origin git@github.com:res200183/env-vars-lab.git
git branch -M main
git push -u origin main --force
git log --oneline -1
nano buildspec.yml
cat buildspec.yml
nano buildspec.yml
git add buildspec.yml
git commit -m "dynamic env support"
git push
nano buildspec.yml
git add buildspec.yml
git commit -m "switch to stage"
git push
nano buildspec.yml
git add buildspec.yml
git commit -m "fix yaml"
git push
nano README.md
git add README.md
git commit -m "add README"
git push
nano .gitignore
git add .gitignore
git commit -m "update gitignore"
git push
git commit -m "test build"
git push
git log
git status
git log
git log --oneline
git clone https://github.com/res200183/github-flow-practice.git
cd github-flow-practice
git checkout -b feature/login
git branch
pwd
ls -la
echo "login feature v1" > login.txt
git add .
git commit -m "add login feature v1"
git branch
git push -u origin feature/login
git remote set-url origin git@github.com:res200183/github-flow-practice.git
git push -u origin feature/login
cd github-flow-practice
pwd
ls
git checkout -b main
git push -u origin main
git checkout feature/login
echo "login feature v2" >> login.txt
git add .
git commit -m "update login feature v2


echo "login feature v2" >> login.txt
git add .
git commit -m "update login feature v2"
git commit -m "update login feature v2"
git push
git checkout main
echo "# GitHub Flow Practice" > README.md
echo ".env" > .gitignore
cat <<EOF > README.md
# GitHub Flow Practice

This project demonstrates GitHub Flow:

- feature branches
- pull requests
- merge into main

Repository created for practice.
EOF

git add .
git commit -m "update README and add gitignore"
git push
git pull --rebase origin main
git push
git config --global user.name "res200183"
git config --global user.email "res200183@gmail.com"
git config --global --list
git clone git@github.com:res200183/tbd-practice.git
cd tbd-practice
git clone git@github.com:res200183/tbd-practice.git
cd tbd-practice
nano app.py
git add .
git commit -m "init: base app with feature flag"
git push origin main
git checkout -b feature/login-message
nano app.py
git add .
git commit -m "feat: add login message"
git checkout main
git merge feature/login-message
git push origin main
git log --oneline --graph --decorate --all
git checkout main
nano app.py
git add .
git commit -m "feat: enable login feature via flag"
git push origin main
python3 app.py
cd tbd-practice
mkdir -p .github/workflows
nano .github/workflows/ci.yml
git add .
git commit -m "ci: add basic pipeline"
git push origin main
nano README.md
git branch
git add README.md
git commit -m "docs: add README"
git push origin main
nano .gitignore
git add .gitignore
git commit -m "chore: add gitignore"
git push origin main
mkdir notes-app
cd notes-app
git init
git status
git branch -m main
echo "Base version of app" > app.txt
git add .
git commit -m "initial commit"
git log --oneline
git remote add origin https://github.com/res200183/notes-app.git
git push -u origin main
ls -la ~/.ssh
cat ~/.ssh/id_ed25519.pub
ssh -T git@github.com
git remote remove origin
git remote add origin git@github.com:res200183/notes-app.git
git remote -v
git checkout -b feature/add-login-note
git branch
echo "Login feature added" >> app.txt
cat app.txt
git add .
git commit -m "add login feature"
git log --oneline --graph
git diff main
git push -u origin feature/add-login-note
git checkout main
git merge feature/add-login-note
cat app.txt
git branch -d feature/add-login-note
git branch
echo "# Notes App (Git Feature Branch Workflow Demo)" > README.md
nano README.md
git add README.md
git commit -m "add README with feature branch workflow"
git push
nano .gitignore
git add .gitignore
git commit -m "add .gitignore"
git push
git clone git@github.com:res200183/pr-lifecycle-lab.git
git checkout -b feature/pr-test
git branch
mkdir -p app
printf "def add(a, b):\n    return a + b\n" > app/math_utils.py
printf "from app.math_utils import add\n\n\ndef test_add():\n    assert add(2, 2) == 5\n" > test_math_utils.py
git status
cd pr-lifecycle-lab
pwd
git status
git add app test_math_utils.py
git commit -m "Add math utility and test"
git status
git checkout feature/pr-test
git checkout -b feature/pr-test
git branch
mkdir -p app
printf "def add(a, b):\n    return a + b\n" > app/math_utils.py
printf "from app.math_utils import add\n\n\ndef test_add():\n    assert add(2, 2) == 5\n" > test_math_utils.py
git status
git add app test_math_utils.py
git commit -m "Add math utility and failing test"
git status
git push -u origin feature/pr-test
mkdir -p .github/workflows
printf "name: Python CI\n\non:\n  pull_request:\n  push:\n    branches:\n      - main\n      - feature/pr-test\n\njobs:\n  test:\n    runs-on: ubuntu-latest\n    steps:\n      - name: Checkout\n        uses: actions/checkout@v4\n\n      - name: Set up Python\n        uses: actions/setup-python@v5\n        with:\n          python-version: '3.11'\n\n      - name: Install pytest\n        run: pip install pytest\n\n      - name: Run tests\n        run: pytest\n" > .github/workflows/python-ci.yml
git add .github/workflows/python-ci.yml
git commit -m "Add CI workflow"
git push
nano test_math_utils.py
git add test_math_utils.py
git commit -m "Fix failing test"
git push
printf "__pycache__/\n*.pyc\n.env\n.venv\n" > .gitignore
git add .gitignore
git commit -m "Add .gitignore"
git push
nano README.md
git add README.md
git commit -m "Improve README"
git push
git branch
sudo yum update -y
sudo yum install -y ruby
cd /home/ec2-user && wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/latest/install⁠
chmod +x /home/ec2-user/install
wget https://aws-codedeploy-us-east-1.s3.amazonaws.com/latest/install⁠
sudo ./install auto
sudo yum install -y codedeploy-agent
sudo dnf install -y https://aws-codedeploy-us-east-1.s3.amazonaws.com/latest/codedeploy-agent.noarch.rpm⁠
sudo service codedeploy-agent status
curl http://169.254.169.254/latest/meta-data/placement/region⁠
TOKEN=$(curl -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600")
curl -H "X-aws-ec2-metadata-token: $TOKEN" http://169.254.169.254/latest/meta-data/placement/region
sudo dnf install -y https://aws-codedeploy-us-east-1.s3.amazonaws.com/latest/codedeploy-agent.noarch.rpm⁠
sudo systemctl start codedeploy-agent
wget https://aws-codedeploy-us-east-1.s3.amazonaws.com/latest/codedeploy-agent.noarch.rpm⁠�
echo https://aws-codedeploy-us-east-1.s3.amazonaws.com/latest/codedeploy-agent.noarch.rpm⁠� > url.txt
wget $(cat url.txt)
sudo yum install -y https://aws-codedeploy-us-east-1.s3.amazonaws.com/latest/install⁠�
sudo dnf install -y https://aws-codedeploy-us-east-1.s3.amazonaws.com/latest/codedeploy-agent.noarch.rpm⁠�
aws s3 ls s3://aws-codedeploy-us-east-1/
echo https://aws-codedeploy-us-east-1.s3.amazonaws.com/latest/codedeploy-agent.noarch.rpm⁠� > url.txtaws s3 ls s3://aws-codedeploy-us-east-1/releases/
aws s3 ls s3://aws-codedeploy-us-east-1/releases/
aws s3 ls s3://aws-codedeploy-us-east-1/releases/ --recursive | grep rpm
aws s3 cp s3://aws-codedeploy-us-east-1/releases/codedeploy-agent-1.8.1-26.noarch.rpm .
sudo dnf install -y ./codedeploy-agent-1.8.1-26.noarch.rpm
sudo systemctl status codedeploy-agent
sudo service codedeploy-agent status
ls /opt/codedeploy-agent/deployment-root/
cd /opt/codedeploy-agent/deployment-root/d3f4f6b0-*
ls
cd d-QLM6YZ7LI
ls
cd deployment-archive
ls
mkdir myapp
cd myapp
cd ~
mkdir myapp
cd myapp
cat > appspec.yml <<'EOF'
version: 0.0
os: linux
files:
  - source: /
    destination: /var/www/html
EOF

ls
cat > index.html <<'EOF'
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>My App</title>
</head>
<body>
  <h1>Hello from CodeDeploy 🚀</h1>
</body>
</html>
EOF

ls
tar -cvf bundle.tar appspec.yml index.html
aws s3 cp bundle.tar s3://as-terminate-logs-oleksandr-001/bundle.tar
aws s3 ls
aws s3 cp bundle.tar s3://codedeploy-artifacts-7867-6947-6049/bundle.tar
sudo systemctl status nginx
sudo dnf install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
ls /var/www/html
cat /var/www/html/index.html
sudo systemctl restart nginx
cat /etc/nginx/nginx.conf | grep root
sudo cp /var/www/html/index.html /usr/share/nginx/html/index.html
sudo systemctl restart nginx
sudo cp -f /var/www/html/index.html /usr/share/nginx/html/index.html
cat /usr/share/nginx/html/index.html
http://54.234.139.168
cat /usr/share/nginx/html/index.html
cat /etc/nginx/conf.d/*.conf
curl http://localhost
git clone git@github.com:res200183/pr-review-lab.git
cd pr-review-lab
git checkout -b feature/readme-init
echo "# PR Review Lab" > README.md
echo "This project is for practicing Pull Requests and code review." >> README.md
cat README.md
git add README.md
git commit -m "Add initial README"
git push origin feature/readme-init
git branch -M main
git push -u origin main
git checkout -b feature/pr-description
echo "" >> README.md
echo "## Change summary" >> README.md
echo "Add a simple README section for pull request practice." >> README.md
cat README.md
git add README.md
git commit -m "Update README with change summary"
git push -u origin feature/pr-description
nano README.md
git add README.md
git commit -m "Improve README based on review comments"
git push
cat > README.md <<'EOF'
# PR Review Lab

This repository demonstrates a basic GitHub workflow used in real teams:

- creating a feature branch
- making changes in isolation
- opening a pull request
- addressing review comments
- updating the pull request with new commits
- merging into the main branch

## Purpose

This project was created as a hands-on practice lab to demonstrate understanding of:

- Git branching
- Pull Requests
- Code Review workflow
- Commit and push cycle
- Updating a PR after review feedback

## Workflow Practiced

1. Create a repository
2. Create a feature branch
3. Make changes to the project
4. Commit and push the branch
5. Open a Pull Request
6. Review the changes
7. Apply feedback
8. Push updates to the same branch
9. Merge the Pull Request into `main`

## Skills Demonstrated

- Git
- GitHub
- Branching strategy
- Pull Request management
- Review-driven development
- Command-line workflow
EOF

git add README.md
git commit -m "Improve README for portfolio presentation"
git push
git checkout main
git pull origin main
git branch
git merge feature/pr-description
git status
cd pr-review-lab
git status
git commit
git push origin main
git status
nano .gitignore
git add .gitignore
git commit -m "Add .gitignore for cleaner repository"
git push
mkdir bluegreen-codedeploy-lab
cd bluegreen-codedeploy-lab
mkdir bluegreen-codedeploy-lab
cd bluegreen-codedeploy-lab
cat index.html
echo '<h1>Version 1 - BLUE</h1>' > index.html
cat index.html
git init
git add .
git branch -M main
git commit -m "initial commit - version 1 (blue)"
git remote -v
git remote add origin git@github.com:res200183/bluegreen-codedeploy-lab.git
git remote -v
git push -u origin main
git log --oneline -1
cd ~/bluegreen-codedeploy-lab
mkdir -p scripts
cat > appspec.yml <<'EOF'
version: 0.0
os: linux
files:
  - source: /
    destination: /home/ec2-user/app
hooks:
  AfterInstall:
    - location: scripts/install.sh
      timeout: 300
      runas: root
EOF

cat > scripts/install.sh <<'EOF'
#!/bin/bash
set -e
cp /home/ec2-user/app/index.html /usr/share/nginx/html/index.html
systemctl restart nginx
EOF

chmod +x scripts/install.sh
cd ~/bluegreen-codedeploy-lab
git add .
git commit -m "add appspec and install script for codedeploy"
git push origin main
git log --oneline -1
git checkout main
git merge feature/pr-test
git push origin main
git log --oneline -1
git rev-parse HEAD
