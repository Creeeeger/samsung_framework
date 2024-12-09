package com.sec.internal.omanetapi.nms.data;

import com.google.gson.annotations.SerializedName;
import com.sec.internal.constants.ims.entitilement.SoftphoneNamespaces;

/* loaded from: classes.dex */
public class ConferenceState {

    @SerializedName(SoftphoneNamespaces.SoftphoneCallHandling.ACTIVE)
    public boolean mActivation;

    @SerializedName("user-count")
    public int mUserCount;
}
