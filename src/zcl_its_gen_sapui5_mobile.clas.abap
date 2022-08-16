CLASS zcl_its_gen_sapui5_mobile DEFINITION
  PUBLIC
  INHERITING FROM cl_its_generate_html_mobile4
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS constructor.
    METHODS if_its_generate_template~description_text REDEFINITION.

  PROTECTED SECTION.

  PRIVATE SECTION.

ENDCLASS.



CLASS zcl_its_gen_sapui5_mobile IMPLEMENTATION.


  METHOD constructor.

    DATA l_theme TYPE _t_theme_for_templates.

    super->constructor( ).

    REFRESH _themes_for_templates.
    CLEAR _themes_for_templates.

    _html_width_factor_containers = '1.00'.
    _html_width_factor_elements = '0.82'.

    _loop_line_name = 'LOOP_INDEX'.

    l_theme-service = 'ZITSGENSAPUI5'.
    l_theme-theme = '99'.
    INSERT l_theme INTO _themes_for_templates INDEX 1.

  ENDMETHOD.


  METHOD if_its_generate_template~description_text.

    CASE pi_style.
      WHEN 'MOBILE4'.
        pe_description = 'Mobile Geräte (ohne HTML-Tabellen)'(001).
      WHEN 'MOBILE4_IE'.
        pe_description = 'Mobile Geräte (4), ältere Internet Expl.'(003).
      WHEN 'ZMOBSAPUI5'.
        pe_description = 'For Mobile Responsive Design Style (SAPUI5)'(004).
      WHEN 'ZMOBFIORI'.
        pe_description = 'For Mobile Responsive Design Style (Fiori)'(005).
      WHEN OTHERS.
        pe_description = 'Unbekannter Stil'(002).
    ENDCASE.

  ENDMETHOD.


ENDCLASS.
