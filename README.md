# DevOps Automation Scripts

This repository contains a collection of scripts to automate various DevOps tasks. These scripts aim to simplify and streamline processes such as system setup, database backups, and other routine tasks.

## Table of Contents

- [Scripts Included](#scripts-included)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Scripts Included

1. **Swap Management**

   - `swap.sh`: Script to create and manage 4GB of swap space on a Linux system.

2. **System Setup**

   - `server_setup.sh`: Script to set up development or production environment with necessary packages and configurations.

3. **Database Backup**

   - `db_backup.sh`: Script to perform database backups with options for scheduling and storage locations.

4. **Database Restore**
   - `restore_db.sh`: Script to restore the backup database.

## Usage

Each script is designed to be run from the command line. Make sure to give execute permission to the scripts before running them.

### Create Swap

```bash
chmod +x swap.sh
./swap.sh
```

### Setup Environment

```bash
chmod +x server_setup.sh
./server_setup.sh
```

### Database Backup

```bash
chmod +x db_backup.sh
./db_backup.sh
```

### Restore Database Backup

```bash
chmod +x restore_db.sh
./restore_db.sh
```

## Contributing

Contributions are welcome! Please follow these steps to contribute:

1. Fork the repository.
2. Create a new branch: `git checkout -b feature/YourFeature`
3. Commit your changes: `git commit -m 'Add some feature'`
4. Push to the branch: `git push origin feature/YourFeature`
5. Submit a pull request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
