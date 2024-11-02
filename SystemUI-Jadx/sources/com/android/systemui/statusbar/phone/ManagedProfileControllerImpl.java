package com.android.systemui.statusbar.phone;

import android.app.StatusBarManager;
import android.content.Context;
import android.content.pm.UserInfo;
import android.os.UserHandle;
import android.os.UserManager;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.settings.UserTrackerImpl;
import com.android.systemui.statusbar.phone.ManagedProfileController;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Executor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ManagedProfileControllerImpl implements ManagedProfileController {
    public final Context mContext;
    public int mCurrentUser;
    public boolean mListening;
    public final Executor mMainExecutor;
    public final UserManager mUserManager;
    public final UserTracker mUserTracker;
    public final List mCallbacks = new ArrayList();
    public final UserTrackerCallback mUserTrackerCallback = new UserTrackerCallback(this, 0);
    public final LinkedList mProfiles = new LinkedList();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class UserTrackerCallback implements UserTracker.Callback {
        public /* synthetic */ UserTrackerCallback(ManagedProfileControllerImpl managedProfileControllerImpl, int i) {
            this();
        }

        @Override // com.android.systemui.settings.UserTracker.Callback
        public final void onProfilesChanged(List list) {
            ManagedProfileControllerImpl managedProfileControllerImpl = ManagedProfileControllerImpl.this;
            managedProfileControllerImpl.reloadManagedProfiles();
            Iterator it = ((ArrayList) managedProfileControllerImpl.mCallbacks).iterator();
            while (it.hasNext()) {
                ((ManagedProfileController.Callback) it.next()).onManagedProfileChanged();
            }
        }

        @Override // com.android.systemui.settings.UserTracker.Callback
        public final void onUserChanged(int i, Context context) {
            ManagedProfileControllerImpl managedProfileControllerImpl = ManagedProfileControllerImpl.this;
            managedProfileControllerImpl.reloadManagedProfiles();
            Iterator it = ((ArrayList) managedProfileControllerImpl.mCallbacks).iterator();
            while (it.hasNext()) {
                ((ManagedProfileController.Callback) it.next()).onManagedProfileChanged();
            }
        }

        private UserTrackerCallback() {
        }
    }

    public ManagedProfileControllerImpl(Context context, Executor executor, UserTracker userTracker, UserManager userManager) {
        this.mContext = context;
        this.mMainExecutor = executor;
        this.mUserManager = userManager;
        this.mUserTracker = userTracker;
    }

    @Override // com.android.systemui.statusbar.policy.CallbackController
    public final void addCallback(Object obj) {
        ManagedProfileController.Callback callback = (ManagedProfileController.Callback) obj;
        ArrayList arrayList = (ArrayList) this.mCallbacks;
        arrayList.add(callback);
        if (arrayList.size() == 1) {
            setListening(true);
        }
        callback.onManagedProfileChanged();
    }

    public final boolean hasActiveProfile() {
        boolean z;
        if (!this.mListening || ((UserTrackerImpl) this.mUserTracker).getUserId() != this.mCurrentUser) {
            reloadManagedProfiles();
        }
        synchronized (this.mProfiles) {
            if (this.mProfiles.size() > 0) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    public final boolean isWorkModeEnabled() {
        if (!this.mListening) {
            reloadManagedProfiles();
        }
        synchronized (this.mProfiles) {
            Iterator it = this.mProfiles.iterator();
            while (it.hasNext()) {
                if (((UserInfo) it.next()).isQuietModeEnabled()) {
                    return false;
                }
            }
            return true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0060 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0027 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void reloadManagedProfiles() {
        /*
            r8 = this;
            java.util.LinkedList r0 = r8.mProfiles
            monitor-enter(r0)
            java.util.LinkedList r1 = r8.mProfiles     // Catch: java.lang.Throwable -> L82
            int r1 = r1.size()     // Catch: java.lang.Throwable -> L82
            r2 = 1
            r3 = 0
            if (r1 <= 0) goto Lf
            r1 = r2
            goto L10
        Lf:
            r1 = r3
        L10:
            com.android.systemui.settings.UserTracker r4 = r8.mUserTracker     // Catch: java.lang.Throwable -> L82
            com.android.systemui.settings.UserTrackerImpl r4 = (com.android.systemui.settings.UserTrackerImpl) r4     // Catch: java.lang.Throwable -> L82
            int r4 = r4.getUserId()     // Catch: java.lang.Throwable -> L82
            java.util.LinkedList r5 = r8.mProfiles     // Catch: java.lang.Throwable -> L82
            r5.clear()     // Catch: java.lang.Throwable -> L82
            android.os.UserManager r5 = r8.mUserManager     // Catch: java.lang.Throwable -> L82
            java.util.List r5 = r5.getEnabledProfiles(r4)     // Catch: java.lang.Throwable -> L82
            java.util.Iterator r5 = r5.iterator()     // Catch: java.lang.Throwable -> L82
        L27:
            boolean r6 = r5.hasNext()     // Catch: java.lang.Throwable -> L82
            if (r6 == 0) goto L66
            java.lang.Object r6 = r5.next()     // Catch: java.lang.Throwable -> L82
            android.content.pm.UserInfo r6 = (android.content.pm.UserInfo) r6     // Catch: java.lang.Throwable -> L82
            boolean r7 = r6.isManagedProfile()     // Catch: java.lang.Throwable -> L82
            if (r7 == 0) goto L27
            java.lang.Class<com.android.systemui.knox.KnoxStateMonitor> r7 = com.android.systemui.knox.KnoxStateMonitor.class
            java.lang.Object r7 = com.android.systemui.Dependency.get(r7)     // Catch: java.lang.Throwable -> L82
            com.android.systemui.knox.KnoxStateMonitor r7 = (com.android.systemui.knox.KnoxStateMonitor) r7     // Catch: java.lang.Throwable -> L82
            com.android.systemui.knox.KnoxStateMonitorImpl r7 = (com.android.systemui.knox.KnoxStateMonitorImpl) r7     // Catch: java.lang.Throwable -> L82
            r7.getClass()     // Catch: java.lang.Throwable -> L82
            int r7 = r6.id     // Catch: java.lang.Throwable -> L82
            boolean r7 = com.samsung.android.knox.SemPersonaManager.isSecureFolderId(r7)     // Catch: java.lang.Throwable -> L82
            if (r7 != 0) goto L5d
            boolean r7 = r6.isDualAppProfile()     // Catch: java.lang.Throwable -> L82
            if (r7 != 0) goto L5d
            boolean r7 = r6.isUserTypeAppSeparation()     // Catch: java.lang.Throwable -> L82
            if (r7 == 0) goto L5b
            goto L5d
        L5b:
            r7 = r3
            goto L5e
        L5d:
            r7 = r2
        L5e:
            if (r7 != 0) goto L27
            java.util.LinkedList r7 = r8.mProfiles     // Catch: java.lang.Throwable -> L82
            r7.add(r6)     // Catch: java.lang.Throwable -> L82
            goto L27
        L66:
            java.util.LinkedList r2 = r8.mProfiles     // Catch: java.lang.Throwable -> L82
            int r2 = r2.size()     // Catch: java.lang.Throwable -> L82
            if (r2 != 0) goto L7e
            if (r1 == 0) goto L7e
            int r1 = r8.mCurrentUser     // Catch: java.lang.Throwable -> L82
            if (r4 != r1) goto L7e
            java.util.concurrent.Executor r1 = r8.mMainExecutor     // Catch: java.lang.Throwable -> L82
            com.android.systemui.statusbar.phone.ManagedProfileControllerImpl$$ExternalSyntheticLambda0 r2 = new com.android.systemui.statusbar.phone.ManagedProfileControllerImpl$$ExternalSyntheticLambda0     // Catch: java.lang.Throwable -> L82
            r2.<init>()     // Catch: java.lang.Throwable -> L82
            r1.execute(r2)     // Catch: java.lang.Throwable -> L82
        L7e:
            r8.mCurrentUser = r4     // Catch: java.lang.Throwable -> L82
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L82
            return
        L82:
            r8 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L82
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.phone.ManagedProfileControllerImpl.reloadManagedProfiles():void");
    }

    @Override // com.android.systemui.statusbar.policy.CallbackController
    public final void removeCallback(Object obj) {
        ArrayList arrayList = (ArrayList) this.mCallbacks;
        if (arrayList.remove((ManagedProfileController.Callback) obj) && arrayList.size() == 0) {
            setListening(false);
        }
    }

    public final void setListening(boolean z) {
        if (this.mListening == z) {
            return;
        }
        this.mListening = z;
        UserTracker userTracker = this.mUserTracker;
        if (z) {
            reloadManagedProfiles();
            ((UserTrackerImpl) userTracker).addCallback(this.mUserTrackerCallback, this.mMainExecutor);
        } else {
            ((UserTrackerImpl) userTracker).removeCallback(this.mUserTrackerCallback);
        }
    }

    public final void setWorkModeEnabled(boolean z) {
        boolean z2;
        synchronized (this.mProfiles) {
            Iterator it = this.mProfiles.iterator();
            while (it.hasNext()) {
                UserInfo userInfo = (UserInfo) it.next();
                UserManager userManager = this.mUserManager;
                if (!z) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (!userManager.requestQuietModeEnabled(z2, UserHandle.of(userInfo.id))) {
                    ((StatusBarManager) this.mContext.getSystemService("statusbar")).collapsePanels();
                }
            }
        }
    }
}
