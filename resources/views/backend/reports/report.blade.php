@extends('layouts.backend')
@section('content')
<section>
	<div class="container-fluid">
		<div class="row">
			<div class="col-12">
				<div class="card">
					<div class="card-header d-flex align-items-center">
						<div class="col-6">
							<h3 class="h4">@lang('laryl-reports.heading.list')</h3>
						</div>
					</div>
					<div class="card-body">
						<div class="container">
							<div class="row">
								<div class="col-md-12 mx-auto">

									<form id="viewReportForm" method="POST" action="{{ route('Reports.report.index') }}">
										@csrf
										<div class="row form-group ">
											<div class="col-md-3 text-md-right align-self-center">
												<label for="startDate" class="col-md-12 col-form-label">@lang('laryl-reports.form.label.startDate')</label>
											</div>
											<div class="col-md-3">
												<div id="date" data-name="startDate" class="bfh-datepicker" data-input="form-control" data-min="01-01-2000" data-max="today"  data-format="y-m-d" data-date="today">
												</div>
											</div>

											@if ($errors->has('startDate'))
		                                        <span class="col-md-6 offset-md-3 form-error-message">
		                                            <small for="startDate">{{ $errors->first('startDate') }}</small>
		                                        </span>
											@endif
										</div>
										<div class="row form-group ">
											<div class="col-md-3 text-md-right align-self-center">
												<label for="endDate" class="col-md-12 col-form-label">@lang('laryl-reports.form.label.endDate')</label>
											</div>
											<div class="col-md-3">
												<div id="date" data-name="endDate" class="bfh-datepicker" data-input="form-control" data-min="01-01-2000" data-max="today"  data-format="y-m-d" data-date="today">
												</div>
											</div>

											@if ($errors->has('endDate'))
		                                        <span class="col-md-6 offset-md-3 form-error-message">
		                                            <small for="endDate">{{ $errors->first('endDate') }}</small>
		                                        </span>
											@endif
										</div>
										<div class="row form-group ">
											<div class="col-sm-12 offset-md-3">
												<button type="submit" class="btn btn-success btn-sm  ml-auto">
													@lang('laryl-reports.buttons.view-report')
												</button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>

						@if(isset($invoiceList))
						<div class="table-responsive" >
							<table class="table" id="transTable">
								<thead>
									<tr>
										<th> @lang('laryl-reports.table.#') </th>
										<th> @lang('laryl-reports.table.date') </th>
										<th> @lang('laryl-reports.table.billNo') </th>
										<th> @lang('laryl-reports.table.qty') </th>
										<th> @lang('laryl-reports.table.weight') </th>
										<th> @lang('laryl-reports.table.rate') </th>
										<th> @lang('laryl-reports.table.amount') </th>
										<th> @lang('laryl-reports.table.pending') </th>
										<th> @lang('laryl-reports.table.total') </th>
										<th> @lang('laryl-reports.table.paid') </th>
										<th> @lang('laryl-reports.table.remaining') </th>
									</tr>
								</thead>
								<tbody>
									@php
										$invoice_array = $invoiceList->toArray();
										$i = 0;
									@endphp

									@if(count($invoiceList) > 0)
										@foreach($invoiceList as $invoice)
										<tr>
											<td> {{$i}} </td>
											<td> {{date('d/m/Y', strtotime($invoice['issueDate']))}}</td>
											<td> {{$invoice['serialPrefix']}}{{$invoice['serialNumber']}}</td>
											<td>  </td>
											<td>  </td>
											<td>  </td>
											<td> {{$invoice['grandValue']}} </td>
											<td> {{$invoice['pendingBalance']}} </td>
											<td> {{$invoice['grandValue']+$invoice['pendingBalance']}}</td>
											<td> @lang('laryl-reports.table.paid') </td>
											<td> @lang('laryl-reports.table.remaining') </td>
										</tr>
										@php $i++; @endphp											
										@endforeach										
									@else 										
										<tr class="text-center">
											<td colspan="7">@lang('laryl.messages.no-records')</td>
										</tr>
									@endif									
								</tbody>
							</table>
							{{-- table responsive --}}
						</div> 
						@endif
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
@endsection
@section('footer')
<script type="text/javascript">
	$(document).ready(function() {
		$('#transTable').DataTable( {
			dom: 'Bfrtip',
			buttons: [
			'copyHtml5',
			'excelHtml5',
			'csvHtml5',
			'pdfHtml5'
			]
		} );
		/*$('#transTable').DataTable({
			initComplete: function () {
				this.api().columns().every( function () {
					var column = this;
					var select = $('<select><option value=""></option></select>')
					.appendTo( $(column.footer()).empty() )
					.on( 'change', function () {
						var val = $.fn.dataTable.util.escapeRegex(
							$(this).val()
							);
						
						column
						.search( val ? '^'+val+'$' : '', true, false )
						.draw();
					} );
					
					column.data().unique().sort().each( function ( d, j ) {
						select.append( '<option value="'+d+'">'+d+'</option>' )
					} );
				} );
			}
		});*/
	} );
</script>
@endsection