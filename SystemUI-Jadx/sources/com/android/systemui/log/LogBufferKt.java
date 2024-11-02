package com.android.systemui.log;

import com.android.systemui.log.LogMessageImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class LogBufferKt {
    public static final LogMessageImpl FROZEN_MESSAGE;

    static {
        LogMessageImpl.Factory.getClass();
        FROZEN_MESSAGE = LogMessageImpl.Factory.create();
    }
}
