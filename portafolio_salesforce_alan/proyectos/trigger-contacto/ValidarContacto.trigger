// Trigger para validar campo obligatorio en Contacto
trigger ValidarContacto on Contact (before insert) {
    for (Contact c : Trigger.new) {
        if (c.LastName == null) {
            c.addError('El campo Apellido es obligatorio.');
        }
    }
}
