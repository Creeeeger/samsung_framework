package com.android.wm.shell.splitscreen;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.UserHandle;
import android.util.Slog;
import com.android.internal.policy.DockedDividerUtils;
import com.android.systemui.R;
import com.android.wm.shell.common.split.SplitLayout;
import com.samsung.android.rune.CoreRune;
import java.util.ArrayList;
import java.util.Arrays;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class AppPairShortcutController {
    public static final String[] sPairComponentNameList = {"component_first", "component_second", "component_third"};
    public static final String[] sPairUserIdList = {"userId_first", "userId_second", "userId_third"};
    public final Context mContext;
    public final H mH;
    public final Rect mSplitAreaBounds = new Rect();
    public final SplitLayout mSplitLayout;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class H extends Handler {
        public H(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            int i = message.what;
            if (i != 6) {
                if (i == 7) {
                    AppPairShortcutController.this.mContext.sendBroadcastAsUser((Intent) message.obj, UserHandle.CURRENT, "com.samsung.android.permission.SEND_SPLIT_STATE_CHANGED");
                    return;
                }
                return;
            }
            AppPairShortcutController.this.mContext.sendBroadcastAsUser((Intent) message.obj, UserHandle.CURRENT, "com.samsung.android.permission.ADD_PAIR_APP_SHORTCUT");
        }
    }

    public AppPairShortcutController(Context context, SplitLayout splitLayout) {
        this.mContext = context;
        this.mH = new H(context.getMainLooper());
        this.mSplitLayout = splitLayout;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0134 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void createAppPairShortcut(int r13) {
        /*
            Method dump skipped, instructions count: 408
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.splitscreen.AppPairShortcutController.createAppPairShortcut(int):void");
    }

    public final Intent createAppPairShortcutIntent(String str, ArrayList arrayList, int[] iArr, int i) {
        int i2;
        float calculateSplitRatio;
        int i3;
        Intent intent = new Intent();
        intent.setAction(str);
        intent.addFlags(285212672);
        if (i == 3) {
            intent.setPackage("com.samsung.android.smartsuggestions");
        }
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            intent.putExtra(sPairComponentNameList[i4], (String) arrayList.get(i4));
            intent.putExtra(sPairUserIdList[i4], iArr[i4]);
        }
        if (i != 3) {
            intent.putExtra("add_app_pair_to", i);
        }
        boolean z = CoreRune.MW_MULTI_SPLIT_FREE_POSITION;
        SplitLayout splitLayout = this.mSplitLayout;
        if (z) {
            if (splitLayout.mStageCoordinator.isMultiSplitActive()) {
                intent.putExtra("pair_orientation", splitLayout.mStageCoordinator.getSplitCreateMode());
            } else {
                if (splitLayout.isVerticalDivision()) {
                    i3 = 2;
                } else {
                    i3 = 3;
                }
                intent.putExtra("pair_orientation", i3);
            }
        }
        Context context = this.mContext;
        Resources resources = context.getResources();
        if (CoreRune.MW_MULTI_SPLIT_DIVIDER_SIZE_FOLD) {
            i2 = R.dimen.split_divider_bar_width_fold;
        } else {
            i2 = R.dimen.split_divider_bar_width;
        }
        int dimensionPixelSize = resources.getDimensionPixelSize(i2);
        boolean z2 = CoreRune.MW_MULTI_SPLIT_BOUNDS_POLICY;
        Rect rect = this.mSplitAreaBounds;
        if (!z2 && !CoreRune.MW_SPLIT_LARGE_SCREEN_BOUNDS_POLICY) {
            splitLayout.getDisplayLayout(context).getDisplayBounds(rect);
            calculateSplitRatio = DockedDividerUtils.calculateSplitRatio(dimensionPixelSize, splitLayout.getBounds1(), rect, splitLayout.getDisplayLayout(context).stableInsets(true));
        } else {
            splitLayout.getDisplayLayout(context).getStableBounds(rect, true);
            calculateSplitRatio = DockedDividerUtils.calculateSplitRatio(dimensionPixelSize, splitLayout.getBounds1(), rect, (Rect) null);
        }
        intent.putExtra("divider_ratio", calculateSplitRatio);
        if (CoreRune.MW_MULTI_SPLIT_APP_PAIR && size > 2) {
            splitLayout.getClass();
            Rect rect2 = new Rect(new Rect(splitLayout.mBounds3));
            rect2.union(splitLayout.getHostBounds());
            intent.putExtra("cell_divider_ratio", DockedDividerUtils.calculateSplitRatio(dimensionPixelSize, new Rect(splitLayout.mBounds3), rect2, (Rect) null));
        }
        if (i == 3) {
            Slog.d("AppPairShortcutController", "send split state, Split activities = " + arrayList);
        } else {
            Slog.d("AppPairShortcutController", "createAppPairShortcutLocked() Split activities = " + arrayList + ", userIds = " + Arrays.toString(iArr));
        }
        return intent;
    }
}
