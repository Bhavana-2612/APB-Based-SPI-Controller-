class apb_xtn extends uvm_sequence_item;

   `uvm_object_utils(apb_xtn)

   bit PRESETn;
rand    bit PWRITE;
   bit PSEL;
   bit PENABLE;
   bit PREADY;
   bit PSLVERR;
rand  bit [7:0] PWDATA;
rand   bit [2:0] PADDR;
   bit [7:0] PRDATA;

   // Constraints
   constraint valid_address{if(!PWRITE)
                                PADDR inside {[0:3],5};
                             else
                                PADDR inside {[0:2],5};}

   constraint valid_reset { PRESETn dist {0:=1, 1:=99};}

   function new(string name="apb_xtn");
      super.new(name);
   endfunction

   // do_print

   function void do_print(uvm_printer printer);

      super.do_print(printer);

      printer.print_field("PRESETn",this. PRESETn, 1, UVM_BIN);
      printer.print_field("PWRITE" , this.PWRITE , 1, UVM_BIN);
      printer.print_field("PSEL"   , this.PSEL   , 1, UVM_BIN);
      printer.print_field("PENABLE", this.PENABLE, 1, UVM_BIN);
      printer.print_field("PREADY" , this.PREADY , 1, UVM_BIN);
      printer.print_field("PSLVERR", this.PSLVERR, 1, UVM_BIN);

      printer.print_field("PADDR" ,this.PADDR , 3, UVM_BIN);
      printer.print_field("PWDATA", this.PWDATA, 8, UVM_BIN);
  printer.print_field("PRDATA", this.PRDATA, 8, UVM_BIN);

   endfunction

endclass
             
