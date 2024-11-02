package com.android.wm.shell.draganddrop;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Slog;
import com.android.internal.app.ResolverActivity;
import com.android.wm.shell.draganddrop.AppResultFactory;
import com.android.wm.shell.draganddrop.ExecutableAppHolder;
import com.samsung.android.multiwindow.MultiWindowManager;
import com.samsung.android.rune.CoreRune;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.function.Predicate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class BaseResolver implements Resolver {
    public static final boolean DEBUG = CoreRune.SAFE_DEBUG;
    public final Context mContext;
    public ExecutableAppHolder.MultiInstanceAllowList mMultiInstanceAllowList;
    public final ExecutableAppHolder.MultiInstanceBlockList mMultiInstanceBlockList;
    public final PackageManager mPackageManager;
    public final ArrayList mTempList = new ArrayList();
    public final String TAG = "BaseResolver-" + getClass().getSimpleName().replace("Resolver", "");
    public final MultiWindowManager mMultiWindowManager = MultiWindowManager.getInstance();

    public BaseResolver(Context context, ExecutableAppHolder.MultiInstanceBlockList multiInstanceBlockList) {
        this.mContext = context;
        this.mPackageManager = context.getPackageManager();
        this.mMultiInstanceBlockList = multiInstanceBlockList;
    }

    public static String calculateContentType(Intent intent) {
        String type = intent.getType();
        if (type != null) {
            return type;
        }
        Uri data = intent.getData();
        if (data != null && data.getScheme() != null) {
            return data.getScheme();
        }
        return null;
    }

    public final void resolveActivities(final Intent intent, int i, ArrayList arrayList, AppResultFactory.ResultExtra resultExtra) {
        arrayList.clear();
        PackageManager packageManager = this.mPackageManager;
        ResolveInfo resolveActivityAsUser = packageManager.resolveActivityAsUser(intent, 128, i);
        if (resolveActivityAsUser == null) {
            return;
        }
        if (ResolverActivity.class.getName().equals(resolveActivityAsUser.activityInfo.name)) {
            arrayList.addAll(packageManager.queryIntentActivitiesAsUser(intent, 192, i));
        } else {
            arrayList.add(resolveActivityAsUser);
        }
        final int i2 = 0;
        arrayList.removeIf(new Predicate() { // from class: com.android.wm.shell.draganddrop.BaseResolver$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                switch (i2) {
                    case 0:
                        Intent intent2 = (Intent) intent;
                        ActivityInfo activityInfo = ((ResolveInfo) obj).activityInfo;
                        if (activityInfo == null) {
                            return true;
                        }
                        if ("android.intent.action.SEND".equals(intent2.getAction()) && !"com.samsung.android.app.notes".equals(activityInfo.packageName) && !"com.sec.android.app.sbrowser".equals(activityInfo.packageName)) {
                            return true;
                        }
                        return false;
                    default:
                        if ((((BaseResolver) intent).mMultiWindowManager.getSupportedMultiWindowModes(((ResolveInfo) obj).activityInfo) & 3) == 0) {
                            return true;
                        }
                        return false;
                }
            }
        });
        if (arrayList.isEmpty()) {
            return;
        }
        final int i3 = 1;
        if (arrayList.size() == 1 && TextUtils.isEmpty(resultExtra.mAppLabel)) {
            resultExtra.mAppLabel = ((ResolveInfo) arrayList.get(0)).loadLabel(packageManager);
        }
        arrayList.removeIf(new Predicate() { // from class: com.android.wm.shell.draganddrop.BaseResolver$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                switch (i3) {
                    case 0:
                        Intent intent2 = (Intent) this;
                        ActivityInfo activityInfo = ((ResolveInfo) obj).activityInfo;
                        if (activityInfo == null) {
                            return true;
                        }
                        if ("android.intent.action.SEND".equals(intent2.getAction()) && !"com.samsung.android.app.notes".equals(activityInfo.packageName) && !"com.sec.android.app.sbrowser".equals(activityInfo.packageName)) {
                            return true;
                        }
                        return false;
                    default:
                        if ((((BaseResolver) this).mMultiWindowManager.getSupportedMultiWindowModes(((ResolveInfo) obj).activityInfo) & 3) == 0) {
                            return true;
                        }
                        return false;
                }
            }
        });
        if (arrayList.isEmpty()) {
            resultExtra.mNonResizeableAppOnly = true;
        }
    }

    public final void resolveActivitiesForSBrowser(Intent intent, int i, ArrayList arrayList, AppResultFactory.ResultExtra resultExtra) {
        ResolveInfo resolveInfo;
        arrayList.clear();
        arrayList.addAll(this.mPackageManager.queryIntentActivitiesAsUser(intent, 131264, i));
        Iterator it = arrayList.iterator();
        while (true) {
            if (it.hasNext()) {
                resolveInfo = (ResolveInfo) it.next();
                ActivityInfo activityInfo = resolveInfo.activityInfo;
                if (activityInfo != null && "com.sec.android.app.sbrowser".equals(activityInfo.packageName)) {
                    if (DEBUG) {
                        Slog.d(this.TAG, "resolveActivities: found sbrowser=" + resolveInfo);
                    }
                }
            } else {
                resolveInfo = null;
                break;
            }
        }
        if (resolveInfo != null) {
            arrayList.clear();
            arrayList.add(resolveInfo);
        } else {
            resolveActivities(intent, i, arrayList, resultExtra);
        }
    }
}
