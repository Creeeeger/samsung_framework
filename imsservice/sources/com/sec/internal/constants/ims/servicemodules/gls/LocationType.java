package com.sec.internal.constants.ims.servicemodules.gls;

/* loaded from: classes.dex */
public enum LocationType {
    OWN_LOCATION(1),
    OTHER_LOCATION(2);

    private final int mValue;

    @Override // java.lang.Enum
    public String toString() {
        return Integer.toString(this.mValue);
    }

    LocationType(int i) {
        this.mValue = i;
    }
}
