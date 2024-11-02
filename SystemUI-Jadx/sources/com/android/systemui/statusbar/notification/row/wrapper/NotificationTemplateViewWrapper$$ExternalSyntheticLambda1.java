package com.android.systemui.statusbar.notification.row.wrapper;

import android.R;
import android.app.PendingIntent;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.widget.Button;
import com.android.internal.util.ContrastColorUtil;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class NotificationTemplateViewWrapper$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ NotificationTemplateViewWrapper$$ExternalSyntheticLambda1(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                ((PendingIntent) this.f$0).registerCancelListener((PendingIntent.CancelListener) this.f$1);
                return;
            case 1:
                ((PendingIntent) this.f$0).unregisterCancelListener((PendingIntent.CancelListener) this.f$1);
                return;
            case 2:
                ((PendingIntent) this.f$0).registerCancelListener((PendingIntent.CancelListener) this.f$1);
                return;
            default:
                NotificationTemplateViewWrapper notificationTemplateViewWrapper = (NotificationTemplateViewWrapper) this.f$0;
                Button button = (Button) this.f$1;
                notificationTemplateViewWrapper.getClass();
                if (button.isEnabled()) {
                    button.setEnabled(false);
                    ColorStateList textColors = button.getTextColors();
                    int[] colors = textColors.getColors();
                    int[] iArr = new int[colors.length];
                    float f = notificationTemplateViewWrapper.mView.getResources().getFloat(R.dimen.text_size_menu_material);
                    for (int i = 0; i < colors.length; i++) {
                        int i2 = colors[i];
                        iArr[i] = ContrastColorUtil.compositeColors(Color.argb((int) (255.0f * f), Color.red(i2), Color.green(i2), Color.blue(i2)), notificationTemplateViewWrapper.resolveBackgroundColor());
                    }
                    button.setTextColor(new ColorStateList(textColors.getStates(), iArr));
                    return;
                }
                return;
        }
    }
}
