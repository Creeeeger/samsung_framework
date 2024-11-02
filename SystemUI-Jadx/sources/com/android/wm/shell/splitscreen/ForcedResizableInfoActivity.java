package com.android.wm.shell.splitscreen;

import android.app.Activity;
import android.app.ActivityManager;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ForcedResizableInfoActivity extends Activity implements View.OnTouchListener {
    public final AnonymousClass1 mFinishRunnable = new Runnable() { // from class: com.android.wm.shell.splitscreen.ForcedResizableInfoActivity.1
        @Override // java.lang.Runnable
        public final void run() {
            ForcedResizableInfoActivity.this.finish();
        }
    };

    @Override // android.app.Activity
    public final void finish() {
        super.finish();
        overridePendingTransition(0, R.anim.forced_resizable_exit);
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        String string;
        if (!isInMultiWindowMode()) {
            finish();
        }
        super.onCreate(bundle);
        setContentView(R.layout.forced_resizable_activity);
        TextView textView = (TextView) findViewById(android.R.id.message);
        int intExtra = getIntent().getIntExtra("extra_forced_resizeable_reason", -1);
        if (intExtra != 1) {
            if (intExtra != 2) {
                if (intExtra != 3) {
                    if (intExtra != 4) {
                        finish();
                        return;
                    }
                    string = getString(R.string.freeform_forced_resizable_samsung_dex);
                } else {
                    string = getString(R.string.multiwindow_forced_resizable);
                }
            } else {
                string = getString(R.string.forced_resizable_secondary_display);
            }
        } else {
            string = getString(R.string.multiwindow_forced_resizable);
        }
        textView.setText(string);
        getWindow().setTitle(string);
        getWindow().getDecorView().setOnTouchListener(this);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        finish();
        return true;
    }

    @Override // android.app.Activity
    public final void onStart() {
        super.onStart();
        getWindow().getDecorView().postDelayed(this.mFinishRunnable, 2500L);
    }

    @Override // android.app.Activity
    public final void onStop() {
        super.onStop();
        finish();
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        finish();
        return true;
    }

    @Override // android.app.Activity
    public final void setTaskDescription(ActivityManager.TaskDescription taskDescription) {
    }
}
