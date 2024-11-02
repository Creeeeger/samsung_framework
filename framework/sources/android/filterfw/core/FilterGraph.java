package android.filterfw.core;

import android.filterpacks.base.FrameBranch;
import android.filterpacks.base.NullFilter;
import android.telecom.Logging.Session;
import android.util.Log;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Set;
import java.util.Stack;

/* loaded from: classes.dex */
public class FilterGraph {
    public static final int AUTOBRANCH_OFF = 0;
    public static final int AUTOBRANCH_SYNCED = 1;
    public static final int AUTOBRANCH_UNSYNCED = 2;
    public static final int TYPECHECK_DYNAMIC = 1;
    public static final int TYPECHECK_OFF = 0;
    public static final int TYPECHECK_STRICT = 2;
    private HashSet<Filter> mFilters = new HashSet<>();
    private HashMap<String, Filter> mNameMap = new HashMap<>();
    private HashMap<OutputPort, LinkedList<InputPort>> mPreconnections = new HashMap<>();
    private boolean mIsReady = false;
    private int mAutoBranchMode = 0;
    private int mTypeCheckMode = 2;
    private boolean mDiscardUnconnectedOutputs = false;
    private String TAG = "FilterGraph";
    private boolean mLogVerbose = Log.isLoggable("FilterGraph", 2);

    public boolean addFilter(Filter filter) {
        if (!containsFilter(filter)) {
            this.mFilters.add(filter);
            this.mNameMap.put(filter.getName(), filter);
            return true;
        }
        return false;
    }

    public boolean containsFilter(Filter filter) {
        return this.mFilters.contains(filter);
    }

    public Filter getFilter(String name) {
        return this.mNameMap.get(name);
    }

    public void connect(Filter source, String outputName, Filter target, String inputName) {
        if (source == null || target == null) {
            throw new IllegalArgumentException("Passing null Filter in connect()!");
        }
        if (!containsFilter(source) || !containsFilter(target)) {
            throw new RuntimeException("Attempting to connect filter not in graph!");
        }
        OutputPort outPort = source.getOutputPort(outputName);
        InputPort inPort = target.getInputPort(inputName);
        if (outPort == null) {
            throw new RuntimeException("Unknown output port '" + outputName + "' on Filter " + source + "!");
        }
        if (inPort == null) {
            throw new RuntimeException("Unknown input port '" + inputName + "' on Filter " + target + "!");
        }
        preconnect(outPort, inPort);
    }

    public void connect(String sourceName, String outputName, String targetName, String inputName) {
        Filter source = getFilter(sourceName);
        Filter target = getFilter(targetName);
        if (source == null) {
            throw new RuntimeException("Attempting to connect unknown source filter '" + sourceName + "'!");
        }
        if (target == null) {
            throw new RuntimeException("Attempting to connect unknown target filter '" + targetName + "'!");
        }
        connect(source, outputName, target, inputName);
    }

    public Set<Filter> getFilters() {
        return this.mFilters;
    }

    public void beginProcessing() {
        if (this.mLogVerbose) {
            Log.v(this.TAG, "Opening all filter connections...");
        }
        Iterator<Filter> it = this.mFilters.iterator();
        while (it.hasNext()) {
            Filter filter = it.next();
            filter.openOutputs();
        }
        this.mIsReady = true;
    }

    public void flushFrames() {
        Iterator<Filter> it = this.mFilters.iterator();
        while (it.hasNext()) {
            Filter filter = it.next();
            filter.clearOutputs();
        }
    }

    public void closeFilters(FilterContext context) {
        if (this.mLogVerbose) {
            Log.v(this.TAG, "Closing all filters...");
        }
        Iterator<Filter> it = this.mFilters.iterator();
        while (it.hasNext()) {
            Filter filter = it.next();
            filter.performClose(context);
        }
        this.mIsReady = false;
    }

    public boolean isReady() {
        return this.mIsReady;
    }

    public void setAutoBranchMode(int autoBranchMode) {
        this.mAutoBranchMode = autoBranchMode;
    }

    public void setDiscardUnconnectedOutputs(boolean discard) {
        this.mDiscardUnconnectedOutputs = discard;
    }

    public void setTypeCheckMode(int typeCheckMode) {
        this.mTypeCheckMode = typeCheckMode;
    }

