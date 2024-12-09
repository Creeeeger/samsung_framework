package com.sec.internal.ims.servicemodules.csh.event;

import com.sec.internal.ims.core.handler.secims.imsCommonStruc.MNO;

/* loaded from: classes.dex */
public enum VshOrientation {
    LANDSCAPE(0),
    PORTRAIT(90),
    FLIPPED_LANDSCAPE(MNO.EVR_ESN),
    REVERSE_PORTRAIT(MNO.AMERICANET_BRAZIL);

    private final int mAngle;

    VshOrientation(int i) {
        this.mAngle = i;
    }
}
