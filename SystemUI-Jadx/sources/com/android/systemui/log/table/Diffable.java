package com.android.systemui.log.table;

import com.android.systemui.log.table.TableLogBuffer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public interface Diffable {
    void logDiffs(Diffable diffable, TableLogBuffer.TableRowLoggerImpl tableRowLoggerImpl);

    void logFull(TableLogBuffer.TableRowLoggerImpl tableRowLoggerImpl);
}
