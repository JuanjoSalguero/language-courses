trigger LanguageCourseTrigger on Language_Course__c (after insert, after update, after delete) {

    if (trigger.isInsert){
        EmailManager.sendMail('joseromerodev@gmail.com', 'Mensaje para Ella', 'Bienvenida');
    } else if (trigger.isUpdate){
        EmailManager.sendMail('joseromerodev@gmail.com', 'Mensaje para Ella', 'Cambios realizados');
    } else if (trigger.isDelete){
        EmailManager.sendMail('joseromerodev@gmail.com', 'Mensaje para Ella', 'Eliminación');
    }
}