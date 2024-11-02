package com.android.systemui.util;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.android.systemui.Dependency;
import com.android.systemui.qs.QSTileHost;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class QsStatusEventLog {
    public static final Long SA_SEVEN_DAYS_IN_MILLISECONDS = 604800000L;
    public final Context mContext;
    public final Handler mHandler = new Handler((Looper) Dependency.get(Dependency.BG_LOOPER));
    public final QSTileHost mHost;

    public QsStatusEventLog(Context context, QSTileHost qSTileHost) {
        this.mContext = context;
        this.mHost = qSTileHost;
        Thread thread = new Thread(new QsStatusEventLog$$ExternalSyntheticLambda0(this));
        thread.setName("WeeklySALogging");
        thread.start();
    }
}
