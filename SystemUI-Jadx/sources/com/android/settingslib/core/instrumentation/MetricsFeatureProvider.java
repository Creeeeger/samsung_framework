package com.android.settingslib.core.instrumentation;

import android.metrics.LogMaker;
import com.android.internal.logging.MetricsLogger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MetricsFeatureProvider {
    public final List mLoggerWriters;

    public MetricsFeatureProvider() {
        ArrayList arrayList = new ArrayList();
        this.mLoggerWriters = arrayList;
        arrayList.add(new EventLogWriter());
    }

    public final void visible(int i, int i2) {
        Iterator it = ((ArrayList) this.mLoggerWriters).iterator();
        while (it.hasNext()) {
            ((EventLogWriter) it.next()).getClass();
            MetricsLogger.action(new LogMaker(i).setType(1).addTaggedData(833, 0).addTaggedData(1089, Integer.valueOf(i2)));
        }
    }
}
