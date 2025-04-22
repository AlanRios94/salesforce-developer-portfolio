@isTest
private class BuscarCuentasSOQLTest {
    @isTest
    static void testBuscarCuentas() {
        // Crear datos de prueba
        Account acc = new Account(Name = 'Empresa de Prueba Inc', Phone = '123456789');
        insert acc;
        
        // Ejecutar método a probar
        List<Account> resultado = BuscarCuentasSOQL.buscarCuentas('%Prueba%');
        
        // Verificar que el resultado contiene al menos una cuenta
        System.assert(!resultado.isEmpty(), 'La búsqueda no devolvió resultados');
        System.assertEquals('Empresa de Prueba Inc', resultado[0].Name);
    }
}
