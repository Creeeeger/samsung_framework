package com.sec.internal.interfaces.ims.core;

/* loaded from: classes.dex */
public interface INtpTimeController extends ISequentialInitializable {
    void refreshNtpTime();

    void registerNtpTimeChangedListener(INtpTimeChangedListener iNtpTimeChangedListener);

    void unregisterNtpTimeChangedListener(INtpTimeChangedListener iNtpTimeChangedListener);
}
