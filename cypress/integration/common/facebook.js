import { Then, When } from 'cypress-cucumber-preprocessor/steps';

Then('Musala Soft profile picture appears on the new page', () => {
cy.get('[aria-label="Musala Soft profile photo"]').should('exist')
});

When('click on Allow Essential and Optional Cookies', () => {
    cy.contains('Allow Essential and Optional Cookies').click();
});
