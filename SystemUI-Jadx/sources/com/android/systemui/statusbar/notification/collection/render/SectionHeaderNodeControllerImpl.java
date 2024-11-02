package com.android.systemui.statusbar.notification.collection.render;

import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.statusbar.notification.stack.SectionHeaderView;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SectionHeaderNodeControllerImpl implements NodeController, SectionHeaderController {
    public SectionHeaderView _view;
    public final ActivityStarter activityStarter;
    public boolean clearAllButtonEnabled;
    public View.OnClickListener clearAllClickListener;
    public final String clickIntentAction;
    public final int headerTextResId;
    public final LayoutInflater layoutInflater;
    public final String nodeLabel;
    public final SectionHeaderNodeControllerImpl$onHeaderClickListener$1 onHeaderClickListener = new View.OnClickListener() { // from class: com.android.systemui.statusbar.notification.collection.render.SectionHeaderNodeControllerImpl$onHeaderClickListener$1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SectionHeaderNodeControllerImpl.this.activityStarter.startActivity(new Intent(SectionHeaderNodeControllerImpl.this.clickIntentAction), true, true, QuickStepContract.SYSUI_STATE_KNOX_HARD_KEY_INTENT);
        }
    };

    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.systemui.statusbar.notification.collection.render.SectionHeaderNodeControllerImpl$onHeaderClickListener$1] */
    public SectionHeaderNodeControllerImpl(String str, LayoutInflater layoutInflater, int i, ActivityStarter activityStarter, String str2) {
        this.nodeLabel = str;
        this.layoutInflater = layoutInflater;
        this.headerTextResId = i;
        this.activityStarter = activityStarter;
        this.clickIntentAction = str2;
    }

    @Override // com.android.systemui.statusbar.notification.collection.render.NodeController
    public final void addChildAt(NodeController nodeController, int i) {
        throw new RuntimeException("Not supported");
    }

    @Override // com.android.systemui.statusbar.notification.collection.render.NodeController
    public final View getChildAt(int i) {
        throw new RuntimeException("Not supported");
    }

    @Override // com.android.systemui.statusbar.notification.collection.render.NodeController
    public final int getChildCount() {
        return 0;
    }

    @Override // com.android.systemui.statusbar.notification.collection.render.NodeController
    public final String getNodeLabel() {
        return this.nodeLabel;
    }

    @Override // com.android.systemui.statusbar.notification.collection.render.NodeController
    public final View getView() {
        SectionHeaderView sectionHeaderView = this._view;
        Intrinsics.checkNotNull(sectionHeaderView);
        return sectionHeaderView;
    }

    @Override // com.android.systemui.statusbar.notification.collection.render.NodeController
    public final void moveChildTo(NodeController nodeController, int i) {
        throw new RuntimeException("Not supported");
    }

    @Override // com.android.systemui.statusbar.notification.collection.render.NodeController
    public final boolean offerToKeepInParentForAnimation() {
        return false;
    }

    @Override // com.android.systemui.statusbar.notification.collection.render.NodeController
    public final void onViewAdded() {
        SectionHeaderView sectionHeaderView = this._view;
        if (sectionHeaderView != null) {
            sectionHeaderView.setContentVisible(null, true, true);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void reinflateView(com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout r7) {
        /*
            r6 = this;
            com.android.systemui.statusbar.notification.stack.SectionHeaderView r0 = r6._view
            r1 = -1
            if (r0 == 0) goto L16
            r0.removeFromTransientContainer()
            android.view.ViewParent r2 = r0.getParent()
            if (r2 != r7) goto L16
            int r2 = r7.indexOfChild(r0)
            r7.removeView(r0)
            goto L17
        L16:
            r2 = r1
        L17:
            r0 = 2131559457(0x7f0d0421, float:1.8744259E38)
            android.view.LayoutInflater r3 = r6.layoutInflater
            r4 = 0
            android.view.View r0 = r3.inflate(r0, r7, r4)
            com.android.systemui.statusbar.notification.stack.SectionHeaderView r0 = (com.android.systemui.statusbar.notification.stack.SectionHeaderView) r0
            int r3 = r6.headerTextResId
            java.lang.Integer r5 = java.lang.Integer.valueOf(r3)
            r0.mLabelTextId = r5
            android.widget.TextView r5 = r0.mLabelView
            r5.setText(r3)
            com.android.systemui.statusbar.notification.collection.render.SectionHeaderNodeControllerImpl$onHeaderClickListener$1 r3 = r6.onHeaderClickListener
            r0.mLabelClickListener = r3
            android.widget.TextView r5 = r0.mLabelView
            r5.setOnClickListener(r3)
            android.view.View$OnClickListener r3 = r6.clearAllClickListener
            if (r3 == 0) goto L44
            r0.mOnClearClickListener = r3
            android.widget.ImageView r5 = r0.mClearAllButton
            r5.setOnClickListener(r3)
        L44:
            if (r2 == r1) goto L49
            r7.addView(r0, r2)
        L49:
            r6._view = r0
            boolean r6 = r6.clearAllButtonEnabled
            android.widget.ImageView r7 = r0.mClearAllButton
            if (r6 == 0) goto L52
            goto L54
        L52:
            r4 = 8
        L54:
            r7.setVisibility(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.collection.render.SectionHeaderNodeControllerImpl.reinflateView(com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout):void");
    }

    @Override // com.android.systemui.statusbar.notification.collection.render.NodeController
    public final void removeChild(NodeController nodeController, boolean z) {
        throw new RuntimeException("Not supported");
    }

    @Override // com.android.systemui.statusbar.notification.collection.render.NodeController
    public final boolean removeFromParentIfKeptForAnimation() {
        return false;
    }

    @Override // com.android.systemui.statusbar.notification.collection.render.NodeController
    public final void onViewMoved() {
    }

    @Override // com.android.systemui.statusbar.notification.collection.render.NodeController
    public final void onViewRemoved() {
    }

    @Override // com.android.systemui.statusbar.notification.collection.render.NodeController
    public final void resetKeepInParentForAnimation() {
    }
}
