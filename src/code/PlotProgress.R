PlotProgress <-
function(track.progress, track.frequency, cost.per)
{
	if (track.progress)
	{
		if (track.frequency == "epoch")
		{
			cost.data.frame <- data.frame(Cost = cost.per, Epoch = 1:length(cost.per))
			print(ggplot2::ggplot(data = cost.data.frame, aes(x = Epoch, y = Cost)) + geom_line())
		}
		if (track.frequency == "batch")
		{
			cost.data.frame <- data.frame(Cost = cost.per, Batch = 1:length(cost.per))
			print(ggplot2::ggplot(data = cost.data.frame, aes(x = Batch, y = Cost)) + geom_line())
		}
	}
}
