# Cheque protocol as a multi-sig protocol

Take the following scenario:

- A CEO authorises an employee to withdraw up to 500USD per day from an account.
- The employee withdraws 100USD.

Observe that only the 2nd transaction causes money to change hand, yet the first is a blockchain transaction, consuming gas nonetheless.

The process can benefit from using multi-sig. The CEO sends the authorisation offchain to the employee. The employe adds some information (100USD), use it to withdraw the money from a smart contract.

Formulating such a multi-sig use-case with cheque, we have:

- The manager's authorisation is a cheque since it promises digital rights.
- The clerk is identified by an employee ID who is the beneficiary of the cheque.
- The withdraw transaction is a redeeming transaction which uses the cheque.

Using cheque protocol

- Adds privacy protection to the identifier
- Allows management through identifier so that if the employee's term is over, the manager doesn't have to revoke the cheque explicitly.
- Easier to extend through TokenScript and requires little programming, therefore reducing the attack surface.
