package com.android.wm.shell.splitscreen.tv;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.LinearLayout;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class TvSplitMenuView extends LinearLayout implements View.OnClickListener {
    public Listener mListener;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface Listener {
    }

    public TvSplitMenuView(Context context) {
        super(context);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        Listener listener;
        if (keyEvent.getAction() == 0 && keyEvent.getKeyCode() == 4 && (listener = this.mListener) != null) {
            ((TvSplitMenuController) listener).setMenuVisibility(false);
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.mListener == null) {
            return;
        }
        int id = view.getId();
        if (id == R.id.tv_split_main_menu_focus_button) {
            ((TvSplitMenuController) this.mListener).onFocusStage(0);
            return;
        }
        if (id == R.id.tv_split_main_menu_close_button) {
            TvSplitMenuController tvSplitMenuController = (TvSplitMenuController) this.mListener;
            tvSplitMenuController.setMenuVisibility(false);
            ((TvStageCoordinator) tvSplitMenuController.mStageController).mSplitLayout.flingDividerToDismiss(2, false);
        } else {
            if (id == R.id.tv_split_side_menu_focus_button) {
                ((TvSplitMenuController) this.mListener).onFocusStage(1);
                return;
            }
            if (id == R.id.tv_split_side_menu_close_button) {
                TvSplitMenuController tvSplitMenuController2 = (TvSplitMenuController) this.mListener;
                tvSplitMenuController2.setMenuVisibility(false);
                ((TvStageCoordinator) tvSplitMenuController2.mStageController).mSplitLayout.flingDividerToDismiss(2, true);
            } else if (id == R.id.tv_split_menu_swap_stages) {
                ((TvStageCoordinator) ((TvSplitMenuController) this.mListener).mStageController).onDoubleTappedDivider();
            }
        }
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        findViewById(R.id.tv_split_main_menu_focus_button).setOnClickListener(this);
        findViewById(R.id.tv_split_main_menu_close_button).setOnClickListener(this);
        findViewById(R.id.tv_split_side_menu_focus_button).setOnClickListener(this);
        findViewById(R.id.tv_split_side_menu_close_button).setOnClickListener(this);
        findViewById(R.id.tv_split_menu_swap_stages).setOnClickListener(this);
    }

    public TvSplitMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public TvSplitMenuView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
