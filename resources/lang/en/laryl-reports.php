<?php

return [

	/*
	|--------------------------------------------------------------------------
	| Laryl Blade EN lines
	|--------------------------------------------------------------------------
	*/

	'create-new'	=> 'New Invoice',

	'heading' => [
		'list'		=> 'Sales Report',
		'new'		=> 'New Invoice',
		'show'	    => 'Invoice :invoice',
		'edit'   	=> 'Editing Invoice <span class="d-none d-sm-inline">:invoice</span>',
	],

	'table' => [
		'#'					=> 'Sr.No.',
		'date'				=> 'Date',
		'billNo'			=> 'Bill No.',
		'qty'				=> 'Qty',
		'weight'			=> 'Weight',
		'rate'				=> 'Rate',
		'amount'			=> 'Amount',
		'total'	            => 'Total',
		'pending'			=> 'Pending',
		'paid'				=> 'Paid',
		'remaining'			=> 'Remaining Due',
	],

	'form' => [
		'label' => [
			'startDate'			=> 'Start Date',
			'endDate'			=> 'End Date',
		]
	],

	'buttons' => [
		'create-new'    	=> '<span class="hidden-xs hidden-sm">New Invoice</span>',
		'back-to-invoices'	=> '<i class="fa fa-angle-double-left"></i>&emsp;Back <span class="d-none d-sm-inline">to Invoices List</span>',
		'back-to-invoice'	=> '<i class="fa fa-angle-double-left"></i>&emsp;Back <span class="d-none d-sm-inline">to Invoice</span>',
		'view-report'		=> '<i class="fa fa-save"></i>&emsp;<span>View Reports</span>',
		'update-invoice'	=> '<i class="fa fa-save"></i>&emsp;<span>Update Invoice</span>',
	],
];
