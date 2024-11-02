package com.android.systemui.bixby2.controller.volume;

import com.android.systemui.bixby2.actionresult.ActionResults;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class InvalidVolumeController extends VolumeType {
    private final int status;
    private final String statusCode = ActionResults.RESULT_FAIL;

    @Override // com.android.systemui.bixby2.controller.volume.VolumeType
    public int getStatus() {
        return this.status;
    }

    @Override // com.android.systemui.bixby2.controller.volume.VolumeType
    public String getStatusCode() {
        return this.statusCode;
    }
}
