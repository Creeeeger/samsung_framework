package com.android.wm.shell.windowdecor;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.IBinder;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.SurfaceControl;
import android.view.SurfaceControlViewHost;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.WindowlessWindowManager;
import android.widget.ImageView;
import com.android.systemui.R;
import com.samsung.systemui.splugins.volume.VolumePanelState;
import java.util.function.Supplier;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ResizeVeil {
    public final Context mContext;
    public SurfaceControl mParentSurface;
    public final Supplier mSurfaceControlTransactionSupplier;
    public SurfaceControl mVeilSurface;
    public SurfaceControlViewHost mViewHost;

    public ResizeVeil(Context context, Drawable drawable, ActivityManager.RunningTaskInfo runningTaskInfo, Supplier<SurfaceControl.Builder> supplier, Display display, Supplier<SurfaceControl.Transaction> supplier2) {
        this.mContext = context;
        this.mSurfaceControlTransactionSupplier = supplier2;
        SurfaceControl.Transaction transaction = supplier2.get();
        this.mVeilSurface = supplier.get().setName("Resize veil of Task= " + runningTaskInfo.taskId).setContainerLayer().build();
        View inflate = LayoutInflater.from(context).inflate(R.layout.desktop_mode_resize_veil, (ViewGroup) null);
        transaction.setPosition(this.mVeilSurface, 0.0f, 0.0f).setLayer(this.mVeilSurface, VolumePanelState.DIALOG_TIMEOUT_SET_SAFE_MEDIA_VOLUME_MILLIS).apply();
        Rect bounds = runningTaskInfo.configuration.windowConfiguration.getBounds();
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(bounds.width(), bounds.height(), 2, 8, -2);
        layoutParams.setTitle("Resize veil of Task=" + runningTaskInfo.taskId);
        layoutParams.setTrustedOverlay();
        SurfaceControlViewHost surfaceControlViewHost = new SurfaceControlViewHost(context, display, new WindowlessWindowManager(runningTaskInfo.configuration, this.mVeilSurface, (IBinder) null), "ResizeVeil");
        this.mViewHost = surfaceControlViewHost;
        surfaceControlViewHost.setView(inflate, layoutParams);
        ((ImageView) this.mViewHost.getView().findViewById(R.id.veil_application_icon)).setImageDrawable(drawable);
    }

    public final void relayout(Rect rect, SurfaceControl.Transaction transaction) {
        this.mViewHost.relayout(rect.width(), rect.height());
        transaction.setWindowCrop(this.mVeilSurface, rect.width(), rect.height());
        transaction.setPosition(this.mParentSurface, rect.left, rect.top);
        transaction.setWindowCrop(this.mParentSurface, rect.width(), rect.height());
    }
}
