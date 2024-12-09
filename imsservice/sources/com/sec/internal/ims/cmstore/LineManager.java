package com.sec.internal.ims.cmstore;

import android.util.Log;
import com.sec.internal.interfaces.ims.cmstore.ILineStatusChangeCallBack;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class LineManager {
    private static final String TAG = "LineManager";
    private final ILineStatusChangeCallBack mILineStatusChangeCallBack;
    private final Map<String, LineWorkingStatus> mLineStatus = new HashMap();
    private final List<LineStatusObserver> mLineStatusOberserverList = new ArrayList();

    public interface LineStatusObserver {
        void onLineAdded(String str);
    }

    private enum LineWorkingStatus {
        WORKING
    }

    public LineManager(ILineStatusChangeCallBack iLineStatusChangeCallBack) {
        this.mILineStatusChangeCallBack = iLineStatusChangeCallBack;
    }

    public void registerLineStatusOberser(LineStatusObserver lineStatusObserver) {
        this.mLineStatusOberserverList.add(lineStatusObserver);
        if (this.mLineStatus.size() < 1) {
            return;
        }
        Iterator<String> it = this.mLineStatus.keySet().iterator();
        while (it.hasNext()) {
            lineStatusObserver.onLineAdded(it.next());
        }
    }

    public void initLineStatus() {
        List<String> notifyLoadLineStatus = this.mILineStatusChangeCallBack.notifyLoadLineStatus();
        if (notifyLoadLineStatus == null || notifyLoadLineStatus.size() == 0) {
            Log.i(TAG, "no line added yet");
            return;
        }
        Iterator<String> it = notifyLoadLineStatus.iterator();
        while (it.hasNext()) {
            addLine(it.next());
        }
    }

    public void addLine(String str) {
        Log.i(TAG, "addLine :: " + IMSLog.checker(str));
        this.mLineStatus.put(str, LineWorkingStatus.WORKING);
        Iterator<LineStatusObserver> it = this.mLineStatusOberserverList.iterator();
        while (it.hasNext()) {
            it.next().onLineAdded(str);
        }
    }
}
