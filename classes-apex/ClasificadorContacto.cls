public class ClasificadorContacto {
    public static void clasificar(Contact c) {
        if (c.Estado__c == 'Activo') {
            System.debug('El contacto está activo y disponible.');
        } else if (c.Estado__c == 'Inactivo') {
            System.debug('El contacto no está activo actualmente.');
        } else {
            System.debug('Estado desconocido del contacto.');
        }
    }
}
