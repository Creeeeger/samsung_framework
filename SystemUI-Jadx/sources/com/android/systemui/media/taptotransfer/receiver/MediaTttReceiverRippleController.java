package com.android.systemui.media.taptotransfer.receiver;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.view.WindowManager;
import com.android.settingslib.Utils;
import com.android.systemui.R;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaTttReceiverRippleController {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final Context context;
    public float maxRippleHeight;
    public float maxRippleWidth;
    public final WindowManager windowManager;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public MediaTttReceiverRippleController(Context context, WindowManager windowManager) {
        this.context = context;
        this.windowManager = windowManager;
    }

    public static final void access$layoutIconRipple(MediaTttReceiverRippleController mediaTttReceiverRippleController, ReceiverChipRippleView receiverChipRippleView) {
        Rect bounds = mediaTttReceiverRippleController.windowManager.getCurrentWindowMetrics().getBounds();
        float height = bounds.height();
        float width = bounds.width();
        float receiverIconSize$frameworks__base__packages__SystemUI__android_common__SystemUI_core = mediaTttReceiverRippleController.getReceiverIconSize$frameworks__base__packages__SystemUI__android_common__SystemUI_core() * 0.8f;
        receiverChipRippleView.getRippleShader().rippleSize.setMaxSize(receiverIconSize$frameworks__base__packages__SystemUI__android_common__SystemUI_core, receiverIconSize$frameworks__base__packages__SystemUI__android_common__SystemUI_core);
        float receiverIconSize$frameworks__base__packages__SystemUI__android_common__SystemUI_core2 = height - (mediaTttReceiverRippleController.getReceiverIconSize$frameworks__base__packages__SystemUI__android_common__SystemUI_core() * 0.5f);
        Context context = mediaTttReceiverRippleController.context;
        receiverChipRippleView.setCenter(width * 0.5f, receiverIconSize$frameworks__base__packages__SystemUI__android_common__SystemUI_core2 - context.getResources().getDimensionPixelSize(R.dimen.media_ttt_receiver_icon_bottom_margin));
        receiverChipRippleView.setColor(ColorStateList.valueOf(Utils.getColorAttrDefaultColor(R.attr.wallpaperTextColorAccent, context, 0)).withLStar(95.0f).getDefaultColor(), 70);
    }

    public final int getReceiverIconSize$frameworks__base__packages__SystemUI__android_common__SystemUI_core() {
        return this.context.getResources().getDimensionPixelSize(R.dimen.media_ttt_icon_size_receiver);
    }

    public final void layoutRipple(ReceiverChipRippleView receiverChipRippleView, boolean z) {
        Rect bounds = this.windowManager.getCurrentWindowMetrics().getBounds();
        float height = bounds.height();
        float width = bounds.width();
        if (z) {
            this.maxRippleHeight = height * 2.0f;
            this.maxRippleWidth = 2.0f * width;
        } else {
            this.maxRippleHeight = getReceiverIconSize$frameworks__base__packages__SystemUI__android_common__SystemUI_core() * 4.0f;
            this.maxRippleWidth = getReceiverIconSize$frameworks__base__packages__SystemUI__android_common__SystemUI_core() * 4.0f;
        }
        receiverChipRippleView.getRippleShader().rippleSize.setMaxSize(this.maxRippleWidth, this.maxRippleHeight);
        receiverChipRippleView.setCenter(width * 0.5f, height);
        receiverChipRippleView.setColor(ColorStateList.valueOf(Utils.getColorAttrDefaultColor(R.attr.wallpaperTextColorAccent, this.context, 0)).withLStar(95.0f).getDefaultColor(), 70);
    }
}
