package com.android.wm.shell.windowdecor.viewholder;

import android.app.ActivityManager;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.widget.ImageButton;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DesktopModeFocusedWindowDecorationViewHolder extends DesktopModeWindowDecorationViewHolder {
    public final ImageButton captionHandle;
    public final View captionView;

    public DesktopModeFocusedWindowDecorationViewHolder(View view, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        super(view);
        View findViewById = view.findViewById(R.id.desktop_mode_caption);
        this.captionView = findViewById;
        ImageButton imageButton = (ImageButton) view.findViewById(R.id.caption_handle);
        this.captionHandle = imageButton;
        findViewById.setOnTouchListener(onTouchListener);
        imageButton.setOnTouchListener(onTouchListener);
        imageButton.setOnClickListener(onClickListener);
    }

    @Override // com.android.wm.shell.windowdecor.viewholder.DesktopModeWindowDecorationViewHolder
    public final void bindData(ActivityManager.RunningTaskInfo runningTaskInfo) {
        int color;
        ((GradientDrawable) this.captionView.getBackground()).setColor(runningTaskInfo.taskDescription.getStatusBarColor());
        boolean shouldUseLightCaptionColors = DesktopModeWindowDecorationViewHolder.shouldUseLightCaptionColors(runningTaskInfo);
        Context context = this.context;
        if (shouldUseLightCaptionColors) {
            color = context.getColor(R.color.desktop_mode_caption_handle_bar_light);
        } else {
            color = context.getColor(R.color.desktop_mode_caption_handle_bar_dark);
        }
        this.captionHandle.setImageTintList(ColorStateList.valueOf(color));
    }
}
