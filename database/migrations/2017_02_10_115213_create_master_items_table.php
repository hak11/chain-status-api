<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMasterItemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        // Schema::create('master_items', function (Blueprint $table) {
        //     $table->increments('id');
        //     $table->timestamps();
        // });
        Schema::create('master_items',function (Blueprint $table){

        $table->String('item_number')->primary();;

        $table->String('desc1');

        $table->String('desc2');

        $table->String('um');

        $table->integer('prod_line');

        $table->String('item_type');

        $table->String('group');

        $table->String('customer_group');

        $table->String('status');

        $table->String('location');

        $table->String('lot_serial');

        $table->String('purchase_manufacture');

        $table->float('net_weight');

        $table->String('order_policy');

        $table->integer('order_quantity');

        $table->integer('order_periode');

        $table->integer('safety_stock');

        $table->integer('purchase_lead_time');

        $table->integer('manufacturing_lead_time');

        $table->float('yield_precent');

        $table->float('gl_cost');

        /**
         * Foreignkeys section
         */


        $table->timestamps();


        $table->softDeletes();

        // type your addition here

        });

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('master_items');
    }
}
