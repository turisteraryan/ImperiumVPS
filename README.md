# 🚀 Bot Deployment and High Ping Optimization

Welcome to the **Bot Deployment and High Ping Optimization** repository! This workflow allows you to deploy and host your **Telegram** or **Discord** bot with automatic checks and restarts every 6 hours to ensure the bot stays online and responsive with high ping. Follow the simple steps below to get started! 🎉

---

## 🔧 Features

- 🕒 **Automatic Bot Restart** every 6 hours to ensure it stays live.
- 🔄 **Force Restart** logic that monitors the bot process and triggers a workflow restart if the bot is down.
- 🚀 **Easy Bot Deployment** with GitHub Actions.
- 🔑 **Secrets Management** for storing sensitive information like tokens and credentials.
- 📈 **High Ping Checks** to keep your bot responsive.
- 🖥️ **Works for both Telegram and Discord Bots**.

---

## 📝 How to Use

### Step 1: **Fork the Repository** 🍴

1. Go to the top-right corner of this page and click the **Fork** button.
2. This will create a copy of this repository in your GitHub account. You will now be able to use and customize your own bot deployment workflow.

---

### Step 2: **Add GitHub Secrets** 🔐

Next, you need to add some **Secrets** to your forked repository. These secrets will store sensitive data like your bot tokens and GitHub credentials securely.

#### 1. **Navigate to the Secrets Page**:
   - Go to your forked repository.
   - Click on **Settings**.
   - Scroll down to **Secrets and variables** and click **Actions**.

#### 2. **Add These Secrets**:

- **`GIT_TOKEN`**: A personal access token from GitHub that has permission to trigger workflows and access the repository. You can generate this token by going to **GitHub Settings** > **Developer Settings** > **Personal Access Tokens**.
- **`GIT_REPO`**: The URL of your forked repository (e.g., `https://github.com/yourusername/yourrepo`).
- **`GIT_USERNAME`**: Your GitHub username.
- **`GIT_EMAIL`**: Your GitHub email.
- **`BOT_TOKEN`**: Your **Telegram** or **Discord** bot token.

🔑 **How to Add Secrets**:
1. Click on **New repository secret**.
2. Add each secret one by one.
3. Click **Add secret** after entering the value.

💡 **Example**:
   - Name: `GIT_TOKEN`
   - Value: `your-github-personal-access-token`

Repeat this for each secret.

---

### Step 3: **Deploy the Bot** 🚀

With the secrets in place, your bot is ready to deploy. You can trigger the deployment in two ways:

#### 1. **Manual Deployment**: 

- In your repository, go to the **Actions** tab.
- Click on **Bot Deployment and High Ping Optimization**.
- Click on **Run workflow** and trigger the deployment manually.

#### 2. **Automatic Deployment**:

The workflow is set to automatically deploy the bot and restart every **6 hours**. You don't need to do anything unless you want to deploy manually or check the logs.

---

### Step 4: **Force Restart Workflow** 🔄

If for any reason the bot stops working or isn't responding, the workflow will automatically force a restart using the `restart_bot.sh` script. This script checks if the bot process is running, and if it isn't, it triggers the GitHub workflow again to restart the bot.

#### Script Overview:
- **`restart_bot.sh`**: This script monitors your bot's process and ensures it stays active.
- It runs as part of the workflow to guarantee the bot stays live every 6 hours.

---

## 📁 File Structure

### Key Files:

- **`.github/workflows/bot_deploy.yml`**: This is the GitHub Actions workflow that handles bot deployment, high ping checks, and automatic restart every 6 hours.
- **`restart_bot.sh`**: This is the script that checks if your bot process is still running and triggers a workflow restart if needed.

### File Path:

- Place the `restart_bot.sh` in the **root directory** of your repository.

Example Structure:

