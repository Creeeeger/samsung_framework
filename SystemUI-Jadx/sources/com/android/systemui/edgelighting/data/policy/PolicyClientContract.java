package com.android.systemui.edgelighting.data.policy;

import android.net.Uri;
import android.provider.BaseColumns;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class PolicyClientContract {
    public static final Uri AUTHORITY_URI = Uri.parse("content://com.samsung.android.sm.policy");

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class PolicyItems implements BaseColumns {
        public static final Uri CONTENT_URI = Uri.withAppendedPath(PolicyClientContract.AUTHORITY_URI, "policy_item");
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class PolicyList implements BaseColumns {
        public static final Uri CONTENT_URI = Uri.withAppendedPath(PolicyClientContract.AUTHORITY_URI, "policy_list");
    }
}
