package com.android.systemui.tuner;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.util.AttributeSet;
import android.view.DragEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class ClipboardView extends ImageView implements ClipboardManager.OnPrimaryClipChangedListener {
    public final ClipboardManager mClipboardManager;
    public ClipData mCurrentClip;

    public ClipboardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mClipboardManager = (ClipboardManager) context.getSystemService(ClipboardManager.class);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mClipboardManager.addPrimaryClipChangedListener(this);
        onPrimaryClipChanged();
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mClipboardManager.removePrimaryClipChangedListener(this);
    }

    @Override // android.view.View
    public final boolean onDragEvent(DragEvent dragEvent) {
        int action = dragEvent.getAction();
        if (action != 3) {
            if (action != 4) {
                if (action != 5) {
                    if (action != 6) {
                        return true;
                    }
                } else {
                    setBackgroundColor(1308622847);
                    return true;
                }
            }
        } else {
            this.mClipboardManager.setPrimaryClip(dragEvent.getClipData());
        }
        setBackgroundColor(0);
        return true;
    }

    @Override // android.content.ClipboardManager.OnPrimaryClipChangedListener
    public final void onPrimaryClipChanged() {
        int i;
        ClipData primaryClip = this.mClipboardManager.getPrimaryClip();
        this.mCurrentClip = primaryClip;
        if (primaryClip != null) {
            i = R.drawable.clipboard_full;
        } else {
            i = R.drawable.clipboard_empty;
        }
        setImageResource(i);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        ClipData clipData;
        if (motionEvent.getActionMasked() == 0 && (clipData = this.mCurrentClip) != null) {
            startDragAndDrop(clipData, new View.DragShadowBuilder(this), null, 256);
        }
        return super.onTouchEvent(motionEvent);
    }
}
