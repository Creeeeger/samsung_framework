package com.sec.internal.omanetapi.nms.data;

import com.google.gson.annotations.SerializedName;
import com.sec.internal.constants.ims.servicemodules.im.RcsNamespace;

/* loaded from: classes.dex */
public class ExtendedRCS {

    @SerializedName(RcsNamespace.REFERENCE_ID_KEY)
    public String mReferenceId;

    @SerializedName(RcsNamespace.REFERENCE_TYPE_KEY)
    public int mReferenceType;

    @SerializedName(RcsNamespace.REFERENCE_VALUE_KEY)
    public String mReferenceValue;
}
