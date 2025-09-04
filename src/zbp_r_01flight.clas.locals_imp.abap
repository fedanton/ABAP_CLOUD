CLASS lhc_zr_01flight DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.
    METHODS:
      get_global_authorizations FOR GLOBAL AUTHORIZATION
        IMPORTING
        REQUEST requested_authorizations FOR Flight
        RESULT result,
      validatePrice FOR VALIDATE ON SAVE
        IMPORTING keys FOR Flight~validatePrice.
ENDCLASS.

CLASS lhc_zr_01flight IMPLEMENTATION.
  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD validatePrice.

    DATA:
      failed_record   LIKE LINE OF failed-flight,
      reported_record LIKE LINE OF reported-flight.

    READ ENTITIES OF zr_01flight IN LOCAL MODE ENTITY flight FIELDS ( Price ) WITH CORRESPONDING #( keys ) RESULT DATA(flights).
    LOOP AT flights INTO DATA(flight).
      IF flight-price <= 0.
        failed_record-%tky = flight-%tky.
        APPEND failed_record TO failed-flight.
        reported_record-%tky = flight-%tky.
        reported_record-%msg = new_message( id = 'ZSD400_01_MSG' number = '101' severity = ms-error ).
        APPEND reported_record TO reported-flight.
      ENDIF.
    ENDLOOP.

  ENDMETHOD.

ENDCLASS.
