const cds = require('@sap/cds')
module.exports = async function (){

  const srv = await cds.connect.to('API_BUSINESS_PARTNER');

  this.on('READ', 'BusinessPartners', async req => {
    return srv.tx(req).run(req.query);
  })
}