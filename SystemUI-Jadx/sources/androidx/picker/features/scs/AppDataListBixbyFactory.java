package androidx.picker.features.scs;

import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import androidx.picker.model.AppInfo;
import androidx.picker.model.AppInfoDataImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class AppDataListBixbyFactory extends AbstractAppDataListFactory {
    public final Context mContext;

    public AppDataListBixbyFactory(Context context) {
        this.mContext = context;
    }

    public final AppInfoDataImpl createAppInfoData(int i, ResolveInfo resolveInfo) {
        ActivityInfo activityInfo = resolveInfo.activityInfo;
        String str = activityInfo.applicationInfo.packageName;
        String str2 = activityInfo.name;
        AppInfo.Companion.getClass();
        AppInfoDataImpl appInfoDataImpl = new AppInfoDataImpl(new AppInfo(str, str2, i), 0);
        appInfoDataImpl.label = resolveInfo.loadLabel(this.mContext.getPackageManager()).toString();
        return appInfoDataImpl;
    }

    public String getAuthority() {
        return "com.samsung.android.bixby.service.bixbysearch/v1";
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x005a, code lost:
    
        if (r7 != null) goto L19;
     */
    @Override // androidx.picker.features.scs.AbstractAppDataListFactory
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.List getDataList() {
        /*
            Method dump skipped, instructions count: 416
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.picker.features.scs.AppDataListBixbyFactory.getDataList():java.util.List");
    }

    @Override // androidx.picker.features.scs.AbstractAppDataListFactory, androidx.picker.common.log.LogTag
    public String getLogTag() {
        return "AppDataListBixbyFactory";
    }
}
