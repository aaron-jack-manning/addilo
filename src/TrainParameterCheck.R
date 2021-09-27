TrainParameterCheck <-
function(input, batch.size, track.frequency)
{
	if (ncol(input) %% batch.size != 0)
	{
		stop("batch.size is not a factor of the number of training examples [ncol(input)].")
	}
	if (track.frequency != "epoch" && track.frequency != "batch")
	{
		stop("Invalid track frequency parameter: must be batch or epoch.")
	}
}
