package com.android.systemui.sensorprivacy;

import android.content.Context;
import android.content.DialogInterface;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.Window;
import com.android.systemui.R;
import com.android.systemui.statusbar.phone.SystemUIDialog;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SensorUseDialog extends SystemUIDialog {
    public SensorUseDialog(Context context, int i, DialogInterface.OnClickListener onClickListener, DialogInterface.OnDismissListener onDismissListener) {
        super(context, 2132018528);
        int i2;
        int i3;
        Window window = getWindow();
        Intrinsics.checkNotNull(window);
        window.addFlags(524288);
        Window window2 = getWindow();
        Intrinsics.checkNotNull(window2);
        window2.addSystemFlags(524288);
        LayoutInflater.from(context);
        if (i != 1) {
            if (i != 2) {
                if (i != Integer.MAX_VALUE) {
                    i2 = 0;
                } else {
                    i2 = R.string.sec_sensor_privacy_start_use_camera_and_microphone_dialog_title;
                }
            } else {
                i2 = R.string.sec_sensor_privacy_start_use_camera_dialog_title;
            }
        } else {
            i2 = R.string.sec_sensor_privacy_start_use_microphone_dialog_title;
        }
        setTitle(i2);
        if (i != 1) {
            if (i != 2) {
                if (i != Integer.MAX_VALUE) {
                    i3 = 0;
                } else {
                    i3 = R.string.sec_sensor_privacy_start_use_camera_and_microphone_dialog_content;
                }
            } else {
                i3 = R.string.sec_sensor_privacy_start_use_camera_dialog_content;
            }
        } else {
            i3 = R.string.sec_sensor_privacy_start_use_microphone_dialog_content;
        }
        setMessage(Html.fromHtml(context.getString(i3), 0));
        setButton(-1, context.getString(R.string.qs_sensor_privacy_dialog_turn_on), onClickListener);
        setButton(-2, context.getString(R.string.qs_sensor_privacy_dialog_cancel), onClickListener);
        setOnDismissListener(onDismissListener);
        setCancelable(false);
    }
}
