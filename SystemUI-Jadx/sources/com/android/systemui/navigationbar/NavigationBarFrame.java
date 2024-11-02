package com.android.systemui.navigationbar;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import com.android.systemui.BasicRune;
import com.android.systemui.Dependency;
import com.android.systemui.navigationbar.buttons.DeadZone;
import com.android.systemui.navigationbar.store.EventTypeFactory;
import com.android.systemui.navigationbar.store.NavBarStateManager;
import com.android.systemui.navigationbar.store.NavBarStore;
import com.android.systemui.navigationbar.store.NavBarStoreImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class NavigationBarFrame extends FrameLayout {
    public DeadZone mDeadZone;

    public NavigationBarFrame(Context context) {
        super(context);
        this.mDeadZone = null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        DeadZone deadZone;
        if (motionEvent.getAction() == 4 && (deadZone = this.mDeadZone) != null) {
            return deadZone.onTouchEvent(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public final void setVisibility(int i) {
        NavBarStore navBarStore;
        boolean z = BasicRune.NAVBAR_ENABLED;
        NavBarStateManager navBarStateManager = null;
        if (z) {
            navBarStore = (NavBarStore) Dependency.get(NavBarStore.class);
        } else {
            navBarStore = null;
        }
        if (z) {
            navBarStateManager = ((NavBarStoreImpl) navBarStore).getNavStateManager(getContext().getDisplayId());
        }
        if (z && i == 0 && navBarStateManager.isNavBarHidden()) {
            Log.d("NavigationBarFrame", "NavigationBar setVisibility(VISIBLE) Ignored!");
            return;
        }
        super.setVisibility(i);
        if (z) {
            ((NavBarStoreImpl) navBarStore).handleEvent(this, new EventTypeFactory.EventType.OnUpdateNavBarVisibility(i), ((FrameLayout) this).mContext.getDisplayId());
        }
    }

    public NavigationBarFrame(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mDeadZone = null;
    }

    public NavigationBarFrame(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mDeadZone = null;
    }
}
