@extends('layouts.emails')

@section('title', trans('leads.handshake_title', ['civility_name' => $civility_name]))

@section('content')
	<table bgcolor="#cdcdc8" align="center" width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td align="center">
				<table class="table600" width="600" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#ffffff">
					<tr>
						<td height="40"></td>
					</tr>
					<tr>
						<td align="center">
							<table width="520" border="0" align="center" cellpadding="0" cellspacing="0" class="table-inner">
								<tr>
									<td align="left" style="font-family: 'Open Sans', Arial, sans-serif; font-size:18px; color:#34495e; font-weight:bold;">{{ $civility_name }}</td>
								</tr>
								<tr>
									<td height="15" align="center" style="border-bottom:1px dotted #bdc3c7;"></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<table bgcolor="#cdcdc8" align="center" width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td align="center">
				<table class="table600" width="600" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#ffffff">
					<tr>
						<td height="40"></td>
					</tr>
					<tr>
						<td align="center">
							<table width="520" border="0" align="center" cellpadding="0" cellspacing="0" class="table-inner">
								<tr>
									<td align="left"  style="font-family: 'Open Sans', Arial, sans-serif; font-size:13px; color:#999999; line-height:20px;">
										<p>{!! trans('leads.handshake_body_header') !!}</p>
										<div>{!! $body !!}</div>
										<br/>
										<p>{!! trans('leads.handshake_body_footer') !!}</p>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
@endsection
