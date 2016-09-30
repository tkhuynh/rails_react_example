var EventApplication = React.createClass({
	render: function() {
		return(
			<div className="container">
				<div className="jumbotron">
					<h1>ReactJS on Rails</h1>
				</div>
				<div className="row">
					<div className="col-md-12">
						<EvenTable/>
					</div>
				</div>
			</div>
		);
	}
});