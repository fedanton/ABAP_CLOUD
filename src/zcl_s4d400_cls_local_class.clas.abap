CLASS zcl_s4d400_cls_local_class DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_S4D400_CLS_LOCAL_CLASS IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.


  DATA connection TYPE REF TO lcl_connection.
  DATA connections TYPE TABLE OF REF TO lcl_connection.

  connection = new #(  ).

  connection->carrier_id = 'LH'.
  connection->connection_id = '0400'.

  APPEND connection TO connections.

  connection = new #(  ).

  connection->carrier_id = 'HH'.
  connection->connection_id = '0300'.

  APPEND connection TO connections.

  connection = new #(  ).

  connection->carrier_id = 'LL'.
  connection->connection_id = '0200'.

  APPEND connection TO connections.

  ENDMETHOD.
ENDCLASS."

