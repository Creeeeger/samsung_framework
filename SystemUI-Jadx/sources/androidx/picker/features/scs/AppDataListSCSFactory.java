package androidx.picker.features.scs;

import android.content.Context;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AppDataListSCSFactory extends AppDataListBixbyFactory {
    public AppDataListSCSFactory(Context context) {
        super(context);
    }

    @Override // androidx.picker.features.scs.AppDataListBixbyFactory
    public final String getAuthority() {
        return "com.samsung.android.scs.ai.search/v1";
    }

    @Override // androidx.picker.features.scs.AppDataListBixbyFactory, androidx.picker.features.scs.AbstractAppDataListFactory, androidx.picker.common.log.LogTag
    public final String getLogTag() {
        return "AppDataListSCSFactory";
    }
}