    public void tearDown(FilterContext context) {
        if (!this.mFilters.isEmpty()) {
            flushFrames();
            Iterator<Filter> it = this.mFilters.iterator();
            while (it.hasNext()) {
                Filter filter = it.next();
                filter.performTearDown(context);
            }
            this.mFilters.clear();
            this.mNameMap.clear();
            this.mIsReady = false;
        }
    }

    private boolean readyForProcessing(Filter filter, Set<Filter> processed) {
        if (processed.contains(filter)) {
            return false;
        }
        for (InputPort port : filter.getInputPorts()) {
            Filter dependency = port.getSourceFilter();
            if (dependency != null && !processed.contains(dependency)) {
                return false;
            }
        }
        return true;
    }

    private void runTypeCheck() {
        Stack<Filter> filterStack = new Stack<>();
        Set<Filter> processedFilters = new HashSet<>();
        filterStack.addAll(getSourceFilters());
        while (!filterStack.empty()) {
            Filter filter = filterStack.pop();
            processedFilters.add(filter);
            updateOutputs(filter);
            if (this.mLogVerbose) {
                Log.v(this.TAG, "Running type check on " + filter + Session.TRUNCATE_STRING);
            }
            runTypeCheckOn(filter);
            for (OutputPort port : filter.getOutputPorts()) {
                Filter target = port.getTargetFilter();
                if (target != null && readyForProcessing(target, processedFilters)) {
                    filterStack.push(target);
                }
            }
        }
        if (processedFilters.size() != getFilters().size()) {
            throw new RuntimeException("Could not schedule all filters! Is your graph malformed?");
        }
    }

