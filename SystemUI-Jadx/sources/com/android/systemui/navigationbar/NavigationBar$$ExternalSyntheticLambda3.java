package com.android.systemui.navigationbar;

import android.content.Intent;
import android.util.Log;
import android.view.View;
import com.android.internal.accessibility.dialog.AccessibilityButtonChooserActivity;
import com.android.systemui.R;
import com.android.systemui.navigationbar.buttons.KeyButtonView;
import com.android.systemui.settings.UserTrackerImpl;
import com.samsung.android.systemui.multistar.MultiStarManager;
import com.samsung.systemui.splugins.multistar.PluginMultiStar;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class NavigationBar$$ExternalSyntheticLambda3 implements View.OnLongClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ NavigationBar f$0;

    public /* synthetic */ NavigationBar$$ExternalSyntheticLambda3(NavigationBar navigationBar, int i) {
        this.$r8$classId = i;
        this.f$0 = navigationBar;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        switch (this.$r8$classId) {
            case 0:
                return this.f$0.onLongPressNavigationButtons(view, R.id.recent_apps);
            case 1:
                return this.f$0.onLongPressNavigationButtons(view, R.id.home);
            case 2:
                return this.f$0.onLongPressNavigationButtons(view, R.id.recent_apps);
            case 3:
                NavigationBar navigationBar = this.f$0;
                navigationBar.getClass();
                Intent intent = new Intent("com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON");
                intent.addFlags(268468224);
                intent.setClassName("android", AccessibilityButtonChooserActivity.class.getName());
                navigationBar.mContext.startActivityAsUser(intent, ((UserTrackerImpl) navigationBar.mUserTracker).getUserHandle());
                return true;
            case 4:
                this.f$0.getClass();
                Log.d("NavigationBar", "onLongPressRecents() - Recents button long clicked");
                ((MultiStarManager) MultiStarManager.sInstance.get()).getClass();
                PluginMultiStar pluginMultiStar = MultiStarManager.mPluginMultiStar;
                if (pluginMultiStar != null) {
                    MultiStarManager.sRecentKeyConsumed = pluginMultiStar.onLongPressRecents();
                }
                KeyButtonView keyButtonView = (KeyButtonView) view;
                keyButtonView.sendEvent(0, 128);
                keyButtonView.sendAccessibilityEvent(2);
                return true;
            default:
                return this.f$0.onHomeLongClick(view);
        }
    }
}
