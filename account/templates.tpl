<script type="text/html" class="section-account-home">

	<div class="wraper container-fluid">
		<div class="page-title">
			{{^is_loading}}


			<div class="btn-group dropdown pull-right">
				<button type="button" class="btn btn-default">{{report.startDate}} - {{report.endDate}}</button>
				<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="caret"></i></button>
				<ul class="dropdown-menu" role="menu">
					<li><a class="reports-change" interval="last_week" >Last Week</a></li>
					<li><a class="reports-change" interval="last_2weeks" >Last Two Weeks</a></li>
					<li class="divider"></li>
					<li><a class="reports-change" interval="last_month" >Last Month</a></li>
					<li><a class="reports-change" interval="last_3months" >Last Three Months</a></li>
					<li><a class="reports-change" interval="last_6months" >Last Six Months</a></li>
					<li class="divider"></li>
					<li><a class="reports-change" interval="last_year" >Last Year</a></li>
				</ul>
			</div>
			{{/is_loading}}
			<h3 class="title">
				{{^is_loading}}&nbsp;{{/is_loading}}
				{{#is_loading}} <i class="fa fa-spinner fa-pulse fa-fw"></i> Loading ..... {{/is_loading}}
			</h3>
		</div>



		{{^is_loading}}
		 <div class="row text-center">
			 <div class="col-sm-6 col-md-4">
				 <div class="panel">
					 <div class="h2 text-purple">{{report.stats.contactsAdded}}</div>
					 <span class="text-muted">Contacts added</span>
				 </div>
			 </div>

			 <div class="col-sm-6 col-md-4">
				 <div class="panel bg-purple">
					 <div class="h2 text-white">{{report.stats.contacted}}</div>
					 <span class="text-white">Contacted</span>
				 </div>
			 </div>


			 <div class="col-sm-6 col-md-4">
				 <div class="panel bg-primary">
					 <div class="h2 text-white">{{report.stats.deliveries}}</div>
					 <span class="text-white">Deliveries</span>
				 </div>
			 </div>

			 <div class="col-sm-6 col-md-4">
				 <div class="panel bg-success">
					 <div class="h2 text-white">{{report.stats.opened}} ( {{report.stats.openedPerc}}% )</div>
					 <span class="text-white">Opens</span>
				 </div>
			 </div>

			 <div class="col-sm-6 col-md-4">
				 <div class="panel bg-warning">
					 <div class="h2 text-white">{{reports.stats.replied}} ( {{report.stats.repliedPerc}}% )</div>
					 <span class="text-white">Replies</span>
				 </div>
			 </div>

			 <!--
			 <div class="col-sm-6 col-md-3">
				 <div class="panel bg-info">
					 <div class="h2 text-white">{{report.stats.optedOut}} ( {{report.stats.optedOutPerc}}% )</div>
					 <span class="text-white">Opt-Outs</span>
				 </div>
			 </div>

			 <div class="col-sm-6 col-md-3">
				 <div class="panel bg-success">
					 <div class="h2 text-white">{{report.stats.bounced}} ( {{report.stats.bouncedPerc}}% )</div>
					 <span class="text-white">Bounces</span>
				 </div>
			 </div>
		 	-->
			<div class="col-sm-6 col-md-4">
				<div class="panel bg-pink">
				      <div class="h2 text-white">{{report.stats.hotleads}}</div>
				      <span class="text-white">Hot Leads</span>
				</div>
			</div>
		 </div> <!-- End row -->















		<div class="row">


			<div class="col-lg-12">
				<div class="portlet">
					<div class="portlet-heading">

						<div class="portlet-widgets">
							<a href="javascript:;" data-toggle="reload"><i class="ion-refresh"></i></a>
							<span class="divider"></span>
							<a data-toggle="collapse" data-parent="#accordion1" href="#portlet2"><i class="ion-minus-round"></i></a>
							<span class="divider"></span>
							<a href="#" data-toggle="remove"><i class="ion-close-round"></i></a>
						</div>
						<div class="clearfix"></div>
					</div>
					<div id="portlet2" class="panel-collapse collapse in">
						<div class="portlet-body">
							<div id="morris-area-example" style="height: 320px;"></div>
						</div>
					</div>
				</div>

			</div>

		</div>

		<div class="row">
			<div class="col-lg-12">

				<div class="portlet">
					<div class="portlet-heading">
						<h3 class="portlet-title text-dark text-uppercase">
							CAMPAIGNS
						</h3>
						<div class="portlet-widgets">
							<a href="javascript:;" data-toggle="reload"><i class="ion-refresh"></i></a>
							<span class="divider"></span>
							<a data-toggle="collapse" data-parent="#accordion1" href="#portlet2"><i class="ion-minus-round"></i></a>
							<span class="divider"></span>
							<a href="#" data-toggle="remove"><i class="ion-close-round"></i></a>
						</div>
						<div class="clearfix"></div>
					</div>
					<div id="portlet2" class="panel-collapse collapse in">
						<div class="portlet-body">
							<div class="table-responsive">
								<table class="table">
									<thead>
										<tr>
											<th>TITLE</th>
											<th>DELIVERIES</th>
											<th>CONTACTED</th>

											<th>OPENS</th>
											<th>REPLIES</th>
										</tr>
									</thead>
									<!-- label-info label-success label-pink label-purple label-warning label-primary -->
									<tbody>
										{{#campaigns}}
										<tr>
											<td>{{name}}</td>
											<td>{{deliveries}}</td>
											<td>{{contacted}}</td>

											<td>{{openedPerc}}% ({{opened}})</td>
											<td>{{repliedPerc}}% ({{replied}})</td>
										</tr>
										{{/campaigns}}
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">

				<div class="portlet">
					<div class="portlet-heading">
						<h3 class="portlet-title text-dark text-uppercase">
							TEMPLATES
						</h3>
						<div class="portlet-widgets">
							<a href="javascript:;" data-toggle="reload"><i class="ion-refresh"></i></a>
							<span class="divider"></span>
							<a data-toggle="collapse" data-parent="#accordion1" href="#portlet2"><i class="ion-minus-round"></i></a>
							<span class="divider"></span>
							<a href="#" data-toggle="remove"><i class="ion-close-round"></i></a>
						</div>
						<div class="clearfix"></div>
					</div>
					<div id="portlet2" class="panel-collapse collapse in">
						<div class="portlet-body">
							<div class="table-responsive">
								<table class="table">
									<thead>
										<tr>
											<th>NAME / CAMPAIGN</th>
											<th>SUBJ / BODY</th>
											<th>DELIVERIES</th>
											<th>OPENS</th>
											<th>REPLIES</th>
										</tr>
									</thead>
									<!-- label-info label-success label-pink label-purple label-warning label-primary -->
									<tbody>
										{{#templates}}
										<tr>
											<td>{{title}}</td>
											<td>{{snippet}}</td>
											<td>{{deliveries}}</td>
											<td>{{openedPerc}}% ({{opened}})</td>
											<td>{{repliedPerc}}% ({{replied}})</td>
										</tr>
										{{/templates}}
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		{{/is_loading}}
	</div>






















	<div class="row reports-page" style="margin: 50px;">
	    <div class="row page-top">
			<!--
	        <div class="toppanel" ng-class="sidebar() ? 'toppanel-fx-exp' : ''">
	            <div class="col-xs-8 toppanel-leftside">
	                <span style="line-height: 35px;" ng-show="stats">
	                    <span ng-if="memberName && memberName.length">{{!::lang.REPORTS}}&nbsp;/&nbsp;{{memberName}}</span>
	                </span>
	            </div>
	            <div class="col-xs-4 toppanel-rightside">
	                <div class="btn-group pull-right nowrap" role="group" ng-if="stats">
	                    <div class="chart-control-panel">
	                        <div class="dropdown pull-right chart-range-dropdown">
	                            <a href="javascript:;" dropdown-toggle id="dropdownMenu1" data-toggle="dropdown">
	                                <i class="glyphicon glyphicon-time"></i>
	                            </a>

	                            <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
	                                <li role="presentation">
	                                    <a href="javascript:;" ng-click="changeRange(1, true)">{{!::lang.REPORTS_DATES_DAY}}</a>
	                                </li>
	                                <li role="presentation">
	                                    <a href="javascript:;" ng-click="changeRange(6)">{{!::lang.REPORTS_DATES_WEEK}}</a>
	                                </li>
	                                <li role="presentation">
	                                    <a href="javascript:;" ng-click="changeRange(13)">{{!::lang.REPORTS_DATES_TWO_WEEKS}}</a>
	                                </li>

	                                <li role="presentation" class="divider"></li>

	                                <li role="presentation">
	                                    <a href="javascript:;" ng-click="changeRange(29)">{{!::lang.REPORTS_DATES_MONTH}}</a>
	                                </li>
	                                <li role="presentation">
	                                    <a href="javascript:;" ng-click="changeRange(89)">{{!::lang.REPORTS_DATES_THREE_MONTHS}}</a>
	                                </li>
	                                <li role="presentation">
	                                    <a href="javascript:;" ng-click="changeRange(179)">{{!::lang.REPORTS_DATES_SIX_MONTHS}}</a>
	                                </li>

	                                <li role="presentation" class="divider"></li>

	                                <li role="presentation">
	                                    <a href="javascript:;" ng-click="changeRange(364)">{{!::lang.REPORTS_DATES_YEAR}}</a>
	                                </li>
	                                <li role="presentation">
	                                    <a href="javascript:;" ng-click="setAllTimeRange()">{{!::lang.REPORTS_DATES_ALL_TIME}}</a>
	                                </li>
	                                <li role="presentation">
	                                    <a href="javascript:;" ng-click="showPickersForm()">{{!::lang.COMMON_DATES_CUSTOM}}</a>
	                                </li>
	                            </ul>
	                        </div>

	                        <div ng-show="!isPickersFormVisible" style="margin-right: 33px">
	                            <span style="line-height: 33px;">{{startDate}} - {{endDate}}</span>
	                        </div>
	                        <form class="calendar-form pull-right" ng-show="isPickersFormVisible" style="width: 500px; margin-top: -29px;">
	                            <div class="input-group datepicker-conrainer pull-left" style="margin-left: 30px;">
	                                <input type="text" class="form-control dt-picker-input" datepicker-popup="dd/MM/yyyy" ng-change="changeDate()" ng-model="$parent.startDate" is-open="$parent.openedStart" datepicker-options="dateOptions" show-button-bar="false" init-date="$parent.startDate" ng-disabled="true" />
	                                <span class="input-group-btn">
	                                    <button type="button" class="btn btn-default calendar-btn" ng-click="openStart($event)"><i class="glyphicon glyphicon-calendar"></i></button>
	                                </span>
	                            </div>

	                            <div class="pull-left" style="margin: 0 20px;">
	                                <span style="line-height: 35px">-</span>
	                            </div>

	                            <div class="input-group datepicker-conrainer pull-left">
	                                <input type="text" class="form-control dt-picker-input" datepicker-popup="dd/MM/yyyy" ng-change="changeDate()" ng-model="$parent.endDate" is-open="$parent.openedEnd" datepicker-options="dateOptions" show-button-bar="false" init-date="$parent.endDate" min-date="$parent.startDate" ng-disabled="true" />
	                                <span class="input-group-btn">
	                                    <button type="button" class="btn btn-default calendar-btn" ng-click="openEnd($event)"><i class="glyphicon glyphicon-calendar"></i></button>
	                                </span>
	                            </div>
	                        </form>
	                    </div>
	                </div>
	            </div>
	        </div>
			-->


	        <div>
	            <div ng-if="stats">


	                <div class="row">
	                    <div google-chart chart="chart" class="google-chart" />
	                </div>
	            </div>

	            <div class="wrapper">
					<!-- detailed with link
	                <div class="gl-users" ng-if="membersDataIncluded && details.users.length">
	                    <div class="section-title">CAMPAIGNS</div>
	                    <div class="row">
	                        <div class="col-xs-12">
	                            <table class="data-table" style="width: 95%;">
	                                <thead>
	                                    <tr>
	                                        <td>
	                                            <div class="sorting-header">
													TITLE
	                                            </div>
	                                        </td>
	                                        <td>
	                                            <div class="sorting-header text-right">
													DELIVERIES
	                                            </div>
	                                        </td>
	                                        <td>
	                                            <div class="sorting-header text-right">
													CONTACTED
	                                            </div>
	                                        </td>
	                                        <td>
	                                            <div class="sorting-header text-right">
													OPENS
	                                            </div>
	                                        </td>
	                                        <td>
	                                            <div class="sorting-header text-right">
	                                                REPLIES
	                                            </div>
	                                        </td>
	                                    </tr>
	                                </thead>
	                                <tbody>
	                                    <tr ng-repeat="u in ::details.users">
	                                        <td>
	                                            <a href="#/reports/member/{{u.memberId}}">{{u.name}}</a>
	                                        </td>
	                                        <td class="text-right">
	                                            {{u.deliveries}}
	                                        </td>
	                                        <td class="text-right">
	                                            {{u.contacted}}
	                                        </td>
	                                        <td class="text-right">
	                                            {{u.openedPerc}}% ({{u.opened}})
	                                        </td>
	                                        <td class="text-right">
	                                            {{u.repliedPerc}}% ({{u.replied}})
	                                        </td>
	                                    </tr>
	                                </tbody>
	                            </table>
	                        </div>
	                    </div>
	                </div>
					-->




	            </div>
	        </div>



	        <div ng-show="isDetailsLoadingVisible" class="loader-div" style="margin-top: 30px;"></div>
	    </div>
	</div>


</script>

<script type="text/html" class="section-account-scheduled">

	<div class="wraper container-fluid">
		<div class="page-title">
			<h3 class="title">
				{{^is_loading}}&nbsp;{{/is_loading}}
				{{#is_loading}} <i class="fa fa-spinner fa-pulse fa-fw"></i> Loading ... {{/is_loading}}
			</h3>
		</div>



		{{^is_loading}}
		<div class="row">
			<div class="col-lg-12">

				<div class="portlet">
					<div class="portlet-heading">
						<h3 class="portlet-title text-dark text-uppercase">
							CAMPAIGNS
						</h3>
						<div class="portlet-widgets">
							<a href="javascript:;" data-toggle="reload"><i class="ion-refresh"></i></a>
							<span class="divider"></span>
							<a data-toggle="collapse" data-parent="#accordion1" href="#portlet2"><i class="ion-minus-round"></i></a>
							<span class="divider"></span>
							<a href="#" data-toggle="remove"><i class="ion-close-round"></i></a>
						</div>
						<div class="clearfix"></div>
					</div>
					<div id="portlet2" class="panel-collapse collapse in">
						<div class="portlet-body">
							<div class="table-responsive">
								<table class="table">
									<thead>
										<tr>
											<th>CAMPAIGN</th>
											<th>EMAILS TO BE SENT</th>
											<th>STEP #1</th>
											<th>STEP #2</th>
											<th>STEP #3</th>
											<th>STEP #4</th>
											<th>STEP #5</th>
											<th>STEP #6</th>
											<th>STEP #7</th>
											<th>STEP #8</th>
										</tr>
									</thead>
									<!-- label-info label-success label-pink label-purple label-warning label-primary -->
									<tbody>
										{{#scheduled}}
										<tr>
											<td>{{name}}</td>
											<td>{{emailsCount}}</td>
											{{#steps}}
											<td>{{emailsCount}}</td>
											{{/steps}}

										</tr>
										{{/scheduled}}
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		{{/is_loading}}
	</div>



</script>

<script type="text/html" class="section-account-top">
	<aside class="left-panel">
		<div class="logo">
			<a href="/" class="logo-expanded">

				<span class="nav-label"><img src="https://bant.io/images/logo-bant2.png"></span>
			</a>
		</div>
		<nav class="navigation">
			<ul class="list-unstyled">
				<li class="menu-item menu-reports"   ><a href="/account/"><i class="fa fa-bar-chart"></i> <span class="nav-label">Reports</span></a></li>
				<li class="menu-item menu-scheduled" ><a href="scheduled"><i class="fa fa-clock-o"></i> <span class="nav-label">Scheduled</span></a></li>
				<li ><a href="https://bant.io/contact.html" target="_blank"><i class="fa fa-question-circle-o"></i> <span class="nav-label">Support</span></a></li>
				<li ><a class="link-logout"><i class="fa fa-sign-out"></i> <span class="nav-label">Log out</span></a></li>

				<!--
				<li class="active"><a href="index.html"><i class="ion-home"></i> <span class="nav-label">Dashboard</span></a></li>
				<li class="has-submenu"><a href="#"><i class="ion-flask"></i> <span class="nav-label">UI Elements</span></a>
					<ul class="list-unstyled">
						<li><a href="typography.html">Typography</a></li>
						<li><a href="buttons.html">Buttons</a></li>
						<li><a href="icons.html">Icons</a></li>
						<li><a href="panels.html">Panels</a></li>
						<li><a href="tabs-accordions.html">Tabs &amp; Accordions</a></li>
						<li><a href="modals.html">Modals</a></li>
						<li><a href="bootstrap-ui.html">BS Elements</a></li>
						<li><a href="progressbars.html">Progress Bars</a></li>
						<li><a href="notification.html">Notification</a></li>
						<li><a href="sweet-alert.html">Sweet-Alert</a></li>
					</ul>
				</li>
				<li class="has-submenu"><a href="#"><i class="ion-settings"></i> <span class="nav-label">Components</span><span class="badge bg-success">New</span></a>
					<ul class="list-unstyled">
						<li><a href="grid.html">Grid</a></li>
						<li><a href="portlets.html">Portlets</a></li>
						<li><a href="widgets.html">Widgets</a></li>
						<li><a href="nestable-list.html">Nesteble</a></li>
						<li><a href="calendar.html">Calendar</a></li>
						<li><a href="ui-sliders.html">Range Slider</a></li>
					</ul>
				</li>
				<li class="has-submenu"><a href="#"><i class="ion-compose"></i> <span class="nav-label">Forms</span></a>
					<ul class="list-unstyled">
						<li><a href="form-elements.html">General Elements</a></li>
						<li><a href="form-validation.html">Form Validation</a></li>
						<li><a href="form-advanced.html">Advanced Form</a></li>
						<li><a href="form-wizard.html">Form Wizard</a></li>
						<li><a href="form-editor.html">WYSIWYG Editor</a></li>
						<li><a href="code-editor.html">Code Editors</a></li>
						<li><a href="form-uploads.html">Multiple File Upload</a></li>
						<li><a href="image-crop.html">Image Crop</a></li>
						<li><a href="form-xeditable.html">X-Editable</a></li>
					</ul>
				</li>
				<li class="has-submenu"><a href="#"><i class="ion-grid"></i> <span class="nav-label">Data Tables</span></a>
					<ul class="list-unstyled">
						<li><a href="tables.html">Basic Tables</a></li>
						<li><a href="table-datatable.html">Data Table</a></li>
						<li><a href="tables-editable.html">Editable Table</a></li>
						<li><a href="responsive-table.html">Responsive Table</a></li>
					</ul>
				</li>
				<li class="has-submenu"><a href="#"><i class="ion-stats-bars"></i> <span class="nav-label">Charts</span><span class="badge bg-purple">1</span></a>
					<ul class="list-unstyled">
						<li><a href="morris-chart.html">Morris Chart</a></li>
						<li><a href="chartjs.html">Chartjs</a></li>
						<li><a href="flot-chart.html">Flot Chart</a></li>
						<li><a href="rickshaw-chart.html">Rickshaw Chart</a></li>
						<li><a href="peity-chart.html">Peity Chart</a></li>
						<li><a href="c3-chart.html">C3 Chart</a></li>
						<li><a href="other-chart.html">Other Chart</a></li>
					</ul>
				</li>

				<li class="has-submenu"><a href="#"><i class="ion-email"></i> <span class="nav-label">Mail</span></a>
					<ul class="list-unstyled">
						<li><a href="inbox.html">Inbox</a></li>
						<li><a href="email-compose.html">Compose Mail</a></li>
						<li><a href="email-read.html">View Mail</a></li>
						<li><a href="email-templates.html">Email Templates</a></li>
					</ul>
				</li>

				<li class="has-submenu"><a href="#"><i class="ion-location"></i> <span class="nav-label">Maps</span></a>
					<ul class="list-unstyled">
						<li><a href="gmap.html"> Google Map</a></li>
						<li><a href="vector-map.html"> Vector Map</a></li>
					</ul>
				</li>
				<li class="has-submenu"><a href="#"><i class="ion-document"></i> <span class="nav-label">Pages</span><span class="badge bg-pink">5</span></a>
					<ul class="list-unstyled">
						<li><a href="profile.html">Profile</a></li>
						<li><a href="timeline.html">Timeline</a></li>
						<li><a href="invoice.html">Invoice</a></li>
						<li><a href="contact.html">Contact-list</a></li>
						<li><a href="login.html">Login</a></li>
						<li><a href="register.html">Register</a></li>
						<li><a href="recoverpw.html">Recover Password</a></li>
						<li><a href="lock-screen.html">Lock Screen</a></li>
						<li><a href="blank.html">Blank Page</a></li>
						<li><a href="404.html">404 Error</a></li>
						<li><a href="404_alt.html">404 alt</a></li>
						<li><a href="500.html">500 Error</a></li>
					</ul>
				</li>
				-->
			</ul>
		</nav>
	</aside>






	<section class="content">
		<header class="top-head container-fluid">
			<!--
			<button type="button" class="navbar-toggle pull-left">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			-->
			<!--
			<form role="search" class="navbar-left app-search pull-left hidden-xs">
			  <input type="text" placeholder="Search..." class="form-control">
			  <a href=""><i class="fa fa-search"></i></a>
			</form>
			-->

			<!--
			<nav class=" navbar-default hidden-xs" role="navigation">
				<ul class="nav navbar-nav">
					<li class="dropdown">
					  <a data-toggle="dropdown" class="dropdown-toggle" href="#">English <span class="caret"></span></a>
						<ul role="menu" class="dropdown-menu">
							<li><a href="#">German</a></li>
							<li><a href="#">French</a></li>
							<li><a href="#">Italian</a></li>
							<li><a href="#">Spanish</a></li>
						</ul>
					</li>
					<li><a href="#">Files</a></li>
				</ul>
			</nav>
			-->

			<ul class="list-inline navbar-right top-menu top-right-menu">

				<!--
				<li class="dropdown">
					<a data-toggle="dropdown" class="dropdown-toggle" href="#">
						<i class="fa fa-envelope-o "></i>
						<span class="badge badge-sm up bg-purple count">4</span>
					</a>
					<ul class="dropdown-menu extended fadeInUp animated nicescroll" tabindex="5001">
						<li>
							<p>Messages</p>
						</li>
						<li>
							<a href="#">
								<span class="pull-left"><img src="img/avatar-2.jpg" class="img-circle thumb-sm m-r-15" alt="img"></span>
								<span class="block"><strong>John smith</strong></span>
								<span class="media-body block">New tasks needs to be done<br><small class="text-muted">10 seconds ago</small></span>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="pull-left"><img src="img/avatar-3.jpg" class="img-circle thumb-sm m-r-15" alt="img"></span>
								<span class="block"><strong>John smith</strong></span>
								<span class="media-body block">New tasks needs to be done<br><small class="text-muted">3 minutes ago</small></span>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="pull-left"><img src="img/avatar-4.jpg" class="img-circle thumb-sm m-r-15" alt="img"></span>
								<span class="block"><strong>John smith</strong></span>
								<span class="media-body block">New tasks needs to be done<br><small class="text-muted">10 minutes ago</small></span>
							</a>
						</li>
						<li>
							<p><a href="inbox.html" class="text-right">See all Messages</a></p>
						</li>
					</ul>
				</li>
				-->


				<!--
				<li class="dropdown">
					<a data-toggle="dropdown" class="dropdown-toggle" href="#">
						<i class="fa fa-bell-o"></i>
						<span class="badge badge-sm up bg-pink count">3</span>
					</a>
					<ul class="dropdown-menu extended fadeInUp animated nicescroll" tabindex="5002">
						<li class="noti-header">
							<p>Notifications</p>
						</li>
						<li>
							<a href="#">
								<span class="pull-left"><i class="fa fa-user-plus fa-2x text-info"></i></span>
								<span>New user registered<br><small class="text-muted">5 minutes ago</small></span>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="pull-left"><i class="fa fa-diamond fa-2x text-primary"></i></span>
								<span>Use animate.css<br><small class="text-muted">5 minutes ago</small></span>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="pull-left"><i class="fa fa-bell-o fa-2x text-danger"></i></span>
								<span>Send project demo files to client<br><small class="text-muted">1 hour ago</small></span>
							</a>
						</li>

						<li>
							<p><a href="#" class="text-right">See all notifications</a></p>
						</li>
					</ul>
				</li>
				-->



				<li class="dropdown text-center">
					<a data-toggle="dropdown" class="dropdown-toggle" href="#">
						<!--<img alt="" src="img/avatar-2.jpg" class="img-circle profile-img thumb-sm">-->
						<span class="username"> </span> <span class="caret"></span>
					</a>
					<ul class="dropdown-menu extended pro-menu fadeInUp animated" tabindex="5003" style="overflow: hidden; outline: none;">
						<!--<li><a href="profile.html"><i class="fa fa-briefcase"></i>Profile</a></li>-->
						<!--<li><a href="#"><i class="fa fa-cog"></i> Settings</a></li>-->
						<!--<li><a href="#"><i class="fa fa-bell"></i> Friends <span class="label label-info pull-right mail-info">5</span></a></li>-->
						<li><a class="link-logout" href="#"><i class="fa fa-sign-out"></i> Log Out</a></li>
					</ul>
				</li>

			</ul>
		</header>





</script>


<div class="page-login section-account-login">
	<form class="form-login" role="form">
	<div class="container">
		<div class="row header">
			<div class="col-md-12">
				<h3 class="logo">

				<a href="https://www.bant.io">
				<img border="0" src="/images/logo-bant2.png" width="120">
				</a>


				</h3>
				<h4>Sign in to your account.</h4>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="wrapper clearfix">
					<div class="formy">
						<div class="row">
							<div class="col-md-12">

							  		<div class="form-group">
							    		<label for="email">Email address</label>
							    		<input type="email" name="email" class="form-control" id="email" />
							  		</div>
							  		<div class="form-group">
							    		<label for="password">Password</label>
							    		<input type="password" name="password" class="form-control" id="password" />
							  		</div>
							  		<div class="checkbox">

							  		</div>
							  		<div class="submit">
							  			<a  class="button-clear btn-login" style="cursor: pointer;">
								  			<span>Sign in to my account</span>
								  		</a>
							  		</div>

							</div>
						</div>
					</div>
				</div>
				<div class="already-account">
					Don't have an account?
					<a href="/signup.html">Create one here</a>
				</div>
			</div>
		</div>
	</div>


	</form>
</div>