    private void updateOutputs(Filter filter) {
        for (OutputPort outputPort : filter.getOutputPorts()) {
            InputPort inputPort = outputPort.getBasePort();
            if (inputPort != null) {
                FrameFormat inputFormat = inputPort.getSourceFormat();
                FrameFormat outputFormat = filter.getOutputFormat(outputPort.getName(), inputFormat);
                if (outputFormat == null) {
                    throw new RuntimeException("Filter did not return an output format for " + outputPort + "!");
                }
                outputPort.setPortFormat(outputFormat);
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0085, code lost:
    
        if (r4 == false) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00ba, code lost:
    
        throw new java.lang.RuntimeException("Type mismatch: Filter " + r8 + " expects a format of type " + r3 + " but got a format of type " + r2 + "!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void runTypeCheckOn(android.filterfw.core.Filter r8) {
        /*
            r7 = this;
            java.util.Collection r0 = r8.getInputPorts()
            java.util.Iterator r0 = r0.iterator()
        L8:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto Lbd
            java.lang.Object r1 = r0.next()
            android.filterfw.core.InputPort r1 = (android.filterfw.core.InputPort) r1
            boolean r2 = r7.mLogVerbose
            if (r2 == 0) goto L30
            java.lang.String r2 = r7.TAG
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "Type checking port "
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.StringBuilder r3 = r3.append(r1)
            java.lang.String r3 = r3.toString()
            android.util.Log.v(r2, r3)
        L30:
            android.filterfw.core.FrameFormat r2 = r1.getSourceFormat()
            android.filterfw.core.FrameFormat r3 = r1.getPortFormat()
            if (r2 == 0) goto Lbb
            if (r3 == 0) goto Lbb
            boolean r4 = r7.mLogVerbose
            if (r4 == 0) goto L68
            java.lang.String r4 = r7.TAG
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "Checking "
            java.lang.StringBuilder r5 = r5.append(r6)
            java.lang.StringBuilder r5 = r5.append(r2)
            java.lang.String r6 = " against "
            java.lang.StringBuilder r5 = r5.append(r6)
            java.lang.StringBuilder r5 = r5.append(r3)
            java.lang.String r6 = "."
            java.lang.StringBuilder r5 = r5.append(r6)
            java.lang.String r5 = r5.toString()
            android.util.Log.v(r4, r5)
        L68:
            r4 = 1
            int r5 = r7.mTypeCheckMode
            r6 = 0
            switch(r5) {
                case 0: goto L81;
                case 1: goto L78;
                case 2: goto L70;
                default: goto L6f;
            }
        L6f:
            goto L85
        L70:
            boolean r4 = r2.isCompatibleWith(r3)
            r1.setChecksType(r6)
            goto L85
        L78:
            boolean r4 = r2.mayBeCompatibleWith(r3)
            r5 = 1
            r1.setChecksType(r5)
            goto L85
        L81:
            r1.setChecksType(r6)
        L85:
            if (r4 == 0) goto L88
            goto Lbb
        L88:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "Type mismatch: Filter "
            java.lang.StringBuilder r5 = r5.append(r6)
            java.lang.StringBuilder r5 = r5.append(r8)
            java.lang.String r6 = " expects a format of type "
            java.lang.StringBuilder r5 = r5.append(r6)
            java.lang.StringBuilder r5 = r5.append(r3)
            java.lang.String r6 = " but got a format of type "
            java.lang.StringBuilder r5 = r5.append(r6)
            java.lang.StringBuilder r5 = r5.append(r2)
            java.lang.String r6 = "!"
            java.lang.StringBuilder r5 = r5.append(r6)
            java.lang.String r5 = r5.toString()
            r0.<init>(r5)
            throw r0
        Lbb:
            goto L8
        Lbd:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: android.filterfw.core.FilterGraph.runTypeCheckOn(android.filterfw.core.Filter):void");
    }

    private void checkConnections() {
    }

    private void discardUnconnectedOutputs() {
        LinkedList<Filter> addedFilters = new LinkedList<>();
        Iterator<Filter> it = this.mFilters.iterator();
        while (it.hasNext()) {
            Filter filter = it.next();
            int id = 0;
            for (OutputPort port : filter.getOutputPorts()) {
                if (!port.isConnected()) {
                    if (this.mLogVerbose) {
                        Log.v(this.TAG, "Autoconnecting unconnected " + port + " to Null filter.");
                    }
                    NullFilter nullFilter = new NullFilter(filter.getName() + "ToNull" + id);
                    nullFilter.init();
                    addedFilters.add(nullFilter);
                    port.connectTo(nullFilter.getInputPort("frame"));
                    id++;
                }
            }
        }
        Iterator<Filter> it2 = addedFilters.iterator();
        while (it2.hasNext()) {
            addFilter(it2.next());
        }
    }

    private void removeFilter(Filter filter) {
        this.mFilters.remove(filter);
        this.mNameMap.remove(filter.getName());
    }

    private void preconnect(OutputPort outPort, InputPort inPort) {
        LinkedList<InputPort> targets = this.mPreconnections.get(outPort);
        if (targets == null) {
            targets = new LinkedList<>();
            this.mPreconnections.put(outPort, targets);
        }
        targets.add(inPort);
    }

    private void connectPorts() {
        int branchId = 1;
        for (Map.Entry<OutputPort, LinkedList<InputPort>> connection : this.mPreconnections.entrySet()) {
            OutputPort outputPort = connection.getKey();
            LinkedList<InputPort> inputPorts = connection.getValue();
            if (inputPorts.size() == 1) {
                outputPort.connectTo(inputPorts.get(0));
            } else {
                if (this.mAutoBranchMode == 0) {
                    throw new RuntimeException("Attempting to connect " + outputPort + " to multiple filter ports! Enable auto-branching to allow this.");
                }
                if (this.mLogVerbose) {
                    Log.v(this.TAG, "Creating branch for " + outputPort + "!");
                }
                if (this.mAutoBranchMode == 1) {
                    int branchId2 = branchId + 1;
                    FrameBranch branch = new FrameBranch("branch" + branchId);
                    new KeyValueMap();
                    branch.initWithAssignmentList("outputs", Integer.valueOf(inputPorts.size()));
                    addFilter(branch);
                    outputPort.connectTo(branch.getInputPort("in"));
                    Iterator<InputPort> inputPortIter = inputPorts.iterator();
                    for (OutputPort branchOutPort : branch.getOutputPorts()) {
                        branchOutPort.connectTo(inputPortIter.next());
                    }
                    branchId = branchId2;
                } else {
                    throw new RuntimeException("TODO: Unsynced branches not implemented yet!");
                }
            }
        }
        this.mPreconnections.clear();
    }

    private HashSet<Filter> getSourceFilters() {
        HashSet<Filter> sourceFilters = new HashSet<>();
        for (Filter filter : getFilters()) {
            if (filter.getNumberOfConnectedInputs() == 0) {
                if (this.mLogVerbose) {
                    Log.v(this.TAG, "Found source filter: " + filter);
                }
                sourceFilters.add(filter);
            }
        }
        return sourceFilters;
    }

    public void setupFilters() {
        if (this.mDiscardUnconnectedOutputs) {
            discardUnconnectedOutputs();
        }
        connectPorts();
        checkConnections();
        runTypeCheck();
    }
}
