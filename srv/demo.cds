using { API_BUSINESS_PARTNER as external } from './external/API_BUSINESS_PARTNER.csn';

service demo{
    @readonly entity BusinessPartners as projection on external.A_BusinessPartner{
        BusinessPartner,
        FirstName,
        MiddleName,
        LastName,
        BusinessPartnerIsBlocked
    }
}