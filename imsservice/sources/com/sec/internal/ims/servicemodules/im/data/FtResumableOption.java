package com.sec.internal.ims.servicemodules.im.data;

/* loaded from: classes.dex */
public enum FtResumableOption {
    NOTRESUMABLE(0),
    MANUALLY_RESUMABLE_ONLY(1),
    MANUALLY_AUTOMATICALLY_RESUMABLE(2);

    private final int mId;

    FtResumableOption(int i) {
        this.mId = i;
    }

    public int getId() {
        return this.mId;
    }
}
