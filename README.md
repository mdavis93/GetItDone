# GetItDone

**GetItDone** is a Self-Destructing _To-Do List_.  Users may
create To-Do items, remove items, and mark items as complete.
All items will self-destruct seven days after creation.

This project makes use of the following gems:
1. Devise
    1. User authentication performed by [Devise](https://github.com/plataformatec/devise)
2. Pundit
    1. User authorization performed by [Pundit](https://github.com/varvet/pundit)
3. RedCarpet
    1. Markdown functionality provided by [RedCarpet](https://github.com/vmg/redcarpet)
    
After creating a new account, users will be sent a confirmation email
to complete the new account setup. No grace period is given for unconfirmed
accounts. Any account unconfirmed after 24 hours will be purged.