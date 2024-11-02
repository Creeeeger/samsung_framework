package com.android.systemui.statusbar.phone;

import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class CentralSurfacesImpl$$ExternalSyntheticLambda15 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ CentralSurfacesImpl f$0;
    public final /* synthetic */ ExpandableNotificationRow f$1;
    public final /* synthetic */ String f$2;

    public /* synthetic */ CentralSurfacesImpl$$ExternalSyntheticLambda15(CentralSurfacesImpl centralSurfacesImpl, ExpandableNotificationRow expandableNotificationRow, String str, int i) {
        this.$r8$classId = i;
        this.f$0 = centralSurfacesImpl;
        this.f$1 = expandableNotificationRow;
        this.f$2 = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00b5 A[LOOP:0: B:22:0x007b->B:39:0x00b5, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00ab A[SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void run() {
        /*
            r14 = this;
            int r0 = r14.$r8$classId
            r1 = 0
            r2 = 0
            r3 = 1
            switch(r0) {
                case 0: goto L9;
                default: goto L8;
            }
        L8:
            goto L60
        L9:
            com.android.systemui.statusbar.phone.CentralSurfacesImpl r0 = r14.f$0
            com.android.systemui.statusbar.notification.row.ExpandableNotificationRow r4 = r14.f$1
            java.lang.String r14 = r14.f$2
            com.android.systemui.statusbar.SysuiStatusBarStateController r5 = r0.mStatusBarStateController
            com.android.systemui.statusbar.StatusBarStateControllerImpl r5 = (com.android.systemui.statusbar.StatusBarStateControllerImpl) r5
            int r5 = r5.mState
            if (r5 != r3) goto L1d
            com.android.systemui.statusbar.LockscreenShadeTransitionController r5 = r0.mLockscreenShadeTransitionController
            r5.goToLockedShade(r2, r3)
            goto L2a
        L1d:
            com.android.systemui.shade.ShadeController r2 = r0.mShadeController
            com.android.systemui.shade.ShadeControllerImpl r2 = (com.android.systemui.shade.ShadeControllerImpl) r2
            boolean r2 = r2.mExpandedVisible
            if (r2 != 0) goto L2a
            com.android.systemui.statusbar.phone.CentralSurfacesCommandQueueCallbacks r2 = r0.mCommandQueueCallbacks
            r2.animateExpandNotificationsPanel()
        L2a:
            com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout r2 = r0.mStackScroller
            r4.setUserExpanded(r3, r3)
            boolean r5 = r4.isChildInGroup()
            if (r5 == 0) goto L3e
            com.android.systemui.statusbar.notification.collection.render.GroupExpansionManager r5 = r4.mGroupExpansionManager
            com.android.systemui.statusbar.notification.collection.NotificationEntry r6 = r4.mEntry
            com.android.systemui.statusbar.notification.collection.render.GroupExpansionManagerImpl r5 = (com.android.systemui.statusbar.notification.collection.render.GroupExpansionManagerImpl) r5
            r5.setGroupExpanded(r6, r3)
        L3e:
            r4.notifyHeightChanged(r1)
            android.view.View r1 = r2.mForcedScroll
            if (r1 != r4) goto L46
            goto L53
        L46:
            r2.mForcedScroll = r4
            boolean r1 = r2.mAnimatedInsets
            if (r1 == 0) goto L50
            r2.updateForcedScroll()
            goto L53
        L50:
            r2.scrollTo(r4)
        L53:
            com.android.systemui.statusbar.phone.CentralSurfacesImpl$$ExternalSyntheticLambda15 r1 = new com.android.systemui.statusbar.phone.CentralSurfacesImpl$$ExternalSyntheticLambda15
            r1.<init>(r0, r4, r14, r3)
            r2 = 500(0x1f4, double:2.47E-321)
            android.os.Handler r14 = r0.mMainHandler
            r14.postDelayed(r1, r2)
            return
        L60:
            com.android.systemui.statusbar.phone.CentralSurfacesImpl r0 = r14.f$0
            com.android.systemui.statusbar.notification.row.ExpandableNotificationRow r4 = r14.f$1
            java.lang.String r14 = r14.f$2
            r0.getClass()
            com.android.systemui.statusbar.notification.row.NotificationContentView r0 = r4.mPrivateLayout
            android.view.View r0 = r0.mExpandedChild
            r5 = 16908750(0x10201ce, float:2.3878524E-38)
            android.view.View r0 = r0.findViewById(r5)
            android.view.ViewGroup r0 = (android.view.ViewGroup) r0
            int r5 = r0.getChildCount()
            r6 = r1
        L7b:
            if (r6 >= r5) goto Lb8
            android.view.View r7 = r0.getChildAt(r6)
            r8 = 16909535(0x10204df, float:2.3880724E-38)
            java.lang.Object r8 = r7.getTag(r8)
            boolean r9 = r8 instanceof android.app.RemoteInput[]
            if (r9 == 0) goto L8f
            android.app.RemoteInput[] r8 = (android.app.RemoteInput[]) r8
            goto L90
        L8f:
            r8 = r2
        L90:
            if (r8 != 0) goto L93
            goto La6
        L93:
            int r9 = r8.length
            r10 = r1
            r11 = r2
        L96:
            if (r10 >= r9) goto La4
            r12 = r8[r10]
            boolean r13 = r12.getAllowFreeFormInput()
            if (r13 == 0) goto La1
            r11 = r12
        La1:
            int r10 = r10 + 1
            goto L96
        La4:
            if (r11 != 0) goto La8
        La6:
            r8 = r1
            goto La9
        La8:
            r8 = r3
        La9:
            if (r8 == 0) goto Lb5
            if (r14 == 0) goto Lb1
            com.android.systemui.statusbar.notification.collection.NotificationEntry r0 = r4.mEntry
            r0.remoteInputText = r14
        Lb1:
            r7.performClick()
            goto Lb8
        Lb5:
            int r6 = r6 + 1
            goto L7b
        Lb8:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.phone.CentralSurfacesImpl$$ExternalSyntheticLambda15.run():void");
    }
}
