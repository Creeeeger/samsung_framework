package com.android.systemui.navigationbar.store;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.android.systemui.navigationbar.store.NavBarStateManager;
import com.android.systemui.plank.command.PlankCommandDispatcher;
import java.util.HashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class NavBarCommandDispatcher implements PlankCommandDispatcher {
    public final boolean enabled;
    public final NavBarStore navBarStore;
    public final HashMap originNavState = new HashMap();
    public final Handler handler = new Handler(Looper.getMainLooper());

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public NavBarCommandDispatcher(NavBarStore navBarStore) {
        this.navBarStore = navBarStore;
        if (!Build.TYPE.equals("user")) {
            Log.d("NaBarCommandDispatcher", "init()");
            this.enabled = true;
        }
    }

    public final void copyPrevStatesIfNeeded(int i) {
        HashMap hashMap = this.originNavState;
        if (hashMap.get(Integer.valueOf(i)) == null) {
            Log.d("NaBarCommandDispatcher", "copyPrevStates()");
            hashMap.put(Integer.valueOf(i), NavBarStateManager.States.copy$default(((NavBarStoreImpl) this.navBarStore).getNavStateManager(i).states));
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00b5, code lost:
    
        android.util.Log.d("NaBarCommandDispatcher", "Failed to get eventName: " + r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00c4, code lost:
    
        return r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x012e, code lost:
    
        android.util.Log.d("NaBarCommandDispatcher", "Failed to get eventName: " + r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x013d, code lost:
    
        return r19;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x0049. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0066 A[Catch: Exception -> 0x0172, TryCatch #0 {Exception -> 0x0172, blocks: (B:3:0x0012, B:8:0x003d, B:11:0x004e, B:15:0x005a, B:20:0x0066, B:22:0x0076, B:24:0x009d, B:28:0x00ab, B:33:0x00b5, B:35:0x00c5, B:36:0x00df, B:39:0x00ea, B:41:0x00f8, B:44:0x0167, B:47:0x0101, B:48:0x0117, B:52:0x0124, B:57:0x012e, B:59:0x013e, B:61:0x0147), top: B:2:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0076 A[Catch: Exception -> 0x0172, TryCatch #0 {Exception -> 0x0172, blocks: (B:3:0x0012, B:8:0x003d, B:11:0x004e, B:15:0x005a, B:20:0x0066, B:22:0x0076, B:24:0x009d, B:28:0x00ab, B:33:0x00b5, B:35:0x00c5, B:36:0x00df, B:39:0x00ea, B:41:0x00f8, B:44:0x0167, B:47:0x0101, B:48:0x0117, B:52:0x0124, B:57:0x012e, B:59:0x013e, B:61:0x0147), top: B:2:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0167 A[Catch: Exception -> 0x0172, TRY_LEAVE, TryCatch #0 {Exception -> 0x0172, blocks: (B:3:0x0012, B:8:0x003d, B:11:0x004e, B:15:0x005a, B:20:0x0066, B:22:0x0076, B:24:0x009d, B:28:0x00ab, B:33:0x00b5, B:35:0x00c5, B:36:0x00df, B:39:0x00ea, B:41:0x00f8, B:44:0x0167, B:47:0x0101, B:48:0x0117, B:52:0x0124, B:57:0x012e, B:59:0x013e, B:61:0x0147), top: B:2:0x0012 }] */
    @Override // com.android.systemui.plank.command.PlankCommandDispatcher
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.os.Bundle dispatch(java.lang.String r18, android.os.Bundle r19) {
        /*
            Method dump skipped, instructions count: 402
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.store.NavBarCommandDispatcher.dispatch(java.lang.String, android.os.Bundle):android.os.Bundle");
    }
}
