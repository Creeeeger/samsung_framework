package android.filterfw.core;

/* loaded from: classes.dex */
public abstract class Scheduler {
    private FilterGraph mGraph;

    public abstract void reset();

    public abstract Filter scheduleNextNode();

    public Scheduler(FilterGraph graph) {
        this.mGraph = graph;
    }

    public FilterGraph getGraph() {
        return this.mGraph;
    }

    boolean finished() {
        return true;
    }
}
