package com.android.wm.shell.draganddrop;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.util.Slog;
import com.android.wm.shell.draganddrop.ExecutableAppHolder;
import com.samsung.android.multiwindow.MultiWindowManager;
import com.samsung.android.rune.CoreRune;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SingleIntentAppResult extends BaseAppResult {
    public final Icon mActionIcon;
    public final boolean mAlwaysUseOptions;
    public final Intent mIntent;
    public final List mResolveInfos;

    public SingleIntentAppResult(Intent intent, List<ResolveInfo> list, ExecutableAppHolder.MultiInstanceBlockList multiInstanceBlockList, ExecutableAppHolder.MultiInstanceAllowList multiInstanceAllowList, String str) {
        this(intent, list, multiInstanceBlockList, multiInstanceAllowList, str, false);
    }

    @Override // com.android.wm.shell.draganddrop.AppResult
    public final ApplicationInfo getDragAppApplicationInfo() {
        List list = this.mResolveInfos;
        if (((ArrayList) list).isEmpty() || ((ResolveInfo) ((ArrayList) list).get(0)).activityInfo == null) {
            return null;
        }
        return ((ResolveInfo) ((ArrayList) list).get(0)).activityInfo.applicationInfo;
    }

    @Override // com.android.wm.shell.draganddrop.AppResult
    public final boolean hasResizableResolveInfo() {
        return this.mResolveInfos.stream().filter(new Predicate() { // from class: com.android.wm.shell.draganddrop.SingleIntentAppResult$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                SingleIntentAppResult.this.getClass();
                if ((MultiWindowManager.getInstance().getSupportedMultiWindowModes(((ResolveInfo) obj).activityInfo) & 3) != 0) {
                    return true;
                }
                return false;
            }
        }).findFirst().isPresent();
    }

    @Override // com.android.wm.shell.draganddrop.AppResult
    public final boolean hasResolveInfoInFullscreenOnly(VisibleTasks visibleTasks) {
        ArrayList arrayList = new ArrayList(this.mResolveInfos);
        arrayList.removeIf(new SingleIntentAppResult$$ExternalSyntheticLambda1(this, visibleTasks.getFullscreenTasks(), 2));
        return arrayList.isEmpty();
    }

    @Override // com.android.wm.shell.draganddrop.AppResult
    public final boolean isAlreadyRunningSingleInstanceTask(VisibleTasks visibleTasks) {
        ArrayList arrayList = new ArrayList(this.mResolveInfos);
        arrayList.removeIf(new SingleIntentAppResult$$ExternalSyntheticLambda1(this, visibleTasks.getVisibleTasks(), 1));
        return arrayList.isEmpty();
    }

    @Override // com.android.wm.shell.draganddrop.AppResult
    public final AppInfo makeExecutableApp(Context context, int i, VisibleTasks visibleTasks) {
        Drawable loadIcon;
        ArrayList arrayList = new ArrayList(this.mResolveInfos);
        arrayList.removeIf(new SingleIntentAppResult$$ExternalSyntheticLambda1(this, visibleTasks.getTasksException(i), 0));
        if (arrayList.isEmpty()) {
            return null;
        }
        int size = arrayList.size();
        Intent intent = this.mIntent;
        if (size > 1) {
            Intent intent2 = new Intent(context, (Class<?>) DropResolverActivity.class);
            intent2.addFlags(402653184);
            intent2.putExtra("android.intent.extra.INTENT", intent);
            intent2.putParcelableArrayListExtra("dropResolverActivity.extra.rlist", new ArrayList<>(arrayList));
            intent2.putExtra("dropResolverActivity.extra.supportsAlwaysUseOption", this.mAlwaysUseOptions);
            if (CoreRune.SAFE_DEBUG) {
                Slog.d("ExecutableAppHolder", "makeResolverInfo: using intent=" + intent2);
            }
            return new AppInfo(intent2, null, true);
        }
        intent.addFlags(402653184);
        ResolveInfo resolveInfo = (ResolveInfo) arrayList.get(0);
        Intent intent3 = new Intent(intent);
        intent3.setComponent(resolveInfo.activityInfo.getComponentName());
        Icon icon = this.mActionIcon;
        if (icon != null) {
            loadIcon = icon.loadDrawable(context);
        } else {
            loadIcon = resolveInfo.activityInfo.loadIcon(context.getPackageManager());
        }
        return new AppInfo(intent3, loadIcon, false);
    }

    public SingleIntentAppResult(Intent intent, List<ResolveInfo> list, ExecutableAppHolder.MultiInstanceBlockList multiInstanceBlockList, ExecutableAppHolder.MultiInstanceAllowList multiInstanceAllowList, String str, boolean z) {
        this(intent, list, multiInstanceBlockList, multiInstanceAllowList, str, z, null);
    }

    public SingleIntentAppResult(Intent intent, List<ResolveInfo> list, ExecutableAppHolder.MultiInstanceBlockList multiInstanceBlockList, ExecutableAppHolder.MultiInstanceAllowList multiInstanceAllowList, String str, boolean z, Icon icon) {
        super(multiInstanceBlockList, multiInstanceAllowList, str);
        ArrayList arrayList = new ArrayList();
        this.mResolveInfos = arrayList;
        this.mIntent = intent;
        arrayList.addAll(list);
        this.mAlwaysUseOptions = z;
        this.mActionIcon = icon;
    }
}
