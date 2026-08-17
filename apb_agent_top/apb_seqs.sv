class base_sequence extends uvm_sequence #(apb_xtn);

   `uvm_object_utils(base_sequence)

    apb_xtn req;

   function new(string name="base_sequence");
      super.new(name);
   endfunction

endclass
// cpol-0 cpha-0 (lsb)

class cpol0_cpha0_lsb  extends base_sequence ;

    `uvm_object_utils(cpol0_cpha0_lsb)

     function new(string name="cpol0_cpha0_lsb");
              super.new(name);
     endfunction

    task body();
         req=apb_xtn::type_id::create("req");

    // cr1
    start_item(req);
    assert(req.randomize() with {PADDR==0;PWRITE==1;PWDATA==8'b11110001;});
    req.print();
    finish_item(req);

   //cr2
    start_item(req);
    assert(req.randomize() with {PADDR==1;PWRITE==1;PWDATA==8'b00000000;});
    req.print();
    finish_item(req);

  //br
  start_item(req);
  assert(req.randomize() with {PADDR==2;PWRITE==1;PWDATA==8'b00000001;});
  req.print();
  finish_item(req);

  //dr
  start_item(req);
  assert(req.randomize() with {PADDR==5;PWRITE==1;PWDATA==8'b00000111;});
  req.print();
  finish_item(req);
 endtask
endclass

// cpol-0 cpha-1 (lsb)

class cpol0_cpha1_lsb  extends base_sequence ;

    `uvm_object_utils(cpol0_cpha1_lsb)

     function new(string name="cpol0_cpha1_lsb");
              super.new(name);
     endfunction

    task body();
         req=apb_xtn::type_id::create("req");

    // cr1
    start_item(req);
    assert(req.randomize() with {PADDR==0;PWRITE==1;PWDATA==8'b11110101;});
    req.print();
    finish_item(req);

   //cr2
    start_item(req);
    assert(req.randomize() with {PADDR==1;PWRITE==1;PWDATA==8'b00000000;});
    req.print();
    finish_item(req);

  //br
  start_item(req);
  assert(req.randomize() with {PADDR==2;PWRITE==1;PWDATA==8'b00000001;});
  req.print();
  finish_item(req);

  //dr
  start_item(req);
  assert(req.randomize() with {PADDR==5;PWRITE==1;PWDATA==8'b00000111;});
  req.print();
  finish_item(req);
 endtask
endclass

// cpol-1 cpha-0 (lsb)

class cpol1_cpha0_lsb  extends base_sequence ;

                                                                                       `uvm_object_utils(cpol1_cpha0_lsb)

     function new(string name="cpol1_cpha0_lsb");
              super.new(name);
     endfunction

    task body();
         req=apb_xtn::type_id::create("req");

    // cr1
    start_item(req);
    assert(req.randomize() with {PADDR==0;PWRITE==1;PWDATA==8'b11111001;});
    req.print();
    finish_item(req);

   //cr2
    start_item(req);
    assert(req.randomize() with {PADDR==1;PWRITE==1;PWDATA==8'b00000000;});
    req.print();
    finish_item(req);

  //br
  start_item(req);
  assert(req.randomize() with {PADDR==2;PWRITE==1;PWDATA==8'b00000001;});
  req.print();
  finish_item(req);

  //dr
  start_item(req);
  assert(req.randomize() with {PADDR==5;PWRITE==1;PWDATA==8'b00000111;});
  req.print();
  finish_item(req);
 endtask
endclass

//cpol-1 cpha-1 (lsb)

class cpol1_cpha1_lsb  extends base_sequence ;

    `uvm_object_utils(cpol1_cpha1_lsb)

  function new(string name="cpol1_cpha1_lsb");
              super.new(name);
     endfunction

    task body();
         req=apb_xtn::type_id::create("req");

    // cr1
    start_item(req);
    assert(req.randomize() with {PADDR==0;PWRITE==1;PWDATA==8'b11111101;});
    req.print();
    finish_item(req);

   //cr2
    start_item(req);
    assert(req.randomize() with {PADDR==1;PWRITE==1;PWDATA==8'b00000000;});
    req.print();
    finish_item(req);

  //br
  start_item(req);
  assert(req.randomize() with {PADDR==2;PWRITE==1;PWDATA==8'b00000001;});
  req.print();
  finish_item(req);

  //dr
  start_item(req);
  assert(req.randomize() with {PADDR==5;PWRITE==1;PWDATA==8'b00000111;});
  req.print();
  finish_item(req);
 endtask
endclass

// cpol-0 cpha-0 (msb)

class cpol0_cpha0_msb  extends base_sequence ;

    `uvm_object_utils(cpol0_cpha0_msb)

     function new(string name="cpol0_cpha0_msb");
              super.new(name);
                                                                  endfunction

    task body();
         req=apb_xtn::type_id::create("req");

    // cr1
    start_item(req);
    assert(req.randomize() with {PADDR==0;PWRITE==1;PWDATA==8'b11110000;});
    req.print();
    finish_item(req);

   //cr2
    start_item(req);
    assert(req.randomize() with {PADDR==1;PWRITE==1;PWDATA==8'b00000000;});
    req.print();
    finish_item(req);

  //br
  start_item(req);
  assert(req.randomize() with {PADDR==2;PWRITE==1;PWDATA==8'b00000001;});
  req.print();
  finish_item(req);

  //dr
  start_item(req);
  assert(req.randomize() with {PADDR==5;PWRITE==1;PWDATA==8'b00000111;});
  req.print();
  finish_item(req);
 endtask
endclass

// cpol-0 cpha-1 (msb)

class cpol0_cpha1_msb  extends base_sequence ;

    `uvm_object_utils(cpol0_cpha1_msb)

     function new(string name="cpol0_cpha1_msb");
              super.new(name);
     endfunction

                                                                      task body();
         req=apb_xtn::type_id::create("req");

    // cr1
    start_item(req);
    assert(req.randomize() with {PADDR==0;PWRITE==1;PWDATA==8'b11110100;});
    req.print();
    finish_item(req);

   //cr2
    start_item(req);
    assert(req.randomize() with {PADDR==1;PWRITE==1;PWDATA==8'b00000000;});
    req.print();
    finish_item(req);

  //br
  start_item(req);
  assert(req.randomize() with {PADDR==2;PWRITE==1;PWDATA==8'b00000001;});
  req.print();
  finish_item(req);

  //dr
  start_item(req);
  assert(req.randomize() with {PADDR==5;PWRITE==1;PWDATA==8'b00000111;});
  req.print();
  finish_item(req);
 endtask
endclass

// cpol-1 cpha-0 (msb)

class cpol1_cpha0_msb  extends base_sequence ;

    `uvm_object_utils(cpol1_cpha0_msb)

     function new(string name="cpol1_cpha0_msb");
              super.new(name);
     endfunction

    task body();
         req=apb_xtn::type_id::create("req");
                                                                             // cr1
    start_item(req);
    assert(req.randomize() with {PADDR==0;PWRITE==1;PWDATA==8'b11111000;});
    req.print();
    finish_item(req);

   //cr2
    start_item(req);
    assert(req.randomize() with {PADDR==1;PWRITE==1;PWDATA==8'b00000000;});
    req.print();
    finish_item(req);

  //br
  start_item(req);
  assert(req.randomize() with {PADDR==2;PWRITE==1;PWDATA==8'b00000001;});
  req.print();
  finish_item(req);

  //dr
  start_item(req);
  assert(req.randomize() with {PADDR==5;PWRITE==1;PWDATA==8'b00000111;});
  req.print();
  finish_item(req);
 endtask
endclass

//cpol-1 cpha-1 (msb)

class cpol1_cpha1_msb  extends base_sequence ;

    `uvm_object_utils(cpol1_cpha1_msb)

     function new(string name="cpol1_cpha1_msb");
              super.new(name);
     endfunction

    task body();
         req=apb_xtn::type_id::create("req");

    // cr1
    start_item(req);
                                                                    assert(req.randomize() with {PADDR==0;PWRITE==1;PWDATA==8'b11111100;});
    req.print();
    finish_item(req);

   //cr2
    start_item(req);
    assert(req.randomize() with {PADDR==1;PWRITE==1;PWDATA==8'b00000000;});
    req.print();
    finish_item(req);

  //br
  start_item(req);
  assert(req.randomize() with {PADDR==2;PWRITE==1;PWDATA==8'b00000001;});
  req.print();
  finish_item(req);

  //dr
  start_item(req);
  assert(req.randomize() with {PADDR==5;PWRITE==1;PWDATA==8'b00000111;});
  req.print();
  finish_item(req);
 endtask
endclass

//low_power_conservation mode

class low_po_cons  extends base_sequence ;

    `uvm_object_utils(low_po_cons)

     function new(string name="low_po_cons");
              super.new(name);
     endfunction

    task body();
         req=apb_xtn::type_id::create("req");

    // cr1
    start_item(req);
    assert(req.randomize() with {PADDR==0;PWRITE==1;PWDATA==8'b11110001;});
    req.print();
                                                                                        finish_item(req);

   //cr2
    start_item(req);
    assert(req.randomize() with {PADDR==1;PWRITE==1;PWDATA==8'b00000010;});
    req.print();
    finish_item(req);

  //br
  start_item(req);
  assert(req.randomize() with {PADDR==2;PWRITE==1;PWDATA==8'b00000001;});
  req.print();
  finish_item(req);

  //sr
  start_item(req);
  assert(req.randomize() with {PADDR==3;PWRITE==0;});
  req.print();
  finish_item(req);
  //dr
  start_item(req);
  assert(req.randomize() with {PADDR==5;PWRITE==1;PWDATA==8'b00000111;});
  req.print();
  finish_item(req);
 endtask
endclass



